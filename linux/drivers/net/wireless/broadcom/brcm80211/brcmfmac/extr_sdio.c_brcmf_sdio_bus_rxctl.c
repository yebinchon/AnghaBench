
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint ;
typedef int u8 ;
struct device {int dummy; } ;
struct brcmf_sdio_dev {scalar_t__ state; struct brcmf_sdio* bus; } ;
struct TYPE_4__ {int rx_ctlerrs; int rx_ctlpkts; } ;
struct brcmf_sdio {TYPE_2__ sdcnt; int rxctl_lock; scalar_t__ rxlen; int * rxctl_orig; int * rxctl; } ;
struct TYPE_3__ {struct brcmf_sdio_dev* sdio; } ;
struct brcmf_bus {TYPE_1__ bus_priv; } ;


 scalar_t__ BRCMF_SDIOD_DATA ;
 int CTL ;
 int EIO ;
 int ERESTARTSYS ;
 int ETIMEDOUT ;
 int TRACE ;
 int brcmf_dbg (int ,char*,...) ;
 int brcmf_err (char*) ;
 int brcmf_sdio_checkdied (struct brcmf_sdio*) ;
 int brcmf_sdio_dcmd_resp_wait (struct brcmf_sdio*,scalar_t__*,int*) ;
 struct brcmf_bus* dev_get_drvdata (struct device*) ;
 int memcpy (unsigned char*,int *,int ) ;
 int min (scalar_t__,scalar_t__) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int vfree (int *) ;

__attribute__((used)) static int
brcmf_sdio_bus_rxctl(struct device *dev, unsigned char *msg, uint msglen)
{
 int timeleft;
 uint rxlen = 0;
 bool pending;
 u8 *buf;
 struct brcmf_bus *bus_if = dev_get_drvdata(dev);
 struct brcmf_sdio_dev *sdiodev = bus_if->bus_priv.sdio;
 struct brcmf_sdio *bus = sdiodev->bus;

 brcmf_dbg(TRACE, "Enter\n");
 if (sdiodev->state != BRCMF_SDIOD_DATA)
  return -EIO;


 timeleft = brcmf_sdio_dcmd_resp_wait(bus, &bus->rxlen, &pending);

 spin_lock_bh(&bus->rxctl_lock);
 rxlen = bus->rxlen;
 memcpy(msg, bus->rxctl, min(msglen, rxlen));
 bus->rxctl = ((void*)0);
 buf = bus->rxctl_orig;
 bus->rxctl_orig = ((void*)0);
 bus->rxlen = 0;
 spin_unlock_bh(&bus->rxctl_lock);
 vfree(buf);

 if (rxlen) {
  brcmf_dbg(CTL, "resumed on rxctl frame, got %d expected %d\n",
     rxlen, msglen);
 } else if (timeleft == 0) {
  brcmf_err("resumed on timeout\n");
  brcmf_sdio_checkdied(bus);
 } else if (pending) {
  brcmf_dbg(CTL, "cancelled\n");
  return -ERESTARTSYS;
 } else {
  brcmf_dbg(CTL, "resumed for unknown reason?\n");
  brcmf_sdio_checkdied(bus);
 }

 if (rxlen)
  bus->sdcnt.rx_ctlpkts++;
 else
  bus->sdcnt.rx_ctlerrs++;

 return rxlen ? (int)rxlen : -ETIMEDOUT;
}

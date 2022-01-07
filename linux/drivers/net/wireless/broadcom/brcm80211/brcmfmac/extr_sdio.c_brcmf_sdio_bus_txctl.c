
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint ;
struct device {int dummy; } ;
struct brcmf_sdio_dev {scalar_t__ state; struct brcmf_sdio* bus; } ;
struct TYPE_6__ {int tx_ctlpkts; int tx_ctlerrs; } ;
struct brcmf_sdio {unsigned char* ctrl_frame_buf; int ctrl_frame_stat; int ctrl_frame_err; TYPE_3__ sdcnt; TYPE_2__* sdiodev; int ctrl_wait; int ctrl_frame_len; } ;
struct TYPE_4__ {struct brcmf_sdio_dev* sdio; } ;
struct brcmf_bus {TYPE_1__ bus_priv; } ;
struct TYPE_5__ {int func1; } ;


 scalar_t__ BRCMF_SDIOD_DATA ;
 int CTL_DONE_TIMEOUT ;
 int EIO ;
 int ETIMEDOUT ;
 int SDIO ;
 int TRACE ;
 int brcmf_dbg (int ,char*,...) ;
 int brcmf_sdio_trigger_dpc (struct brcmf_sdio*) ;
 struct brcmf_bus* dev_get_drvdata (struct device*) ;
 int rmb () ;
 int sdio_claim_host (int ) ;
 int sdio_release_host (int ) ;
 int wait_event_interruptible_timeout (int ,int,int ) ;
 int wmb () ;

__attribute__((used)) static int
brcmf_sdio_bus_txctl(struct device *dev, unsigned char *msg, uint msglen)
{
 struct brcmf_bus *bus_if = dev_get_drvdata(dev);
 struct brcmf_sdio_dev *sdiodev = bus_if->bus_priv.sdio;
 struct brcmf_sdio *bus = sdiodev->bus;
 int ret;

 brcmf_dbg(TRACE, "Enter\n");
 if (sdiodev->state != BRCMF_SDIOD_DATA)
  return -EIO;


 bus->ctrl_frame_buf = msg;
 bus->ctrl_frame_len = msglen;
 wmb();
 bus->ctrl_frame_stat = 1;

 brcmf_sdio_trigger_dpc(bus);
 wait_event_interruptible_timeout(bus->ctrl_wait, !bus->ctrl_frame_stat,
      CTL_DONE_TIMEOUT);
 ret = 0;
 if (bus->ctrl_frame_stat) {
  sdio_claim_host(bus->sdiodev->func1);
  if (bus->ctrl_frame_stat) {
   brcmf_dbg(SDIO, "ctrl_frame timeout\n");
   bus->ctrl_frame_stat = 0;
   ret = -ETIMEDOUT;
  }
  sdio_release_host(bus->sdiodev->func1);
 }
 if (!ret) {
  brcmf_dbg(SDIO, "ctrl_frame complete, err=%d\n",
     bus->ctrl_frame_err);
  rmb();
  ret = bus->ctrl_frame_err;
 }

 if (ret)
  bus->sdcnt.tx_ctlerrs++;
 else
  bus->sdcnt.tx_ctlpkts++;

 return ret;
}

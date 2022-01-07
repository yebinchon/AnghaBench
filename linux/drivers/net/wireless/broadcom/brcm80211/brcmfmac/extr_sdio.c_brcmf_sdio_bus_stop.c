
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct device {int dummy; } ;
struct brcmf_sdio_dev {scalar_t__ state; int func1; int func2; struct brcmf_sdio* bus; } ;
struct brcmf_sdio {int rxskip; scalar_t__ rx_seq; scalar_t__ tx_seq; int rxctl_lock; scalar_t__ rxlen; int glomd; int txq; int ci; scalar_t__ hostintmask; int * watchdog_tsk; struct brcmf_core* sdio_core; } ;
struct brcmf_core {scalar_t__ base; } ;
struct TYPE_2__ {struct brcmf_sdio_dev* sdio; } ;
struct brcmf_bus {TYPE_1__ bus_priv; } ;


 scalar_t__ BRCMF_SDIOD_NOMEDIUM ;
 int INTR ;
 int SBSDIO_FORCE_HT ;
 int SBSDIO_FUNC1_CHIPCLKCSR ;
 int SBSDIO_HT_AVAIL_REQ ;
 scalar_t__ SD_REG (int ) ;
 int SIGTERM ;
 int TRACE ;
 scalar_t__ brcmf_chip_is_ulp (int ) ;
 int brcmf_dbg (int ,char*) ;
 int brcmf_err (char*,int) ;
 int brcmf_sdio_bus_sleep (struct brcmf_sdio*,int,int) ;
 int brcmf_sdio_dcmd_resp_wake (struct brcmf_sdio*) ;
 int brcmf_sdio_free_glom (struct brcmf_sdio*) ;
 int brcmf_sdiod_readb (struct brcmf_sdio_dev*,int ,int*) ;
 int brcmf_sdiod_writeb (struct brcmf_sdio_dev*,int ,int ,int*) ;
 int brcmf_sdiod_writel (struct brcmf_sdio_dev*,scalar_t__,scalar_t__,int *) ;
 int brcmu_pkt_buf_free_skb (int ) ;
 int brcmu_pktq_flush (int *,int,int *,int *) ;
 struct brcmf_bus* dev_get_drvdata (struct device*) ;
 int hostintmask ;
 int intstatus ;
 int kthread_stop (int *) ;
 int sdio_claim_host (int ) ;
 int sdio_disable_func (int ) ;
 int sdio_release_host (int ) ;
 int send_sig (int ,int *,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void brcmf_sdio_bus_stop(struct device *dev)
{
 struct brcmf_bus *bus_if = dev_get_drvdata(dev);
 struct brcmf_sdio_dev *sdiodev = bus_if->bus_priv.sdio;
 struct brcmf_sdio *bus = sdiodev->bus;
 struct brcmf_core *core = bus->sdio_core;
 u32 local_hostintmask;
 u8 saveclk, bpreq;
 int err;

 brcmf_dbg(TRACE, "Enter\n");

 if (bus->watchdog_tsk) {
  send_sig(SIGTERM, bus->watchdog_tsk, 1);
  kthread_stop(bus->watchdog_tsk);
  bus->watchdog_tsk = ((void*)0);
 }

 if (sdiodev->state != BRCMF_SDIOD_NOMEDIUM) {
  sdio_claim_host(sdiodev->func1);


  brcmf_sdio_bus_sleep(bus, 0, 0);


  brcmf_sdiod_writel(sdiodev, core->base + SD_REG(hostintmask),
       0, ((void*)0));

  local_hostintmask = bus->hostintmask;
  bus->hostintmask = 0;


  saveclk = brcmf_sdiod_readb(sdiodev, SBSDIO_FUNC1_CHIPCLKCSR,
         &err);
  if (!err) {
   bpreq = saveclk;
   bpreq |= brcmf_chip_is_ulp(bus->ci) ?
    SBSDIO_HT_AVAIL_REQ : SBSDIO_FORCE_HT;
   brcmf_sdiod_writeb(sdiodev,
        SBSDIO_FUNC1_CHIPCLKCSR,
        bpreq, &err);
  }
  if (err)
   brcmf_err("Failed to force clock for F2: err %d\n",
      err);


  brcmf_dbg(INTR, "disable SDIO interrupts\n");
  sdio_disable_func(sdiodev->func2);


  brcmf_sdiod_writel(sdiodev, core->base + SD_REG(intstatus),
       local_hostintmask, ((void*)0));

  sdio_release_host(sdiodev->func1);
 }

 brcmu_pktq_flush(&bus->txq, 1, ((void*)0), ((void*)0));


 brcmu_pkt_buf_free_skb(bus->glomd);
 brcmf_sdio_free_glom(bus);


 spin_lock_bh(&bus->rxctl_lock);
 bus->rxlen = 0;
 spin_unlock_bh(&bus->rxctl_lock);
 brcmf_sdio_dcmd_resp_wake(bus);


 bus->rxskip = 0;
 bus->tx_seq = bus->rx_seq = 0;
}

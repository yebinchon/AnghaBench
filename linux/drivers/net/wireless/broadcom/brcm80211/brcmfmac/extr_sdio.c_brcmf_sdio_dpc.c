
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint ;
typedef int u8 ;
typedef unsigned long u32 ;
struct brcmf_sdio_dev {scalar_t__ state; int func1; } ;
struct TYPE_4__ {int f1regdata; } ;
struct brcmf_sdio {scalar_t__ clkstate; unsigned long hostintmask; int ctrl_frame_stat; int ctrl_frame_err; int dpc_triggered; int flowcontrol; int txq; int fcstate; int ipend; int intstatus; struct brcmf_sdio_dev* sdiodev; int txminmax; scalar_t__ rxpending; int ctrl_frame_len; int ctrl_frame_buf; int rxbound; scalar_t__ rxskip; TYPE_2__ sdcnt; int sr_enabled; scalar_t__ txbound; TYPE_1__* sdio_core; } ;
struct TYPE_3__ {unsigned long base; } ;


 scalar_t__ BRCMF_SDIOD_DATA ;
 scalar_t__ CLK_AVAIL ;
 scalar_t__ CLK_PENDING ;
 int ENODEV ;
 unsigned long I_CHIPACTIVE ;
 unsigned long I_HMB_FC_CHANGE ;
 unsigned long I_HMB_FC_STATE ;
 unsigned long I_HMB_FRAME_IND ;
 unsigned long I_HMB_HOST_INT ;
 unsigned long I_RD_OOSYNC ;
 unsigned long I_SBINT ;
 unsigned long I_WR_OOSYNC ;
 int SBSDIO_DEVCTL_CA_INT_ONLY ;
 int SBSDIO_DEVICE_CTL ;
 int SBSDIO_FUNC1_CHIPCLKCSR ;
 scalar_t__ SBSDIO_HTAV (int ) ;
 int SDIO ;
 unsigned long SD_REG (int ) ;
 int atomic_or (unsigned long,int *) ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int) ;
 unsigned long atomic_xchg (int *,int ) ;
 int brcmf_dbg (int ,char*,...) ;
 int brcmf_err (char*) ;
 int brcmf_sdio_bus_sleep (struct brcmf_sdio*,int,int) ;
 int brcmf_sdio_clrintr (struct brcmf_sdio*) ;
 unsigned long brcmf_sdio_hostmail (struct brcmf_sdio*) ;
 int brcmf_sdio_intr_rstatus (struct brcmf_sdio*) ;
 int brcmf_sdio_readframes (struct brcmf_sdio*,int ) ;
 int brcmf_sdio_sendfromq (struct brcmf_sdio*,scalar_t__) ;
 int brcmf_sdio_tx_ctrlframe (struct brcmf_sdio*,int ,int ) ;
 int brcmf_sdio_wait_event_wakeup (struct brcmf_sdio*) ;
 int brcmf_sdiod_readb (struct brcmf_sdio_dev*,int ,int*) ;
 unsigned long brcmf_sdiod_readl (struct brcmf_sdio_dev*,unsigned long,int*) ;
 int brcmf_sdiod_writeb (struct brcmf_sdio_dev*,int ,int ,int*) ;
 int brcmf_sdiod_writel (struct brcmf_sdio_dev*,unsigned long,unsigned long,int*) ;
 scalar_t__ brcmu_pktq_mlen (int *,int ) ;
 scalar_t__ data_ok (struct brcmf_sdio*) ;
 unsigned long intstatus ;
 scalar_t__ min (scalar_t__,int ) ;
 int sdio_claim_host (int ) ;
 int sdio_release_host (int ) ;
 int wmb () ;

__attribute__((used)) static void brcmf_sdio_dpc(struct brcmf_sdio *bus)
{
 struct brcmf_sdio_dev *sdiod = bus->sdiodev;
 u32 newstatus = 0;
 u32 intstat_addr = bus->sdio_core->base + SD_REG(intstatus);
 unsigned long intstatus;
 uint txlimit = bus->txbound;
 uint framecnt;
 int err = 0;

 brcmf_dbg(SDIO, "Enter\n");

 sdio_claim_host(bus->sdiodev->func1);


 if (!bus->sr_enabled && bus->clkstate == CLK_PENDING) {
  u8 clkctl, devctl = 0;
  clkctl = brcmf_sdiod_readb(bus->sdiodev,
        SBSDIO_FUNC1_CHIPCLKCSR, &err);

  brcmf_dbg(SDIO, "DPC: PENDING, devctl 0x%02x clkctl 0x%02x\n",
     devctl, clkctl);

  if (SBSDIO_HTAV(clkctl)) {
   devctl = brcmf_sdiod_readb(bus->sdiodev,
         SBSDIO_DEVICE_CTL, &err);
   devctl &= ~SBSDIO_DEVCTL_CA_INT_ONLY;
   brcmf_sdiod_writeb(bus->sdiodev,
        SBSDIO_DEVICE_CTL, devctl, &err);
   bus->clkstate = CLK_AVAIL;
  }
 }


 brcmf_sdio_bus_sleep(bus, 0, 1);


 if (atomic_read(&bus->ipend) > 0) {
  atomic_set(&bus->ipend, 0);
  err = brcmf_sdio_intr_rstatus(bus);
 }


 intstatus = atomic_xchg(&bus->intstatus, 0);





 if (intstatus & I_HMB_FC_CHANGE) {
  intstatus &= ~I_HMB_FC_CHANGE;
  brcmf_sdiod_writel(sdiod, intstat_addr, I_HMB_FC_CHANGE, &err);

  newstatus = brcmf_sdiod_readl(sdiod, intstat_addr, &err);

  bus->sdcnt.f1regdata += 2;
  atomic_set(&bus->fcstate,
      !!(newstatus & (I_HMB_FC_STATE | I_HMB_FC_CHANGE)));
  intstatus |= (newstatus & bus->hostintmask);
 }


 if (intstatus & I_HMB_HOST_INT) {
  intstatus &= ~I_HMB_HOST_INT;
  intstatus |= brcmf_sdio_hostmail(bus);
 }

 sdio_release_host(bus->sdiodev->func1);


 if (intstatus & I_WR_OOSYNC) {
  brcmf_err("Dongle reports WR_OOSYNC\n");
  intstatus &= ~I_WR_OOSYNC;
 }

 if (intstatus & I_RD_OOSYNC) {
  brcmf_err("Dongle reports RD_OOSYNC\n");
  intstatus &= ~I_RD_OOSYNC;
 }

 if (intstatus & I_SBINT) {
  brcmf_err("Dongle reports SBINT\n");
  intstatus &= ~I_SBINT;
 }


 if (intstatus & I_CHIPACTIVE) {
  brcmf_dbg(SDIO, "Dongle reports CHIPACTIVE\n");
  intstatus &= ~I_CHIPACTIVE;
 }


 if (bus->rxskip)
  intstatus &= ~I_HMB_FRAME_IND;


 if ((intstatus & I_HMB_FRAME_IND) && (bus->clkstate == CLK_AVAIL)) {
  brcmf_sdio_readframes(bus, bus->rxbound);
  if (!bus->rxpending)
   intstatus &= ~I_HMB_FRAME_IND;
 }


 if (intstatus)
  atomic_or(intstatus, &bus->intstatus);

 brcmf_sdio_clrintr(bus);

 if (bus->ctrl_frame_stat && (bus->clkstate == CLK_AVAIL) &&
     data_ok(bus)) {
  sdio_claim_host(bus->sdiodev->func1);
  if (bus->ctrl_frame_stat) {
   err = brcmf_sdio_tx_ctrlframe(bus, bus->ctrl_frame_buf,
            bus->ctrl_frame_len);
   bus->ctrl_frame_err = err;
   wmb();
   bus->ctrl_frame_stat = 0;
  }
  sdio_release_host(bus->sdiodev->func1);
  brcmf_sdio_wait_event_wakeup(bus);
 }

 if ((bus->clkstate == CLK_AVAIL) && !atomic_read(&bus->fcstate) &&
     brcmu_pktq_mlen(&bus->txq, ~bus->flowcontrol) && txlimit &&
     data_ok(bus)) {
  framecnt = bus->rxpending ? min(txlimit, bus->txminmax) :
         txlimit;
  brcmf_sdio_sendfromq(bus, framecnt);
 }

 if ((bus->sdiodev->state != BRCMF_SDIOD_DATA) || (err != 0)) {
  brcmf_err("failed backplane access over SDIO, halting operation\n");
  atomic_set(&bus->intstatus, 0);
  if (bus->ctrl_frame_stat) {
   sdio_claim_host(bus->sdiodev->func1);
   if (bus->ctrl_frame_stat) {
    bus->ctrl_frame_err = -ENODEV;
    wmb();
    bus->ctrl_frame_stat = 0;
    brcmf_sdio_wait_event_wakeup(bus);
   }
   sdio_release_host(bus->sdiodev->func1);
  }
 } else if (atomic_read(&bus->intstatus) ||
     atomic_read(&bus->ipend) > 0 ||
     (!atomic_read(&bus->fcstate) &&
      brcmu_pktq_mlen(&bus->txq, ~bus->flowcontrol) &&
      data_ok(bus))) {
  bus->dpc_triggered = 1;
 }
}

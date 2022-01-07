
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_5__ {scalar_t__ count; } ;
struct TYPE_4__ {scalar_t__ intrcount; scalar_t__ lastintrs; int pollcnt; } ;
struct brcmf_sdio {scalar_t__ polltick; scalar_t__ pollrate; int dpc_triggered; scalar_t__ console_interval; scalar_t__ idletime; scalar_t__ clkstate; scalar_t__ idlecount; TYPE_3__* sdiodev; int dpc_running; TYPE_2__ console; TYPE_1__ sdcnt; int datawork; int brcmf_wq; int ipend; int intr; scalar_t__ poll; int sr_enabled; } ;
struct TYPE_6__ {scalar_t__ state; int func1; } ;


 scalar_t__ BRCMF_FWCON_ON () ;
 scalar_t__ BRCMF_SDIOD_DATA ;
 int BRCMF_WD_POLL ;
 scalar_t__ CLK_AVAIL ;
 int INTR_STATUS_FUNC1 ;
 int INTR_STATUS_FUNC2 ;
 int SDIO ;
 int SDIO_CCCR_INTx ;
 int TIMER ;
 int atomic_set (int *,int) ;
 int brcmf_dbg (int ,char*) ;
 int brcmf_sdio_bus_sleep (struct brcmf_sdio*,int,int) ;
 scalar_t__ brcmf_sdio_readconsole (struct brcmf_sdio*) ;
 int brcmf_sdio_wd_timer (struct brcmf_sdio*,int) ;
 int brcmf_sdiod_func0_rb (TYPE_3__*,int ,int *) ;
 scalar_t__ jiffies_to_msecs (int ) ;
 int queue_work (int ,int *) ;
 int rmb () ;
 int sdio_claim_host (int ) ;
 int sdio_release_host (int ) ;

__attribute__((used)) static void brcmf_sdio_bus_watchdog(struct brcmf_sdio *bus)
{
 brcmf_dbg(TIMER, "Enter\n");


 if (!bus->sr_enabled &&
     bus->poll && (++bus->polltick >= bus->pollrate)) {
  u32 intstatus = 0;


  bus->polltick = 0;


  if (!bus->intr ||
      (bus->sdcnt.intrcount == bus->sdcnt.lastintrs)) {

   if (!bus->dpc_triggered) {
    u8 devpend;

    sdio_claim_host(bus->sdiodev->func1);
    devpend = brcmf_sdiod_func0_rb(bus->sdiodev,
        SDIO_CCCR_INTx, ((void*)0));
    sdio_release_host(bus->sdiodev->func1);
    intstatus = devpend & (INTR_STATUS_FUNC1 |
             INTR_STATUS_FUNC2);
   }



   if (intstatus) {
    bus->sdcnt.pollcnt++;
    atomic_set(&bus->ipend, 1);

    bus->dpc_triggered = 1;
    queue_work(bus->brcmf_wq, &bus->datawork);
   }
  }


  bus->sdcnt.lastintrs = bus->sdcnt.intrcount;
 }
 if (!bus->dpc_triggered) {
  rmb();
  if ((!bus->dpc_running) && (bus->idletime > 0) &&
      (bus->clkstate == CLK_AVAIL)) {
   bus->idlecount++;
   if (bus->idlecount > bus->idletime) {
    brcmf_dbg(SDIO, "idle\n");
    sdio_claim_host(bus->sdiodev->func1);
    brcmf_sdio_wd_timer(bus, 0);
    bus->idlecount = 0;
    brcmf_sdio_bus_sleep(bus, 1, 0);
    sdio_release_host(bus->sdiodev->func1);
   }
  } else {
   bus->idlecount = 0;
  }
 } else {
  bus->idlecount = 0;
 }
}

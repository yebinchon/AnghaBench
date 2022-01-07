
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct workqueue_struct {int dummy; } ;
struct brcmf_sdio_dev {int dev; TYPE_1__* func1; TYPE_2__* func2; struct brcmf_sdio* bus; } ;
struct brcmf_sdio {int dpc_triggered; int dpc_running; int rxflow; int sr_enabled; int idleclock; int idletime; int clkstate; struct brcmf_sdio_dev* sdiodev; int blocksize; int roundup; scalar_t__ tx_hdrlen; int * watchdog_tsk; int watchdog_wait; int timer; int dcmd_resp_wait; int ctrl_wait; int txq_lock; int rxctl_lock; struct workqueue_struct* brcmf_wq; int datawork; scalar_t__ tx_seq; int txminmax; int rxbound; int txbound; int glom; } ;
struct brcmf_fw_request {int dummy; } ;
struct TYPE_5__ {int cur_blksize; } ;
struct TYPE_4__ {int dev; } ;


 int BRCMF_IDLE_ACTIVE ;
 int BRCMF_IDLE_INTERVAL ;
 int BRCMF_RXBOUND ;
 int BRCMF_TXBOUND ;
 int BRCMF_TXMINMAX ;
 int CLK_SDONLY ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int INFO ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (int *) ;
 int SBSDIO_FUNC1_CHIPCLKCSR ;
 scalar_t__ SDPCM_HWHDR_LEN ;
 scalar_t__ SDPCM_SEQ_WRAP ;
 scalar_t__ SDPCM_SWHDR_LEN ;
 int TRACE ;
 int WQ_MEM_RECLAIM ;
 struct workqueue_struct* alloc_ordered_workqueue (char*,int ,int ) ;
 int brcmf_dbg (int ,char*) ;
 int brcmf_err (char*,...) ;
 int brcmf_fw_get_firmwares (int ,struct brcmf_fw_request*,int ) ;
 int brcmf_sdio_dataworker ;
 int brcmf_sdio_firmware_callback ;
 struct brcmf_fw_request* brcmf_sdio_prepare_fw_request (struct brcmf_sdio*) ;
 int brcmf_sdio_probe_attach (struct brcmf_sdio*) ;
 int brcmf_sdio_remove (struct brcmf_sdio*) ;
 int brcmf_sdio_watchdog ;
 int brcmf_sdio_watchdog_thread ;
 int brcmf_sdiod_freezer_count (struct brcmf_sdio_dev*) ;
 int brcmf_sdiod_writeb (struct brcmf_sdio_dev*,int ,int ,int *) ;
 int dev_name (int *) ;
 int init_completion (int *) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct brcmf_fw_request*) ;
 int * kthread_run (int ,struct brcmf_sdio*,char*,int ) ;
 struct brcmf_sdio* kzalloc (int,int ) ;
 int max_roundup ;
 int min (int ,int ) ;
 int pr_warn (char*) ;
 int sdio_claim_host (TYPE_1__*) ;
 int sdio_disable_func (TYPE_2__*) ;
 int sdio_release_host (TYPE_1__*) ;
 int skb_queue_head_init (int *) ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;

struct brcmf_sdio *brcmf_sdio_probe(struct brcmf_sdio_dev *sdiodev)
{
 int ret;
 struct brcmf_sdio *bus;
 struct workqueue_struct *wq;
 struct brcmf_fw_request *fwreq;

 brcmf_dbg(TRACE, "Enter\n");


 bus = kzalloc(sizeof(struct brcmf_sdio), GFP_ATOMIC);
 if (!bus)
  goto fail;

 bus->sdiodev = sdiodev;
 sdiodev->bus = bus;
 skb_queue_head_init(&bus->glom);
 bus->txbound = BRCMF_TXBOUND;
 bus->rxbound = BRCMF_RXBOUND;
 bus->txminmax = BRCMF_TXMINMAX;
 bus->tx_seq = SDPCM_SEQ_WRAP - 1;


 wq = alloc_ordered_workqueue("brcmf_wq/%s", WQ_MEM_RECLAIM,
         dev_name(&sdiodev->func1->dev));
 if (!wq) {
  brcmf_err("insufficient memory to create txworkqueue\n");
  goto fail;
 }
 brcmf_sdiod_freezer_count(sdiodev);
 INIT_WORK(&bus->datawork, brcmf_sdio_dataworker);
 bus->brcmf_wq = wq;


 if (!(brcmf_sdio_probe_attach(bus))) {
  brcmf_err("brcmf_sdio_probe_attach failed\n");
  goto fail;
 }

 spin_lock_init(&bus->rxctl_lock);
 spin_lock_init(&bus->txq_lock);
 init_waitqueue_head(&bus->ctrl_wait);
 init_waitqueue_head(&bus->dcmd_resp_wait);


 timer_setup(&bus->timer, brcmf_sdio_watchdog, 0);

 init_completion(&bus->watchdog_wait);
 bus->watchdog_tsk = kthread_run(brcmf_sdio_watchdog_thread,
     bus, "brcmf_wdog/%s",
     dev_name(&sdiodev->func1->dev));
 if (IS_ERR(bus->watchdog_tsk)) {
  pr_warn("brcmf_watchdog thread failed to start\n");
  bus->watchdog_tsk = ((void*)0);
 }

 bus->dpc_triggered = 0;
 bus->dpc_running = 0;


 bus->tx_hdrlen = SDPCM_HWHDR_LEN + SDPCM_SWHDR_LEN;


 bus->blocksize = bus->sdiodev->func2->cur_blksize;
 bus->roundup = min(max_roundup, bus->blocksize);

 sdio_claim_host(bus->sdiodev->func1);


 sdio_disable_func(bus->sdiodev->func2);

 bus->rxflow = 0;


 brcmf_sdiod_writeb(bus->sdiodev, SBSDIO_FUNC1_CHIPCLKCSR, 0, ((void*)0));

 sdio_release_host(bus->sdiodev->func1);


 bus->clkstate = CLK_SDONLY;
 bus->idletime = BRCMF_IDLE_INTERVAL;
 bus->idleclock = BRCMF_IDLE_ACTIVE;


 bus->sr_enabled = 0;

 brcmf_dbg(INFO, "completed!!\n");

 fwreq = brcmf_sdio_prepare_fw_request(bus);
 if (!fwreq) {
  ret = -ENOMEM;
  goto fail;
 }

 ret = brcmf_fw_get_firmwares(sdiodev->dev, fwreq,
         brcmf_sdio_firmware_callback);
 if (ret != 0) {
  brcmf_err("async firmware request failed: %d\n", ret);
  kfree(fwreq);
  goto fail;
 }

 return bus;

fail:
 brcmf_sdio_remove(bus);
 return ((void*)0);
}

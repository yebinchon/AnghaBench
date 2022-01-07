
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct brcmfmac_sdio_pd {int oob_irq_nr; } ;
struct brcmf_sdio_dev {int oob_irq_requested; int sd_irq_requested; int irq_wake; int irq_en; TYPE_3__* func1; TYPE_3__* func2; TYPE_2__* settings; } ;
struct TYPE_8__ {int dev; } ;
struct TYPE_6__ {struct brcmfmac_sdio_pd sdio; } ;
struct TYPE_7__ {TYPE_1__ bus; } ;


 int SDIO ;
 int SDIO_CCCR_BRCM_SEPINT ;
 int SDIO_CCCR_IENx ;
 int brcmf_dbg (int ,char*,int,int) ;
 int brcmf_sdiod_func0_wb (struct brcmf_sdio_dev*,int ,int ,int *) ;
 int disable_irq_wake (int ) ;
 int free_irq (int ,int *) ;
 int sdio_claim_host (TYPE_3__*) ;
 int sdio_release_host (TYPE_3__*) ;
 int sdio_release_irq (TYPE_3__*) ;

void brcmf_sdiod_intr_unregister(struct brcmf_sdio_dev *sdiodev)
{

 brcmf_dbg(SDIO, "Entering oob=%d sd=%d\n",
    sdiodev->oob_irq_requested,
    sdiodev->sd_irq_requested);

 if (sdiodev->oob_irq_requested) {
  struct brcmfmac_sdio_pd *pdata;

  pdata = &sdiodev->settings->bus.sdio;
  sdio_claim_host(sdiodev->func1);
  brcmf_sdiod_func0_wb(sdiodev, SDIO_CCCR_BRCM_SEPINT, 0, ((void*)0));
  brcmf_sdiod_func0_wb(sdiodev, SDIO_CCCR_IENx, 0, ((void*)0));
  sdio_release_host(sdiodev->func1);

  sdiodev->oob_irq_requested = 0;
  if (sdiodev->irq_wake) {
   disable_irq_wake(pdata->oob_irq_nr);
   sdiodev->irq_wake = 0;
  }
  free_irq(pdata->oob_irq_nr, &sdiodev->func1->dev);
  sdiodev->irq_en = 0;
  sdiodev->oob_irq_requested = 0;
 }

 if (sdiodev->sd_irq_requested) {
  sdio_claim_host(sdiodev->func1);
  sdio_release_irq(sdiodev->func2);
  sdio_release_irq(sdiodev->func1);
  sdio_release_host(sdiodev->func1);
  sdiodev->sd_irq_requested = 0;
 }
}

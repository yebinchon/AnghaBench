
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct brcmf_sdio_dev {TYPE_3__* func1; scalar_t__ sbwad; int sgtable; TYPE_3__* func2; int * bus; int state; } ;
struct TYPE_8__ {TYPE_2__* card; } ;
struct TYPE_7__ {TYPE_1__* host; } ;
struct TYPE_6__ {int parent; } ;


 int BRCMF_SDIOD_DOWN ;
 int brcmf_sdio_remove (int *) ;
 int brcmf_sdiod_freezer_detach (struct brcmf_sdio_dev*) ;
 int pm_runtime_allow (int ) ;
 int sdio_claim_host (TYPE_3__*) ;
 int sdio_disable_func (TYPE_3__*) ;
 int sdio_release_host (TYPE_3__*) ;
 int sg_free_table (int *) ;

__attribute__((used)) static int brcmf_sdiod_remove(struct brcmf_sdio_dev *sdiodev)
{
 sdiodev->state = BRCMF_SDIOD_DOWN;
 if (sdiodev->bus) {
  brcmf_sdio_remove(sdiodev->bus);
  sdiodev->bus = ((void*)0);
 }

 brcmf_sdiod_freezer_detach(sdiodev);


 sdio_claim_host(sdiodev->func2);
 sdio_disable_func(sdiodev->func2);
 sdio_release_host(sdiodev->func2);


 sdio_claim_host(sdiodev->func1);
 sdio_disable_func(sdiodev->func1);
 sdio_release_host(sdiodev->func1);

 sg_free_table(&sdiodev->sgtable);
 sdiodev->sbwad = 0;

 pm_runtime_allow(sdiodev->func1->card->host->parent);
 return 0;
}

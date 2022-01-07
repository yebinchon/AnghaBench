
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int ringupd_dmahandle; scalar_t__ ringupd; int scratch_dmahandle; scalar_t__ scratch; } ;
struct brcmf_pciedev_info {TYPE_2__ shared; TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 int BRCMF_DMA_D2H_RINGUPD_BUF_LEN ;
 int BRCMF_DMA_D2H_SCRATCH_BUF_LEN ;
 int dma_free_coherent (int *,int ,scalar_t__,int ) ;

__attribute__((used)) static void
brcmf_pcie_release_scratchbuffers(struct brcmf_pciedev_info *devinfo)
{
 if (devinfo->shared.scratch)
  dma_free_coherent(&devinfo->pdev->dev,
      BRCMF_DMA_D2H_SCRATCH_BUF_LEN,
      devinfo->shared.scratch,
      devinfo->shared.scratch_dmahandle);
 if (devinfo->shared.ringupd)
  dma_free_coherent(&devinfo->pdev->dev,
      BRCMF_DMA_D2H_RINGUPD_BUF_LEN,
      devinfo->shared.ringupd,
      devinfo->shared.ringupd_dmahandle);
}

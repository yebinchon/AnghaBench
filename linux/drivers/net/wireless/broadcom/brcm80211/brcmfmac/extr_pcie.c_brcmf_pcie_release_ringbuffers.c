
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_3__ {int * flowrings; int ** commonrings; } ;
struct brcmf_pciedev_info {int * idxbuf; int idxbuf_dmahandle; int idxbuf_sz; TYPE_2__* pdev; TYPE_1__ shared; } ;
struct TYPE_4__ {int dev; } ;


 size_t BRCMF_NROF_COMMON_MSGRINGS ;
 int brcmf_pcie_release_ringbuffer (int *,int *) ;
 int dma_free_coherent (int *,int ,int *,int ) ;
 int kfree (int *) ;

__attribute__((used)) static void brcmf_pcie_release_ringbuffers(struct brcmf_pciedev_info *devinfo)
{
 u32 i;

 for (i = 0; i < BRCMF_NROF_COMMON_MSGRINGS; i++) {
  brcmf_pcie_release_ringbuffer(&devinfo->pdev->dev,
           devinfo->shared.commonrings[i]);
  devinfo->shared.commonrings[i] = ((void*)0);
 }
 kfree(devinfo->shared.flowrings);
 devinfo->shared.flowrings = ((void*)0);
 if (devinfo->idxbuf) {
  dma_free_coherent(&devinfo->pdev->dev,
      devinfo->idxbuf_sz,
      devinfo->idxbuf,
      devinfo->idxbuf_dmahandle);
  devinfo->idxbuf = ((void*)0);
 }
}

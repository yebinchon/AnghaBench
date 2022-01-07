
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scif_p2p_info {int * ppi_sg; int * sg_nentries; } ;
struct scif_hw_dev {int dev; } ;
struct scif_dev {struct scif_hw_dev* sdev; } ;


 int DMA_BIDIRECTIONAL ;
 size_t SCIF_PPI_APER ;
 size_t SCIF_PPI_MMIO ;
 int dma_unmap_sg (int *,int ,int ,int ) ;
 int kfree (struct scif_p2p_info*) ;
 int scif_p2p_freesg (int ) ;

__attribute__((used)) static void scif_deinit_p2p_info(struct scif_dev *scifdev,
     struct scif_p2p_info *p2p)
{
 struct scif_hw_dev *sdev = scifdev->sdev;

 dma_unmap_sg(&sdev->dev, p2p->ppi_sg[SCIF_PPI_MMIO],
       p2p->sg_nentries[SCIF_PPI_MMIO], DMA_BIDIRECTIONAL);
 dma_unmap_sg(&sdev->dev, p2p->ppi_sg[SCIF_PPI_APER],
       p2p->sg_nentries[SCIF_PPI_APER], DMA_BIDIRECTIONAL);
 scif_p2p_freesg(p2p->ppi_sg[SCIF_PPI_MMIO]);
 scif_p2p_freesg(p2p->ppi_sg[SCIF_PPI_APER]);
 kfree(p2p);
}

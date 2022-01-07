
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ioc3_private {int dma_dev; struct ioc3_etxd* txr; } ;
struct ioc3_etxd {int p2; int p1; int bufcnt; int cmd; } ;


 int DMA_TO_DEVICE ;
 int ETXD_B1CNT_MASK ;
 int ETXD_B1CNT_SHIFT ;
 int ETXD_B1V ;
 int ETXD_B2CNT_MASK ;
 int ETXD_B2CNT_SHIFT ;
 int ETXD_B2V ;
 int be32_to_cpu (int ) ;
 int be64_to_cpu (int ) ;
 int dma_unmap_single (int ,int ,int,int ) ;

__attribute__((used)) static inline void ioc3_tx_unmap(struct ioc3_private *ip, int entry)
{
 struct ioc3_etxd *desc;
 u32 cmd, bufcnt, len;

 desc = &ip->txr[entry];
 cmd = be32_to_cpu(desc->cmd);
 bufcnt = be32_to_cpu(desc->bufcnt);
 if (cmd & ETXD_B1V) {
  len = (bufcnt & ETXD_B1CNT_MASK) >> ETXD_B1CNT_SHIFT;
  dma_unmap_single(ip->dma_dev, be64_to_cpu(desc->p1),
     len, DMA_TO_DEVICE);
 }
 if (cmd & ETXD_B2V) {
  len = (bufcnt & ETXD_B2CNT_MASK) >> ETXD_B2CNT_SHIFT;
  dma_unmap_single(ip->dma_dev, be64_to_cpu(desc->p2),
     len, DMA_TO_DEVICE);
 }
}

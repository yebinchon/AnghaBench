
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sunqec {int qec_bursts; scalar_t__ gregs; } ;
struct platform_device {int * resource; } ;


 int DMA_BURST32 ;
 int DMA_BURST64 ;
 scalar_t__ GLOB_CTRL ;
 int GLOB_CTRL_B16 ;
 int GLOB_CTRL_B32 ;
 int GLOB_CTRL_B64 ;
 scalar_t__ GLOB_MSIZE ;
 scalar_t__ GLOB_PSIZE ;
 int GLOB_PSIZE_2048 ;
 scalar_t__ GLOB_RSIZE ;
 scalar_t__ GLOB_TSIZE ;
 int resource_size (int *) ;
 scalar_t__ sbus_can_burst64 () ;
 int sbus_writel (int,scalar_t__) ;

__attribute__((used)) static void qec_init_once(struct sunqec *qecp, struct platform_device *op)
{
 u8 bsizes = qecp->qec_bursts;

 if (sbus_can_burst64() && (bsizes & DMA_BURST64)) {
  sbus_writel(GLOB_CTRL_B64, qecp->gregs + GLOB_CTRL);
 } else if (bsizes & DMA_BURST32) {
  sbus_writel(GLOB_CTRL_B32, qecp->gregs + GLOB_CTRL);
 } else {
  sbus_writel(GLOB_CTRL_B16, qecp->gregs + GLOB_CTRL);
 }




 sbus_writel(GLOB_PSIZE_2048, qecp->gregs + GLOB_PSIZE);


 sbus_writel((resource_size(&op->resource[1]) >> 2),
      qecp->gregs + GLOB_MSIZE);




 sbus_writel((resource_size(&op->resource[1]) >> 2) >> 1,
      qecp->gregs + GLOB_TSIZE);
 sbus_writel((resource_size(&op->resource[1]) >> 2) >> 1,
      qecp->gregs + GLOB_RSIZE);
}

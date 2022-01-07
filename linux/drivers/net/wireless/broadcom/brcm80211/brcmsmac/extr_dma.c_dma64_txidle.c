
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_info {scalar_t__ ntxd; int core; } ;


 int D64_XS0_CD_MASK ;
 int DMA64TXREGOFFS (struct dma_info*,int ) ;
 int bcma_read32 (int ,int ) ;
 int ptr ;
 int status0 ;

__attribute__((used)) static bool dma64_txidle(struct dma_info *di)
{
 if (di->ntxd == 0)
  return 1;

 return ((bcma_read32(di->core,
        DMA64TXREGOFFS(di, status0)) & D64_XS0_CD_MASK) ==
  (bcma_read32(di->core, DMA64TXREGOFFS(di, ptr)) &
   D64_XS0_CD_MASK));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct fman {TYPE_1__* bmi_regs; TYPE_2__* dma_regs; } ;
struct TYPE_4__ {int * fmdmplr; } ;
struct TYPE_3__ {int * fmbm_spliodn; } ;


 int DMA_LIODN_BASE_MASK ;
 int DMA_LIODN_SHIFT ;
 int ioread32be (int *) ;
 int iowrite32be (int,int *) ;

__attribute__((used)) static void set_port_liodn(struct fman *fman, u8 port_id,
      u32 liodn_base, u32 liodn_ofst)
{
 u32 tmp;


 tmp = ioread32be(&fman->dma_regs->fmdmplr[port_id / 2]);
 if (port_id % 2) {
  tmp &= ~DMA_LIODN_BASE_MASK;
  tmp |= liodn_base;
 } else {
  tmp &= ~(DMA_LIODN_BASE_MASK << DMA_LIODN_SHIFT);
  tmp |= liodn_base << DMA_LIODN_SHIFT;
 }
 iowrite32be(tmp, &fman->dma_regs->fmdmplr[port_id / 2]);
 iowrite32be(liodn_ofst, &fman->bmi_regs->fmbm_spliodn[port_id - 1]);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct korina_private {int rx_dma_regs; } ;
struct dma_desc {int dummy; } ;


 int CPHYSADDR (struct dma_desc*) ;
 int korina_start_dma (int ,int ) ;

__attribute__((used)) static void korina_start_rx(struct korina_private *lp,
     struct dma_desc *rd)
{
 korina_start_dma(lp->rx_dma_regs, CPHYSADDR(rd));
}

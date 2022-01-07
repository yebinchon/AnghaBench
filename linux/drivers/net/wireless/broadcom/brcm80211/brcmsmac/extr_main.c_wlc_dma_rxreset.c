
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint ;
struct dma_pub {int dummy; } ;
struct brcms_hardware {struct dma_pub** di; } ;


 int dma_rxreset (struct dma_pub*) ;

__attribute__((used)) static bool wlc_dma_rxreset(struct brcms_hardware *wlc_hw, uint fifo)
{
 struct dma_pub *di = wlc_hw->di[fifo];
 return dma_rxreset(di);
}

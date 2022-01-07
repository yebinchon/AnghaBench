
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_desc {int dummy; } ;


 int dwxgmac2_set_rx_owner (struct dma_desc*,int) ;

__attribute__((used)) static void dwxgmac2_init_rx_desc(struct dma_desc *p, int disable_rx_ic,
      int mode, int end, int bfsize)
{
 dwxgmac2_set_rx_owner(p, disable_rx_ic);
}

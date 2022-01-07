
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_desc {int dummy; } ;


 int dwmac4_set_rx_owner (struct dma_desc*,int) ;

__attribute__((used)) static void dwmac4_rd_init_rx_desc(struct dma_desc *p, int disable_rx_ic,
       int mode, int end, int bfsize)
{
 dwmac4_set_rx_owner(p, disable_rx_ic);
}

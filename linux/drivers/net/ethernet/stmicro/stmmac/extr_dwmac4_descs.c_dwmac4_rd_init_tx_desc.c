
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_desc {scalar_t__ des3; scalar_t__ des2; scalar_t__ des1; scalar_t__ des0; } ;



__attribute__((used)) static void dwmac4_rd_init_tx_desc(struct dma_desc *p, int mode, int end)
{
 p->des0 = 0;
 p->des1 = 0;
 p->des2 = 0;
 p->des3 = 0;
}

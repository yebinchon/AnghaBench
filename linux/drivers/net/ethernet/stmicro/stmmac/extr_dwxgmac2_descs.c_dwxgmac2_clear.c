
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_desc {scalar_t__ des3; scalar_t__ des2; scalar_t__ des1; scalar_t__ des0; } ;



__attribute__((used)) static void dwxgmac2_clear(struct dma_desc *p)
{
 p->des0 = 0;
 p->des1 = 0;
 p->des2 = 0;
 p->des3 = 0;
}

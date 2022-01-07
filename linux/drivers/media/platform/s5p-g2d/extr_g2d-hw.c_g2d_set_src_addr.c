
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g2d_dev {int dummy; } ;
typedef int dma_addr_t ;


 int SRC_BASE_ADDR_REG ;
 int w (int ,int ) ;

void g2d_set_src_addr(struct g2d_dev *d, dma_addr_t a)
{
 w(a, SRC_BASE_ADDR_REG);
}

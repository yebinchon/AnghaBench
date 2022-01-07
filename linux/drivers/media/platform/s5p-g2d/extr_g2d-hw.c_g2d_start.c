
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g2d_dev {TYPE_1__* variant; } ;
struct TYPE_2__ {scalar_t__ hw_rev; } ;


 int BITBLT_START_REG ;
 int CACHECTL_REG ;
 int INTEN_REG ;
 scalar_t__ TYPE_G2D_3X ;
 int w (int,int ) ;

void g2d_start(struct g2d_dev *d)
{

 if (d->variant->hw_rev == TYPE_G2D_3X)
  w(0x7, CACHECTL_REG);


 w(1, INTEN_REG);

 w(1, BITBLT_START_REG);
}

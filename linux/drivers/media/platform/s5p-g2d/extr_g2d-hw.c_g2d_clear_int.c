
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g2d_dev {int dummy; } ;


 int INTC_PEND_REG ;
 int w (int,int ) ;

void g2d_clear_int(struct g2d_dev *d)
{
 w(1, INTC_PEND_REG);
}

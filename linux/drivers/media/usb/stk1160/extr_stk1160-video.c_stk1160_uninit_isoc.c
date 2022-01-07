
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stk1160 {int dummy; } ;


 int stk1160_cancel_isoc (struct stk1160*) ;
 int stk1160_free_isoc (struct stk1160*) ;

void stk1160_uninit_isoc(struct stk1160 *dev)
{
 stk1160_cancel_isoc(dev);
 stk1160_free_isoc(dev);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bttv_sub_driver {int drv; } ;


 int driver_unregister (int *) ;

int bttv_sub_unregister(struct bttv_sub_driver *sub)
{
 driver_unregister(&sub->drv);
 return 0;
}

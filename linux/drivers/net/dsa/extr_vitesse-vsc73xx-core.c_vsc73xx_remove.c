
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsc73xx {int reset; int ds; } ;


 int dsa_unregister_switch (int ) ;
 int gpiod_set_value (int ,int) ;

int vsc73xx_remove(struct vsc73xx *vsc)
{
 dsa_unregister_switch(vsc->ds);
 gpiod_set_value(vsc->reset, 1);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bttv {int dummy; } ;


 int gpio_inout (int,int) ;
 int gpio_write (int) ;

__attribute__((used)) static void tibetCS16_init(struct bttv *btv)
{

 gpio_inout(0xffffff, 0x0f7fff);
 gpio_write(0x0f7fff);
}

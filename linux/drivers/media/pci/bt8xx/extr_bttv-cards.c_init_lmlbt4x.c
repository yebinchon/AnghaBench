
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bttv {int dummy; } ;


 int BT848_GPIO_REG_INP ;
 int btwrite (int,int ) ;
 int gpio_inout (int,int) ;
 int gpio_write (int) ;
 int pr_debug (char*) ;

__attribute__((used)) static void init_lmlbt4x(struct bttv *btv)
{
 pr_debug("LMLBT4x init\n");
 btwrite(0x000000, BT848_GPIO_REG_INP);
 gpio_inout(0xffffff, 0x0006C0);
 gpio_write(0x000000);
}

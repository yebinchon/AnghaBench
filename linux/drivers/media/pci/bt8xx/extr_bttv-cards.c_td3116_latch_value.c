
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bttv {int dummy; } ;


 int gpio_bits (int,int) ;
 int udelay (int) ;

__attribute__((used)) static void td3116_latch_value(struct bttv *btv, u32 value)
{
 gpio_bits((1<<18) | 0xff, value);
 gpio_bits((1<<18) | 0xff, (1<<18) | value);
 udelay(1);
 gpio_bits((1<<18) | 0xff, value);
}

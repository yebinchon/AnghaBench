
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_tea575x {struct bttv* private_data; } ;
struct bttv_tea575x_gpio {int clk; int wren; int data; int most; } ;
struct bttv {struct bttv_tea575x_gpio tea_gpio; } ;


 int gpio_inout (int,int) ;

__attribute__((used)) static void bttv_tea575x_set_direction(struct snd_tea575x *tea, bool output)
{
 struct bttv *btv = tea->private_data;
 struct bttv_tea575x_gpio gpio = btv->tea_gpio;
 u32 mask = (1 << gpio.clk) | (1 << gpio.wren) | (1 << gpio.data) |
     (1 << gpio.most);

 if (output)
  gpio_inout(mask, (1 << gpio.data) | (1 << gpio.clk) |
     (1 << gpio.wren));
 else
  gpio_inout(mask, (1 << gpio.clk) | (1 << gpio.wren));
}

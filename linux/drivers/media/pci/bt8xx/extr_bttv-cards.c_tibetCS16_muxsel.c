
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bttv {int dummy; } ;


 int gpio_bits (int,unsigned int) ;

__attribute__((used)) static void tibetCS16_muxsel(struct bttv *btv, unsigned int input)
{

 gpio_bits(0x0f0000, input << 16);
}

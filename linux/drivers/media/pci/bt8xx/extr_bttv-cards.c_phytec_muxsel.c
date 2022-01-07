
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bttv {unsigned int svhs; } ;


 int gpio_bits (int,unsigned int) ;

__attribute__((used)) static void phytec_muxsel(struct bttv *btv, unsigned int input)
{
 unsigned int mux = input % 4;

 if (input == btv->svhs)
  mux = 0;

 gpio_bits(0x3, mux);
}

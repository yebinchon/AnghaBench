
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bttv {int dummy; } ;


 int gpio_bits (int,int const) ;
 int mdelay (int) ;

__attribute__((used)) static void rv605_muxsel(struct bttv *btv, unsigned int input)
{
 static const u8 muxgpio[] = { 0x3, 0x1, 0x2, 0x4, 0xf, 0x7, 0xe, 0x0,
          0xd, 0xb, 0xc, 0x6, 0x9, 0x5, 0x8, 0xa };

 gpio_bits(0x07f, muxgpio[input]);


 gpio_bits(0x200,0x200);
 mdelay(1);
 gpio_bits(0x200,0x000);
 mdelay(1);


 gpio_bits(0x480,0x480);
 mdelay(1);
 gpio_bits(0x480,0x080);
 mdelay(1);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bttv {int dummy; } ;


 int gpio_write (int const) ;

__attribute__((used)) static void gvc1100_muxsel(struct bttv *btv, unsigned int input)
{
 static const int masks[] = {0x30, 0x01, 0x12, 0x23};
 gpio_write(masks[input%4]);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bttv {int dummy; } ;
 int gpio_write (int const) ;

__attribute__((used)) static void xguard_muxsel(struct bttv *btv, unsigned int input)
{
 static const int masks[] = {
  133, 133|131, 133|129, 133|131|129,
  135, 135|131, 135|129, 135|131|129,
  132, 132|130, 132|128, 132|130|128,
  134, 134|130, 134|128, 134|130|128,
 };
 gpio_write(masks[input%16]);
}

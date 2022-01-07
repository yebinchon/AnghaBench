
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bttv {int dummy; } ;


 int gpio_bits (int,unsigned int) ;

__attribute__((used)) static void kodicom4400r_write(struct bttv *btv,
          unsigned char xaddr,
          unsigned char yaddr,
          unsigned char data) {
 unsigned int udata;

 udata = (data << 7) | ((yaddr&3) << 4) | (xaddr&0xf);
 gpio_bits(0x1ff, udata);
 gpio_bits(0x1ff, udata | (1 << 8));
 gpio_bits(0x1ff, udata);
}

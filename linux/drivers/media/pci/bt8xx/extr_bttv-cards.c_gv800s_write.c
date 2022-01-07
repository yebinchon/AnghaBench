
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bttv {int dummy; } ;


 int gpio_bits (int,int const) ;

__attribute__((used)) static void gv800s_write(struct bttv *btv,
    unsigned char xaddr,
    unsigned char yaddr,
    unsigned char data) {
 const u32 ADDRESS = ((xaddr&0xf) | (yaddr&3)<<4);
 const u32 CSELECT = 1<<16;
 const u32 STROBE = 1<<17;
 const u32 DATA = data<<18;

 gpio_bits(0x1007f, ADDRESS | CSELECT);
 gpio_bits(0x20000, STROBE);
 gpio_bits(0x40000, DATA);
 gpio_bits(0x20000, ~STROBE);
}

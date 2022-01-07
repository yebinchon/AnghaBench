
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bttv {int dummy; } ;


 int td3116_latch_value (struct bttv*,int) ;

__attribute__((used)) static void td3116_muxsel(struct bttv *btv, unsigned int input)
{
 u32 value;
 u32 highbit;

 highbit = (input & 0x8) >> 3 ;


 value = 0x11;
 value |= ((input & 0x7) << 1) << (4 * highbit);
 td3116_latch_value(btv, value);


 value &= ~0x11;
 value |= ((highbit ^ 0x1) << 4) | highbit;
 td3116_latch_value(btv, value);
}

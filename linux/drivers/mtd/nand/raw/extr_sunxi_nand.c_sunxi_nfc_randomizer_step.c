
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



__attribute__((used)) static u16 sunxi_nfc_randomizer_step(u16 state, int count)
{
 state &= 0x7fff;





 while (count--)
  state = ((state >> 1) |
    (((state ^ (state >> 1)) & 1) << 14)) & 0x7fff;

 return state;
}

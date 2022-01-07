
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int DR_STE_SIZE_MASK ;

__attribute__((used)) static u16 dr_ste_conv_bit_to_byte_mask(u8 *bit_mask)
{
 u16 byte_mask = 0;
 int i;

 for (i = 0; i < DR_STE_SIZE_MASK; i++) {
  byte_mask = byte_mask << 1;
  if (bit_mask[i] == 0xff)
   byte_mask |= 1;
 }
 return byte_mask;
}

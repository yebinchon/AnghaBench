
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



__attribute__((used)) static u16 get_bits_per_mask(u16 byte_mask)
{
 u16 bits = 0;

 while (byte_mask) {
  byte_mask = byte_mask & (byte_mask - 1);
  bits++;
 }

 return bits;
}

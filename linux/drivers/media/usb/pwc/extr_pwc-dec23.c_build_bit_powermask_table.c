
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwc_dec23_private {unsigned char** table_bitpowermask; } ;



__attribute__((used)) static void build_bit_powermask_table(struct pwc_dec23_private *pdec)
{
 unsigned char *p;
 unsigned int bit, byte, mask, val;
 unsigned int bitpower = 1;

 for (bit = 0; bit < 8; bit++) {
  mask = bitpower - 1;
  p = pdec->table_bitpowermask[bit];
  for (byte = 0; byte < 256; byte++) {
   val = (byte & mask);
   if (byte & bitpower)
    val = -val;
   *p++ = val;
  }
  bitpower<<=1;
 }
}

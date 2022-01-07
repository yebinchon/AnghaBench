
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 scalar_t__ hweight8 (int ) ;

__attribute__((used)) static int count_written_bits(u8 *buff, int size, int max_bits)
{
 int k, written_bits = 0;

 for (k = 0; k < size; k++) {
  written_bits += hweight8(~buff[k]);
  if (written_bits > max_bits)
   break;
 }

 return written_bits;
}

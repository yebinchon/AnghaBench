
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;



__attribute__((used)) static bool edid_block_verify_crc(u8 *edid_block)
{
 u8 sum = 0;
 int i;

 for (i = 0; i < 128; i++)
  sum += edid_block[i];
 return sum == 0;
}

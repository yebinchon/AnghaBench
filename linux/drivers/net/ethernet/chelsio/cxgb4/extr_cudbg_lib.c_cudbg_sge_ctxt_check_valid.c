
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;






__attribute__((used)) static int cudbg_sge_ctxt_check_valid(u32 *buf, int type)
{
 int index, bit, bit_pos = 0;

 switch (type) {
 case 130:
  bit_pos = 176;
  break;
 case 128:
  bit_pos = 141;
  break;
 case 129:
  bit_pos = 89;
  break;
 }
 index = bit_pos / 32;
 bit = bit_pos % 32;
 return buf[index] & (1U << bit);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



__attribute__((used)) static u8 eq_cons_idx_checksum_set(u32 val)
{
 u8 checksum = 0;
 int idx;

 for (idx = 0; idx < 32; idx += 4)
  checksum ^= ((val >> idx) & 0xF);

 return (checksum & 0xF);
}

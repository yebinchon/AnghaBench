
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static inline u8 mcsidx_to_tgtpwridx(unsigned int mcs_idx, u8 base_pwridx)
{
 u8 mod_idx = mcs_idx % 8;

 if (mod_idx <= 3)
  return mod_idx ? (base_pwridx + 1) : base_pwridx;
 else
  return base_pwridx + 4 * (mcs_idx / 8) + mod_idx - 2;
}

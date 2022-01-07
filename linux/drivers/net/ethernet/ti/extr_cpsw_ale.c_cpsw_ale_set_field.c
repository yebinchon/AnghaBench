
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BITMASK (int) ;

__attribute__((used)) static inline void cpsw_ale_set_field(u32 *ale_entry, u32 start, u32 bits,
          u32 value)
{
 int idx;

 value &= BITMASK(bits);
 idx = start / 32;
 start -= idx * 32;
 idx = 2 - idx;
 ale_entry[idx] &= ~(BITMASK(bits) << start);
 ale_entry[idx] |= (value << start);
}

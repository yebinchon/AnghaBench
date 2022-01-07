
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BITMASK (int) ;

__attribute__((used)) static inline int cpsw_ale_get_field(u32 *ale_entry, u32 start, u32 bits)
{
 int idx;

 idx = start / 32;
 start -= idx * 32;
 idx = 2 - idx;
 return (ale_entry[idx] >> start) & BITMASK(bits);
}

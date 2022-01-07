
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 unsigned int MAX_PHASE ;

__attribute__((used)) static inline u32 get_phase_point(u32 phase_map, unsigned int idx)
{
 idx &= MAX_PHASE;
 return phase_map & (1 << idx);
}

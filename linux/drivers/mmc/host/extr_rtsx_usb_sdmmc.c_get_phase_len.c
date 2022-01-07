
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MAX_PHASE ;
 scalar_t__ get_phase_point (int ,unsigned int) ;

__attribute__((used)) static int get_phase_len(u32 phase_map, unsigned int idx)
{
 int i;

 for (i = 0; i < MAX_PHASE + 1; i++) {
  if (get_phase_point(phase_map, idx + i) == 0)
   return i;
 }
 return MAX_PHASE + 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int RTSX_PHASE_MAX ;
 scalar_t__ test_phase_bit (int ,unsigned int) ;

__attribute__((used)) static int sd_get_phase_len(u32 phase_map, unsigned int start_bit)
{
 int i;

 for (i = 0; i < RTSX_PHASE_MAX; i++) {
  if (test_phase_bit(phase_map, start_bit + i) == 0)
   return i;
 }
 return RTSX_PHASE_MAX;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 unsigned int RTSX_PHASE_MAX ;

__attribute__((used)) static inline u32 test_phase_bit(u32 phase_map, unsigned int bit)
{
 bit %= RTSX_PHASE_MAX;
 return phase_map & (1 << bit);
}

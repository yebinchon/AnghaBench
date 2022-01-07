
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int SLB_VSID_B_1T ;

__attribute__((used)) static u64 next_segment(u64 ea, u64 vsid)
{
 if (vsid & SLB_VSID_B_1T)
  ea |= (1ULL << 40) - 1;
 else
  ea |= (1ULL << 28) - 1;

 return ea + 1;
}

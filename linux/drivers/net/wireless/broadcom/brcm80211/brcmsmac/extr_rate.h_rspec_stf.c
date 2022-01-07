
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int u32 ;


 int RSPEC_STF_MASK ;
 int RSPEC_STF_SHIFT ;

__attribute__((used)) static inline uint rspec_stf(u32 rspec)
{
 return (rspec & RSPEC_STF_MASK) >> RSPEC_STF_SHIFT;
}

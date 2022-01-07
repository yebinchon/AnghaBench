
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct timecounter {TYPE_1__* cc; } ;
struct TYPE_2__ {int mult; int shift; } ;


 int div_u64 (int ,int ) ;

__attribute__((used)) static u64 mlxsw_sp1_ptp_ns2cycles(const struct timecounter *tc, u64 nsec)
{
 u64 cycles = (u64) nsec;

 cycles <<= tc->cc->shift;
 cycles = div_u64(cycles, tc->cc->mult);

 return cycles;
}

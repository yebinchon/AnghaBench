
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_2__ {int smt_tid; } ;
struct s_smc {TYPE_1__ sm; } ;


 int SMT_TID_MAGIC ;

u_long smt_get_tid(struct s_smc *smc)
{
 u_long tid ;
 while ((tid = ++(smc->sm.smt_tid) ^ SMT_TID_MAGIC) == 0)
  ;
 return tid & 0x3fffffffL;
}

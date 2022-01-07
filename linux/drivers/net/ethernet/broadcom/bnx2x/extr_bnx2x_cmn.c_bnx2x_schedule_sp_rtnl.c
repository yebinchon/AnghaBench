
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2x {int sp_rtnl_task; int sp_rtnl_state; } ;
typedef enum sp_rtnl_flag { ____Placeholder_sp_rtnl_flag } sp_rtnl_flag ;


 int BNX2X_MSG_SP ;
 int DP (int,char*,int) ;
 int schedule_delayed_work (int *,int ) ;
 int set_bit (int,int *) ;
 int smp_mb__after_atomic () ;
 int smp_mb__before_atomic () ;

void bnx2x_schedule_sp_rtnl(struct bnx2x *bp, enum sp_rtnl_flag flag,
       u32 verbose)
{
 smp_mb__before_atomic();
 set_bit(flag, &bp->sp_rtnl_state);
 smp_mb__after_atomic();
 DP((BNX2X_MSG_SP | verbose), "Scheduling sp_rtnl task [Flag: %d]\n",
    flag);
 schedule_delayed_work(&bp->sp_rtnl_task, 0);
}

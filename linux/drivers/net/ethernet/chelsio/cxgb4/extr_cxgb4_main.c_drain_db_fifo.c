
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int chip; } ;
struct adapter {TYPE_1__ params; } ;


 scalar_t__ HP_COUNT_G (scalar_t__) ;
 scalar_t__ HP_COUNT_T5_G (scalar_t__) ;
 scalar_t__ LP_COUNT_G (scalar_t__) ;
 scalar_t__ LP_COUNT_T5_G (scalar_t__) ;
 int SGE_DBFIFO_STATUS2_A ;
 int SGE_DBFIFO_STATUS_A ;
 int TASK_UNINTERRUPTIBLE ;
 scalar_t__ is_t4 (int ) ;
 int schedule_timeout (int ) ;
 int set_current_state (int ) ;
 scalar_t__ t4_read_reg (struct adapter*,int ) ;
 int usecs_to_jiffies (int) ;

__attribute__((used)) static void drain_db_fifo(struct adapter *adap, int usecs)
{
 u32 v1, v2, lp_count, hp_count;

 do {
  v1 = t4_read_reg(adap, SGE_DBFIFO_STATUS_A);
  v2 = t4_read_reg(adap, SGE_DBFIFO_STATUS2_A);
  if (is_t4(adap->params.chip)) {
   lp_count = LP_COUNT_G(v1);
   hp_count = HP_COUNT_G(v1);
  } else {
   lp_count = LP_COUNT_T5_G(v1);
   hp_count = HP_COUNT_T5_G(v2);
  }

  if (lp_count == 0 && hp_count == 0)
   break;
  set_current_state(TASK_UNINTERRUPTIBLE);
  schedule_timeout(usecs_to_jiffies(usecs));
 } while (1);
}

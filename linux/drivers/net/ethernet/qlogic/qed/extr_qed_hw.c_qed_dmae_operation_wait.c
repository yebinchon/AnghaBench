
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__* p_completion_word; } ;
struct qed_hwfn {TYPE_1__ dmae_info; int cdev; } ;


 scalar_t__ DMAE_COMPLETION_VAL ;
 int DMAE_MIN_WAIT_TIME ;
 int DP_NOTICE (int ,char*,scalar_t__,scalar_t__) ;
 int EBUSY ;
 int barrier () ;
 int udelay (int ) ;

__attribute__((used)) static int qed_dmae_operation_wait(struct qed_hwfn *p_hwfn)
{
 u32 wait_cnt_limit = 10000, wait_cnt = 0;
 int qed_status = 0;

 barrier();
 while (*p_hwfn->dmae_info.p_completion_word != DMAE_COMPLETION_VAL) {
  udelay(DMAE_MIN_WAIT_TIME);
  if (++wait_cnt > wait_cnt_limit) {
   DP_NOTICE(p_hwfn->cdev,
      "Timed-out waiting for operation to complete. Completion word is 0x%08x expected 0x%08x.\n",
      *p_hwfn->dmae_info.p_completion_word,
     DMAE_COMPLETION_VAL);
   qed_status = -EBUSY;
   break;
  }




  barrier();
 }

 if (qed_status == 0)
  *p_hwfn->dmae_info.p_completion_word = 0;

 return qed_status;
}

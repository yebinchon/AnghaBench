
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {scalar_t__ cookie; } ;
struct qed_spq_entry {TYPE_1__ comp_cb; } ;
struct qed_spq_comp_done {int fw_return_code; int done; } ;
struct qed_hwfn {int dummy; } ;


 int EBUSY ;
 int SPQ_BLOCK_DELAY_MAX_ITER ;
 int SPQ_BLOCK_DELAY_US ;
 int SPQ_BLOCK_SLEEP_MAX_ITER ;
 int SPQ_BLOCK_SLEEP_MS ;
 int msleep (int ) ;
 int smp_load_acquire (int *) ;
 int udelay (int ) ;

__attribute__((used)) static int __qed_spq_block(struct qed_hwfn *p_hwfn,
      struct qed_spq_entry *p_ent,
      u8 *p_fw_ret, bool sleep_between_iter)
{
 struct qed_spq_comp_done *comp_done;
 u32 iter_cnt;

 comp_done = (struct qed_spq_comp_done *)p_ent->comp_cb.cookie;
 iter_cnt = sleep_between_iter ? SPQ_BLOCK_SLEEP_MAX_ITER
          : SPQ_BLOCK_DELAY_MAX_ITER;

 while (iter_cnt--) {

  if (smp_load_acquire(&comp_done->done) == 1) {
   if (p_fw_ret)
    *p_fw_ret = comp_done->fw_return_code;
   return 0;
  }

  if (sleep_between_iter)
   msleep(SPQ_BLOCK_SLEEP_MS);
  else
   udelay(SPQ_BLOCK_DELAY_US);
 }

 return -EBUSY;
}

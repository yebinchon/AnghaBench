
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct qed_ptt {int dummy; } ;
struct qed_igu_block {int vector_number; int is_pf; int function_id; } ;
struct TYPE_4__ {TYPE_1__* p_igu_info; } ;
struct qed_hwfn {TYPE_2__ hw_info; } ;
struct TYPE_3__ {struct qed_igu_block* entry; } ;


 int BIT (size_t) ;
 scalar_t__ CAU_REG_PI_MEMORY ;
 int DP_NOTICE (struct qed_hwfn*,char*,size_t) ;
 int DP_VERBOSE (struct qed_hwfn*,int ,char*,size_t,int ,int ,int ) ;
 int IGU_CLEANUP_SLEEP_LENGTH ;
 scalar_t__ IGU_REG_WRITE_DONE_PENDING ;
 int NETIF_MSG_INTR ;
 int qed_int_igu_cleanup_sb (struct qed_hwfn*,struct qed_ptt*,size_t,int,size_t) ;
 int qed_rd (struct qed_hwfn*,struct qed_ptt*,scalar_t__) ;
 int qed_wr (struct qed_hwfn*,struct qed_ptt*,scalar_t__,int ) ;
 int usleep_range (int,int) ;

void qed_int_igu_init_pure_rt_single(struct qed_hwfn *p_hwfn,
         struct qed_ptt *p_ptt,
         u16 igu_sb_id, u16 opaque, bool b_set)
{
 struct qed_igu_block *p_block;
 int pi, i;

 p_block = &p_hwfn->hw_info.p_igu_info->entry[igu_sb_id];
 DP_VERBOSE(p_hwfn, NETIF_MSG_INTR,
     "Cleaning SB [%04x]: func_id= %d is_pf = %d vector_num = 0x%0x\n",
     igu_sb_id,
     p_block->function_id,
     p_block->is_pf, p_block->vector_number);


 if (b_set)
  qed_int_igu_cleanup_sb(p_hwfn, p_ptt, igu_sb_id, 1, opaque);


 qed_int_igu_cleanup_sb(p_hwfn, p_ptt, igu_sb_id, 0, opaque);


 for (i = 0; i < IGU_CLEANUP_SLEEP_LENGTH; i++) {
  u32 val;

  val = qed_rd(p_hwfn, p_ptt,
        IGU_REG_WRITE_DONE_PENDING +
        ((igu_sb_id / 32) * 4));
  if (val & BIT((igu_sb_id % 32)))
   usleep_range(10, 20);
  else
   break;
 }
 if (i == IGU_CLEANUP_SLEEP_LENGTH)
  DP_NOTICE(p_hwfn,
     "Failed SB[0x%08x] still appearing in WRITE_DONE_PENDING\n",
     igu_sb_id);


 for (pi = 0; pi < 12; pi++)
  qed_wr(p_hwfn, p_ptt,
         CAU_REG_PI_MEMORY + (igu_sb_id * 12 + pi) * 4, 0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;


 scalar_t__ NUM_STORMS ;
 int qed_get_rdma_assert_ram_addr (struct qed_hwfn*,scalar_t__) ;
 int qed_wr (struct qed_hwfn*,struct qed_ptt*,int ,scalar_t__) ;

void qed_set_rdma_error_level(struct qed_hwfn *p_hwfn,
         struct qed_ptt *p_ptt,
         u8 assert_level[NUM_STORMS])
{
 u8 storm_id;

 for (storm_id = 0; storm_id < NUM_STORMS; storm_id++) {
  u32 ram_addr = qed_get_rdma_assert_ram_addr(p_hwfn, storm_id);

  qed_wr(p_hwfn, p_ptt, ram_addr, assert_level[storm_id]);
 }
}

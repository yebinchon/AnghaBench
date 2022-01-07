
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {TYPE_1__* cdev; } ;
struct coalescing_timeset {int value; } ;
struct TYPE_2__ {scalar_t__ int_coalescing_mode; } ;


 int COALESCING_TIMESET_TIMESET ;
 int COALESCING_TIMESET_VALID ;
 int DP_NOTICE (struct qed_hwfn*,char*) ;
 int EINVAL ;
 scalar_t__ QED_COAL_MODE_ENABLE ;
 int SET_FIELD (int ,int ,int) ;
 int memset (void*,int ,size_t) ;
 int qed_memcpy_to (struct qed_hwfn*,struct qed_ptt*,int ,void*,size_t) ;

__attribute__((used)) static int qed_set_coalesce(struct qed_hwfn *p_hwfn, struct qed_ptt *p_ptt,
       u32 hw_addr, void *p_eth_qzone,
       size_t eth_qzone_size, u8 timeset)
{
 struct coalescing_timeset *p_coal_timeset;

 if (p_hwfn->cdev->int_coalescing_mode != QED_COAL_MODE_ENABLE) {
  DP_NOTICE(p_hwfn, "Coalescing configuration not enabled\n");
  return -EINVAL;
 }

 p_coal_timeset = p_eth_qzone;
 memset(p_eth_qzone, 0, eth_qzone_size);
 SET_FIELD(p_coal_timeset->value, COALESCING_TIMESET_TIMESET, timeset);
 SET_FIELD(p_coal_timeset->value, COALESCING_TIMESET_VALID, 1);
 qed_memcpy_to(p_hwfn, p_ptt, hw_addr, p_eth_qzone, eth_qzone_size);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;


 int DP_VERBOSE (struct qed_hwfn*,int ,char*,int ,int ,void*,unsigned long) ;
 int NETIF_MSG_HW ;
 int qed_memcpy_hw (struct qed_hwfn*,struct qed_ptt*,void*,int ,size_t,int) ;

void qed_memcpy_to(struct qed_hwfn *p_hwfn,
     struct qed_ptt *p_ptt, u32 hw_addr, void *src, size_t n)
{
 DP_VERBOSE(p_hwfn, NETIF_MSG_HW,
     "hw_addr 0x%x, hw_addr 0x%x, src %p size %lu\n",
     hw_addr, hw_addr, src, (unsigned long)n);

 qed_memcpy_hw(p_hwfn, p_ptt, src, hw_addr, n, 1);
}

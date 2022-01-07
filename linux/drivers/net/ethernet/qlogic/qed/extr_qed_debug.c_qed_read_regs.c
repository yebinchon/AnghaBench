
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;


 int DWORDS_TO_BYTES (size_t) ;
 size_t qed_rd (struct qed_hwfn*,struct qed_ptt*,int ) ;

void qed_read_regs(struct qed_hwfn *p_hwfn,
     struct qed_ptt *p_ptt, u32 *buf, u32 addr, u32 len)
{
 u32 i;

 for (i = 0; i < len; i++)
  buf[i] = qed_rd(p_hwfn, p_ptt, DWORDS_TO_BYTES(addr + i));
}

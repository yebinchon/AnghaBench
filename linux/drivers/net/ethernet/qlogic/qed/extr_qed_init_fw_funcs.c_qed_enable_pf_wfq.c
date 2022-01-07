
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_hwfn {int dummy; } ;


 scalar_t__ QM_BYPASS_EN ;
 int QM_REG_AFULLQMBYPTHRPFWFQ_RT_OFFSET ;
 int QM_REG_WFQPFENABLE_RT_OFFSET ;
 int QM_WFQ_UPPER_BOUND ;
 int STORE_RT_REG (struct qed_hwfn*,int ,int) ;

__attribute__((used)) static void qed_enable_pf_wfq(struct qed_hwfn *p_hwfn, bool pf_wfq_en)
{
 STORE_RT_REG(p_hwfn, QM_REG_WFQPFENABLE_RT_OFFSET, pf_wfq_en ? 1 : 0);


 if (pf_wfq_en && QM_BYPASS_EN)
  STORE_RT_REG(p_hwfn,
        QM_REG_AFULLQMBYPTHRPFWFQ_RT_OFFSET,
        QM_WFQ_UPPER_BOUND);
}

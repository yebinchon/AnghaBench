
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int flags; } ;
typedef int irq_handler_t ;


 int BUG_ON (int) ;
 int CXGB4VF_USING_MSI ;
 int CXGB4VF_USING_MSIX ;
 int t4vf_intr_msi ;
 int t4vf_sge_intr_msix ;

irq_handler_t t4vf_intr_handler(struct adapter *adapter)
{
 BUG_ON((adapter->flags &
        (CXGB4VF_USING_MSIX | CXGB4VF_USING_MSI)) == 0);
 if (adapter->flags & CXGB4VF_USING_MSIX)
  return t4vf_sge_intr_msix;
 else
  return t4vf_intr_msi;
}

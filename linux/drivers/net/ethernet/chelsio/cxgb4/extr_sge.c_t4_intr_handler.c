
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int flags; } ;
typedef int irq_handler_t ;


 int CXGB4_USING_MSI ;
 int CXGB4_USING_MSIX ;
 int t4_intr_intx ;
 int t4_intr_msi ;
 int t4_sge_intr_msix ;

irq_handler_t t4_intr_handler(struct adapter *adap)
{
 if (adap->flags & CXGB4_USING_MSIX)
  return t4_sge_intr_msix;
 if (adap->flags & CXGB4_USING_MSI)
  return t4_intr_msi;
 return t4_intr_intx;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ rev; } ;
struct adapter {int flags; TYPE_1__ params; } ;
typedef int irq_handler_t ;


 int USING_MSI ;
 int USING_MSIX ;
 int t3_intr ;
 int t3_intr_msi ;
 int t3_intr_msi_napi ;
 int t3_sge_intr_msix ;
 int t3_sge_intr_msix_napi ;
 int t3b_intr ;
 int t3b_intr_napi ;

irq_handler_t t3_intr_handler(struct adapter *adap, int polling)
{
 if (adap->flags & USING_MSIX)
  return polling ? t3_sge_intr_msix_napi : t3_sge_intr_msix;
 if (adap->flags & USING_MSI)
  return polling ? t3_intr_msi_napi : t3_intr_msi;
 if (adap->params.rev > 0)
  return polling ? t3b_intr_napi : t3b_intr;
 return t3_intr;
}

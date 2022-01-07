
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct cxl {TYPE_2__* native; int dev; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {TYPE_1__* sl_ops; } ;
struct TYPE_3__ {int (* err_irq_dump_registers ) (struct cxl*) ;int (* debugfs_stop_trace ) (struct cxl*) ;} ;


 int CXL_PSL_ErrIVTE ;
 int IRQ_HANDLED ;
 int WARN (int,char*,int) ;
 int cxl_p1_read (struct cxl*,int ) ;
 int dev_crit (int *,char*,...) ;
 int stub1 (struct cxl*) ;
 int stub2 (struct cxl*) ;

__attribute__((used)) static irqreturn_t native_irq_err(int irq, void *data)
{
 struct cxl *adapter = data;
 u64 err_ivte;

 WARN(1, "CXL ERROR interrupt %i\n", irq);

 err_ivte = cxl_p1_read(adapter, CXL_PSL_ErrIVTE);
 dev_crit(&adapter->dev, "PSL_ErrIVTE: 0x%016llx\n", err_ivte);

 if (adapter->native->sl_ops->debugfs_stop_trace) {
  dev_crit(&adapter->dev, "STOPPING CXL TRACE\n");
  adapter->native->sl_ops->debugfs_stop_trace(adapter);
 }

 if (adapter->native->sl_ops->err_irq_dump_registers)
  adapter->native->sl_ops->err_irq_dump_registers(adapter);

 return IRQ_HANDLED;
}

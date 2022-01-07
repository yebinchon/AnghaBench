
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmci_datagram {int dummy; } ;
struct TYPE_2__ {scalar_t__ iobase; } ;


 scalar_t__ VMCI_DATA_OUT_ADDR ;
 int VMCI_DG_SIZE (struct vmci_datagram*) ;
 int VMCI_ERROR_INVALID_ARGS ;
 int VMCI_ERROR_UNAVAILABLE ;
 scalar_t__ VMCI_RESULT_LOW_ADDR ;
 int ioread32 (scalar_t__) ;
 int iowrite8_rep (scalar_t__,struct vmci_datagram*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 TYPE_1__* vmci_dev_g ;
 int vmci_dev_spinlock ;

int vmci_send_datagram(struct vmci_datagram *dg)
{
 unsigned long flags;
 int result;


 if (dg == ((void*)0))
  return VMCI_ERROR_INVALID_ARGS;
 spin_lock_irqsave(&vmci_dev_spinlock, flags);

 if (vmci_dev_g) {
  iowrite8_rep(vmci_dev_g->iobase + VMCI_DATA_OUT_ADDR,
        dg, VMCI_DG_SIZE(dg));
  result = ioread32(vmci_dev_g->iobase + VMCI_RESULT_LOW_ADDR);
 } else {
  result = VMCI_ERROR_UNAVAILABLE;
 }

 spin_unlock_irqrestore(&vmci_dev_spinlock, flags);

 return result;
}

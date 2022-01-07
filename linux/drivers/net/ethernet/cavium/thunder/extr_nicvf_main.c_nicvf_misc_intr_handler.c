
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nicvf {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int NICVF_INTR_MBOX_MASK ;
 int NIC_VF_INT ;
 int nicvf_dump_intr_status (struct nicvf*) ;
 int nicvf_handle_mbx_intr (struct nicvf*) ;
 int nicvf_reg_read (struct nicvf*,int ) ;

__attribute__((used)) static irqreturn_t nicvf_misc_intr_handler(int irq, void *nicvf_irq)
{
 struct nicvf *nic = (struct nicvf *)nicvf_irq;
 u64 intr;

 nicvf_dump_intr_status(nic);

 intr = nicvf_reg_read(nic, NIC_VF_INT);

 if (!(intr & NICVF_INTR_MBOX_MASK))
  return IRQ_HANDLED;

 nicvf_handle_mbx_intr(nic);

 return IRQ_HANDLED;
}

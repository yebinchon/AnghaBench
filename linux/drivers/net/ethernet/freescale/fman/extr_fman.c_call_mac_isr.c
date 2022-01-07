
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct fman {TYPE_1__* intr_mng; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int src_handle; int (* isr_cb ) (int ) ;} ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int stub1 (int ) ;

__attribute__((used)) static inline irqreturn_t call_mac_isr(struct fman *fman, u8 id)
{
 if (fman->intr_mng[id].isr_cb) {
  fman->intr_mng[id].isr_cb(fman->intr_mng[id].src_handle);

  return IRQ_HANDLED;
 }

 return IRQ_NONE;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int process_intrq (struct adapter*) ;

__attribute__((used)) static irqreturn_t t4vf_intr_msi(int irq, void *cookie)
{
 struct adapter *adapter = cookie;

 process_intrq(adapter);
 return IRQ_HANDLED;
}

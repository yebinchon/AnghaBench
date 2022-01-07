
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3cmci_host {int irq_disabled; int irq_state; int irq; } ;


 int disable_irq (int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static void s3cmci_disable_irq(struct s3cmci_host *host, bool transfer)
{
 unsigned long flags;

 local_irq_save(flags);



 host->irq_disabled = transfer;

 if (transfer && host->irq_state) {
  host->irq_state = 0;
  disable_irq(host->irq);
 }

 local_irq_restore(flags);
}

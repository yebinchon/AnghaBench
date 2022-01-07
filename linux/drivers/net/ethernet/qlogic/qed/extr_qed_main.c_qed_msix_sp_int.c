
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tasklet_struct {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int tasklet_schedule (struct tasklet_struct*) ;

__attribute__((used)) static irqreturn_t qed_msix_sp_int(int irq, void *tasklet)
{
 tasklet_schedule((struct tasklet_struct *)tasklet);
 return IRQ_HANDLED;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qcaspi {TYPE_1__* spi_thread; int intr_req; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {scalar_t__ state; } ;


 int IRQ_HANDLED ;
 scalar_t__ TASK_RUNNING ;
 int wake_up_process (TYPE_1__*) ;

__attribute__((used)) static irqreturn_t
qcaspi_intr_handler(int irq, void *data)
{
 struct qcaspi *qca = data;

 qca->intr_req++;
 if (qca->spi_thread &&
     qca->spi_thread->state != TASK_RUNNING)
  wake_up_process(qca->spi_thread);

 return IRQ_HANDLED;
}

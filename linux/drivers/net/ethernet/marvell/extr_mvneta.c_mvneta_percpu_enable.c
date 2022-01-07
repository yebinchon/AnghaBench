
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mvneta_port {TYPE_1__* dev; } ;
struct TYPE_2__ {int irq; } ;


 int IRQ_TYPE_NONE ;
 int enable_percpu_irq (int ,int ) ;

__attribute__((used)) static void mvneta_percpu_enable(void *arg)
{
 struct mvneta_port *pp = arg;

 enable_percpu_irq(pp->dev->irq, IRQ_TYPE_NONE);
}

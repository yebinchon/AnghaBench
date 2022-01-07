
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mvneta_port {TYPE_1__* dev; } ;
struct TYPE_2__ {int irq; } ;


 int disable_percpu_irq (int ) ;

__attribute__((used)) static void mvneta_percpu_disable(void *arg)
{
 struct mvneta_port *pp = arg;

 disable_percpu_irq(pp->dev->irq);
}

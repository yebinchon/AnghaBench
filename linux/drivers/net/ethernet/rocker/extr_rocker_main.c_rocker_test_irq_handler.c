
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rocker_wait {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int rocker_wait_wake_up (struct rocker_wait*) ;

__attribute__((used)) static irqreturn_t rocker_test_irq_handler(int irq, void *dev_id)
{
 struct rocker_wait *wait = dev_id;

 rocker_wait_wake_up(wait);

 return IRQ_HANDLED;
}

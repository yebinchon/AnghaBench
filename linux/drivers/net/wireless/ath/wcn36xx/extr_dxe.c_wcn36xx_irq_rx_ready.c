
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcn36xx {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int wcn36xx_dxe_rx_frame (struct wcn36xx*) ;

__attribute__((used)) static irqreturn_t wcn36xx_irq_rx_ready(int irq, void *dev)
{
 struct wcn36xx *wcn = (struct wcn36xx *)dev;

 wcn36xx_dxe_rx_frame(wcn);

 return IRQ_HANDLED;
}

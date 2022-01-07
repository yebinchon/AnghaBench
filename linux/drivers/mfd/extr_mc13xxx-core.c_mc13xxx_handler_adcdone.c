
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mc13xxx_adcdone_data {int done; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int complete_all (int *) ;

__attribute__((used)) static irqreturn_t mc13xxx_handler_adcdone(int irq, void *data)
{
 struct mc13xxx_adcdone_data *adcdone_data = data;

 complete_all(&adcdone_data->done);

 return IRQ_HANDLED;
}

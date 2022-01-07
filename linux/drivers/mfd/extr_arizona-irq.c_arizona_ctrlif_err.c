
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arizona {int dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int dev_err (int ,char*) ;

__attribute__((used)) static irqreturn_t arizona_ctrlif_err(int irq, void *data)
{
 struct arizona *arizona = data;





 dev_err(arizona->dev, "Control interface error\n");

 return IRQ_HANDLED;
}

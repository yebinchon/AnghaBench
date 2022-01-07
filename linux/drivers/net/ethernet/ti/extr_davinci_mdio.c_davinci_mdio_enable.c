
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct davinci_mdio_data {int clk_div; TYPE_1__* regs; } ;
struct TYPE_2__ {int control; } ;


 int CONTROL_ENABLE ;
 int writel (int,int *) ;

__attribute__((used)) static void davinci_mdio_enable(struct davinci_mdio_data *data)
{

 writel(data->clk_div | CONTROL_ENABLE, &data->regs->control);
}

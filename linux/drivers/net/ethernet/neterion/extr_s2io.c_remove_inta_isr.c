
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s2io_nic {int dev; TYPE_1__* pdev; } ;
struct TYPE_2__ {int irq; } ;


 int free_irq (int ,int ) ;

__attribute__((used)) static void remove_inta_isr(struct s2io_nic *sp)
{
 free_irq(sp->pdev->irq, sp->dev);
}

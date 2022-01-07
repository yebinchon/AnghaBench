
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmfx {int lock; } ;
struct irq_data {int dummy; } ;


 struct stmfx* irq_data_get_irq_chip_data (struct irq_data*) ;
 int mutex_lock (int *) ;

__attribute__((used)) static void stmfx_irq_bus_lock(struct irq_data *data)
{
 struct stmfx *stmfx = irq_data_get_irq_chip_data(data);

 mutex_lock(&stmfx->lock);
}

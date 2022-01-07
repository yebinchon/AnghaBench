
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmfx {int lock; int irq_src; int map; } ;
struct irq_data {int dummy; } ;


 int STMFX_REG_IRQ_SRC_EN ;
 struct stmfx* irq_data_get_irq_chip_data (struct irq_data*) ;
 int mutex_unlock (int *) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static void stmfx_irq_bus_sync_unlock(struct irq_data *data)
{
 struct stmfx *stmfx = irq_data_get_irq_chip_data(data);

 regmap_write(stmfx->map, STMFX_REG_IRQ_SRC_EN, stmfx->irq_src);

 mutex_unlock(&stmfx->lock);
}

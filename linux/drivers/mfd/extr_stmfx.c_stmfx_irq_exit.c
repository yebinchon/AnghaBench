
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmfx {int irq_domain; } ;
struct i2c_client {int dummy; } ;


 int STMFX_REG_IRQ_SRC_MAX ;
 struct stmfx* i2c_get_clientdata (struct i2c_client*) ;
 int irq_dispose_mapping (int ) ;
 int irq_domain_remove (int ) ;
 int irq_find_mapping (int ,int) ;

__attribute__((used)) static void stmfx_irq_exit(struct i2c_client *client)
{
 struct stmfx *stmfx = i2c_get_clientdata(client);
 int hwirq;

 for (hwirq = 0; hwirq < STMFX_REG_IRQ_SRC_MAX; hwirq++)
  irq_dispose_mapping(irq_find_mapping(stmfx->irq_domain, hwirq));

 irq_domain_remove(stmfx->irq_domain);
}

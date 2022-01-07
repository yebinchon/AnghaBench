
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct stmfx {TYPE_1__* dev; int map; int irq_domain; } ;
struct i2c_client {int irq; } ;
struct TYPE_3__ {int of_node; } ;


 int EINVAL ;
 int IRQF_ONESHOT ;
 int IRQ_TYPE_EDGE_RISING ;
 int IRQ_TYPE_LEVEL_HIGH ;
 int STMFX_REG_IRQ_OUT_PIN ;
 int STMFX_REG_IRQ_OUT_PIN_POL ;
 int STMFX_REG_IRQ_OUT_PIN_TYPE ;
 int STMFX_REG_IRQ_SRC_MAX ;
 int dev_err (TYPE_1__*,char*) ;
 int devm_request_threaded_irq (TYPE_1__*,int ,int *,int ,int,char*,struct stmfx*) ;
 struct stmfx* i2c_get_clientdata (struct i2c_client*) ;
 int irq_domain_add_simple (int ,int ,int ,int *,struct stmfx*) ;
 int irq_get_trigger_type (int ) ;
 int of_property_read_bool (int ,char*) ;
 int regmap_write (int ,int ,int) ;
 int stmfx_irq_exit (struct i2c_client*) ;
 int stmfx_irq_handler ;
 int stmfx_irq_ops ;

__attribute__((used)) static int stmfx_irq_init(struct i2c_client *client)
{
 struct stmfx *stmfx = i2c_get_clientdata(client);
 u32 irqoutpin = 0, irqtrigger;
 int ret;

 stmfx->irq_domain = irq_domain_add_simple(stmfx->dev->of_node,
        STMFX_REG_IRQ_SRC_MAX, 0,
        &stmfx_irq_ops, stmfx);
 if (!stmfx->irq_domain) {
  dev_err(stmfx->dev, "Failed to create IRQ domain\n");
  return -EINVAL;
 }

 if (!of_property_read_bool(stmfx->dev->of_node, "drive-open-drain"))
  irqoutpin |= STMFX_REG_IRQ_OUT_PIN_TYPE;

 irqtrigger = irq_get_trigger_type(client->irq);
 if ((irqtrigger & IRQ_TYPE_EDGE_RISING) ||
     (irqtrigger & IRQ_TYPE_LEVEL_HIGH))
  irqoutpin |= STMFX_REG_IRQ_OUT_PIN_POL;

 ret = regmap_write(stmfx->map, STMFX_REG_IRQ_OUT_PIN, irqoutpin);
 if (ret)
  return ret;

 ret = devm_request_threaded_irq(stmfx->dev, client->irq,
     ((void*)0), stmfx_irq_handler,
     irqtrigger | IRQF_ONESHOT,
     "stmfx", stmfx);
 if (ret)
  stmfx_irq_exit(client);

 return ret;
}

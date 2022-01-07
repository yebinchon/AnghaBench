
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct twl6040 {int rev; int audpwron; TYPE_4__* supplies; int irq_data; int irq; struct mfd_cell* cells; int * regmap; TYPE_7__* dev; void* irq_th; void* irq_ready; int ready; int mutex; int * mclk; int * clk32k; } ;
struct mfd_cell {char* name; void* num_resources; TYPE_1__* resources; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_19__ {struct device_node* of_node; } ;
struct i2c_client {TYPE_7__ dev; int irq; } ;
struct device_node {int dummy; } ;
struct TYPE_18__ {char* supply; } ;
struct TYPE_17__ {int start; int end; } ;


 void* ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int GPIOF_OUT_INIT_LOW ;
 int IRQF_ONESHOT ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int TWL6040_IRQ_PLUG ;
 int TWL6040_IRQ_READY ;
 int TWL6040_IRQ_TH ;
 int TWL6040_IRQ_VIB ;
 int TWL6040_NUM_SUPPLIES ;
 int TWL6040_REG_ASICREV ;
 int TWL6040_REG_INTID ;
 scalar_t__ TWL6040_REV_ES1_0 ;
 int dev_dbg (TYPE_7__*,char*) ;
 int dev_err (TYPE_7__*,char*,...) ;
 void* devm_clk_get (TYPE_7__*,char*) ;
 int devm_gpio_request_one (TYPE_7__*,int,int ,char*) ;
 struct twl6040* devm_kzalloc (TYPE_7__*,int,int ) ;
 int * devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_regulator_bulk_get (TYPE_7__*,int ,TYPE_4__*) ;
 int devm_request_threaded_irq (TYPE_7__*,void*,int *,int ,int ,char*,struct twl6040*) ;
 scalar_t__ gpio_is_valid (int) ;
 int i2c_set_clientdata (struct i2c_client*,struct twl6040*) ;
 int init_completion (int *) ;
 int mfd_add_devices (TYPE_7__*,int,struct mfd_cell*,int,int *,int ,int *) ;
 int mutex_init (int *) ;
 int of_get_named_gpio (struct device_node*,char*,int ) ;
 int regcache_cache_only (int *,int) ;
 int regcache_mark_dirty (int *) ;
 int regmap_add_irq_chip (int *,int ,int ,int ,int *,int *) ;
 int regmap_del_irq_chip (int ,int ) ;
 void* regmap_irq_get_virq (int ,int ) ;
 int regmap_register_patch (int *,TYPE_1__*,void*) ;
 int regulator_bulk_disable (int ,TYPE_4__*) ;
 int regulator_bulk_enable (int ,TYPE_4__*) ;
 TYPE_1__* twl6040_codec_rsrc ;
 scalar_t__ twl6040_get_revid (struct twl6040*) ;
 scalar_t__ twl6040_has_vibra (struct device_node*) ;
 int twl6040_irq_chip ;
 TYPE_1__* twl6040_patch ;
 int twl6040_readyint_handler ;
 int twl6040_reg_read (struct twl6040*,int ) ;
 int twl6040_regmap_config ;
 int twl6040_thint_handler ;
 TYPE_1__* twl6040_vibra_rsrc ;

__attribute__((used)) static int twl6040_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct device_node *node = client->dev.of_node;
 struct twl6040 *twl6040;
 struct mfd_cell *cell = ((void*)0);
 int irq, ret, children = 0;

 if (!node) {
  dev_err(&client->dev, "of node is missing\n");
  return -EINVAL;
 }


 if (!client->irq) {
  dev_err(&client->dev, "Invalid IRQ configuration\n");
  return -EINVAL;
 }

 twl6040 = devm_kzalloc(&client->dev, sizeof(struct twl6040),
          GFP_KERNEL);
 if (!twl6040)
  return -ENOMEM;

 twl6040->regmap = devm_regmap_init_i2c(client, &twl6040_regmap_config);
 if (IS_ERR(twl6040->regmap))
  return PTR_ERR(twl6040->regmap);

 i2c_set_clientdata(client, twl6040);

 twl6040->clk32k = devm_clk_get(&client->dev, "clk32k");
 if (IS_ERR(twl6040->clk32k)) {
  if (PTR_ERR(twl6040->clk32k) == -EPROBE_DEFER)
   return -EPROBE_DEFER;
  dev_dbg(&client->dev, "clk32k is not handled\n");
  twl6040->clk32k = ((void*)0);
 }

 twl6040->mclk = devm_clk_get(&client->dev, "mclk");
 if (IS_ERR(twl6040->mclk)) {
  if (PTR_ERR(twl6040->mclk) == -EPROBE_DEFER)
   return -EPROBE_DEFER;
  dev_dbg(&client->dev, "mclk is not handled\n");
  twl6040->mclk = ((void*)0);
 }

 twl6040->supplies[0].supply = "vio";
 twl6040->supplies[1].supply = "v2v1";
 ret = devm_regulator_bulk_get(&client->dev, TWL6040_NUM_SUPPLIES,
          twl6040->supplies);
 if (ret != 0) {
  dev_err(&client->dev, "Failed to get supplies: %d\n", ret);
  return ret;
 }

 ret = regulator_bulk_enable(TWL6040_NUM_SUPPLIES, twl6040->supplies);
 if (ret != 0) {
  dev_err(&client->dev, "Failed to enable supplies: %d\n", ret);
  return ret;
 }

 twl6040->dev = &client->dev;
 twl6040->irq = client->irq;

 mutex_init(&twl6040->mutex);
 init_completion(&twl6040->ready);

 regmap_register_patch(twl6040->regmap, twl6040_patch,
         ARRAY_SIZE(twl6040_patch));

 twl6040->rev = twl6040_reg_read(twl6040, TWL6040_REG_ASICREV);
 if (twl6040->rev < 0) {
  dev_err(&client->dev, "Failed to read revision register: %d\n",
   twl6040->rev);
  ret = twl6040->rev;
  goto gpio_err;
 }


 if (twl6040_get_revid(twl6040) > TWL6040_REV_ES1_0)
  twl6040->audpwron = of_get_named_gpio(node,
            "ti,audpwron-gpio", 0);
 else
  twl6040->audpwron = -EINVAL;

 if (gpio_is_valid(twl6040->audpwron)) {
  ret = devm_gpio_request_one(&client->dev, twl6040->audpwron,
         GPIOF_OUT_INIT_LOW, "audpwron");
  if (ret)
   goto gpio_err;


  twl6040_reg_read(twl6040, TWL6040_REG_INTID);
 }

 ret = regmap_add_irq_chip(twl6040->regmap, twl6040->irq, IRQF_ONESHOT,
      0, &twl6040_irq_chip, &twl6040->irq_data);
 if (ret < 0)
  goto gpio_err;

 twl6040->irq_ready = regmap_irq_get_virq(twl6040->irq_data,
       TWL6040_IRQ_READY);
 twl6040->irq_th = regmap_irq_get_virq(twl6040->irq_data,
           TWL6040_IRQ_TH);

 ret = devm_request_threaded_irq(twl6040->dev, twl6040->irq_ready, ((void*)0),
     twl6040_readyint_handler, IRQF_ONESHOT,
     "twl6040_irq_ready", twl6040);
 if (ret) {
  dev_err(twl6040->dev, "READY IRQ request failed: %d\n", ret);
  goto readyirq_err;
 }

 ret = devm_request_threaded_irq(twl6040->dev, twl6040->irq_th, ((void*)0),
     twl6040_thint_handler, IRQF_ONESHOT,
     "twl6040_irq_th", twl6040);
 if (ret) {
  dev_err(twl6040->dev, "Thermal IRQ request failed: %d\n", ret);
  goto readyirq_err;
 }





 irq = regmap_irq_get_virq(twl6040->irq_data, TWL6040_IRQ_PLUG);
 cell = &twl6040->cells[children];
 cell->name = "twl6040-codec";
 twl6040_codec_rsrc[0].start = irq;
 twl6040_codec_rsrc[0].end = irq;
 cell->resources = twl6040_codec_rsrc;
 cell->num_resources = ARRAY_SIZE(twl6040_codec_rsrc);
 children++;


 if (twl6040_has_vibra(node)) {
  irq = regmap_irq_get_virq(twl6040->irq_data, TWL6040_IRQ_VIB);

  cell = &twl6040->cells[children];
  cell->name = "twl6040-vibra";
  twl6040_vibra_rsrc[0].start = irq;
  twl6040_vibra_rsrc[0].end = irq;
  cell->resources = twl6040_vibra_rsrc;
  cell->num_resources = ARRAY_SIZE(twl6040_vibra_rsrc);
  children++;
 }


 cell = &twl6040->cells[children];
 cell->name = "twl6040-gpo";
 children++;


 cell = &twl6040->cells[children];
 cell->name = "twl6040-pdmclk";
 children++;


 regcache_cache_only(twl6040->regmap, 1);
 regcache_mark_dirty(twl6040->regmap);

 ret = mfd_add_devices(&client->dev, -1, twl6040->cells, children,
         ((void*)0), 0, ((void*)0));
 if (ret)
  goto readyirq_err;

 return 0;

readyirq_err:
 regmap_del_irq_chip(twl6040->irq, twl6040->irq_data);
gpio_err:
 regulator_bulk_disable(TWL6040_NUM_SUPPLIES, twl6040->supplies);
 return ret;
}

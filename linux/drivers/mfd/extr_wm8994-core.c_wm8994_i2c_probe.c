
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct wm8994 {int type; TYPE_1__* dev; int regmap; int irq; } ;
struct of_device_id {scalar_t__ data; } ;
struct i2c_device_id {int driver_data; } ;
struct TYPE_4__ {scalar_t__ of_node; } ;
struct i2c_client {int irq; TYPE_1__ dev; } ;
typedef enum wm8994_type { ____Placeholder_wm8994_type } wm8994_type ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (TYPE_1__*,char*,int) ;
 struct wm8994* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int i2c_set_clientdata (struct i2c_client*,struct wm8994*) ;
 struct of_device_id* of_match_device (int ,TYPE_1__*) ;
 int wm8994_base_regmap_config ;
 int wm8994_device_init (struct wm8994*,int ) ;
 int wm8994_of_match ;

__attribute__((used)) static int wm8994_i2c_probe(struct i2c_client *i2c,
          const struct i2c_device_id *id)
{
 const struct of_device_id *of_id;
 struct wm8994 *wm8994;
 int ret;

 wm8994 = devm_kzalloc(&i2c->dev, sizeof(struct wm8994), GFP_KERNEL);
 if (wm8994 == ((void*)0))
  return -ENOMEM;

 i2c_set_clientdata(i2c, wm8994);
 wm8994->dev = &i2c->dev;
 wm8994->irq = i2c->irq;

 if (i2c->dev.of_node) {
  of_id = of_match_device(wm8994_of_match, &i2c->dev);
  if (of_id)
   wm8994->type = (enum wm8994_type)of_id->data;
 } else {
  wm8994->type = id->driver_data;
 }

 wm8994->regmap = devm_regmap_init_i2c(i2c, &wm8994_base_regmap_config);
 if (IS_ERR(wm8994->regmap)) {
  ret = PTR_ERR(wm8994->regmap);
  dev_err(wm8994->dev, "Failed to allocate register map: %d\n",
   ret);
  return ret;
 }

 return wm8994_device_init(wm8994, i2c->irq);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct wm831x_pdata {int dummy; } ;
struct wm831x {int type; int pdata; TYPE_1__* dev; int regmap; } ;
struct of_device_id {scalar_t__ data; } ;
struct i2c_device_id {scalar_t__ driver_data; } ;
struct TYPE_5__ {scalar_t__ of_node; } ;
struct i2c_client {int irq; TYPE_1__ dev; } ;
typedef enum wm831x_parent { ____Placeholder_wm831x_parent } wm831x_parent ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (TYPE_1__*,char*,...) ;
 struct wm831x_pdata* dev_get_platdata (TYPE_1__*) ;
 struct wm831x* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int i2c_set_clientdata (struct i2c_client*,struct wm831x*) ;
 int memcpy (int *,struct wm831x_pdata*,int) ;
 struct of_device_id* of_match_device (int ,TYPE_1__*) ;
 int wm831x_device_init (struct wm831x*,int ) ;
 int wm831x_of_match ;
 int wm831x_regmap_config ;

__attribute__((used)) static int wm831x_i2c_probe(struct i2c_client *i2c,
       const struct i2c_device_id *id)
{
 struct wm831x_pdata *pdata = dev_get_platdata(&i2c->dev);
 const struct of_device_id *of_id;
 struct wm831x *wm831x;
 enum wm831x_parent type;
 int ret;

 if (i2c->dev.of_node) {
  of_id = of_match_device(wm831x_of_match, &i2c->dev);
  if (!of_id) {
   dev_err(&i2c->dev, "Failed to match device\n");
   return -ENODEV;
  }
  type = (enum wm831x_parent)of_id->data;
 } else {
  type = (enum wm831x_parent)id->driver_data;
 }

 wm831x = devm_kzalloc(&i2c->dev, sizeof(struct wm831x), GFP_KERNEL);
 if (wm831x == ((void*)0))
  return -ENOMEM;

 i2c_set_clientdata(i2c, wm831x);
 wm831x->dev = &i2c->dev;
 wm831x->type = type;

 wm831x->regmap = devm_regmap_init_i2c(i2c, &wm831x_regmap_config);
 if (IS_ERR(wm831x->regmap)) {
  ret = PTR_ERR(wm831x->regmap);
  dev_err(wm831x->dev, "Failed to allocate register map: %d\n",
   ret);
  return ret;
 }

 if (pdata)
  memcpy(&wm831x->pdata, pdata, sizeof(*pdata));

 return wm831x_device_init(wm831x, i2c->irq);
}

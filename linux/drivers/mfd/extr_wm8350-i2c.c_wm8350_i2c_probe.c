
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8350_platform_data {int dummy; } ;
struct wm8350 {int * dev; int regmap; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int irq; int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*,int) ;
 struct wm8350_platform_data* dev_get_platdata (int *) ;
 struct wm8350* devm_kzalloc (int *,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int i2c_set_clientdata (struct i2c_client*,struct wm8350*) ;
 int wm8350_device_init (struct wm8350*,int ,struct wm8350_platform_data*) ;
 int wm8350_regmap ;

__attribute__((used)) static int wm8350_i2c_probe(struct i2c_client *i2c,
       const struct i2c_device_id *id)
{
 struct wm8350 *wm8350;
 struct wm8350_platform_data *pdata = dev_get_platdata(&i2c->dev);
 int ret = 0;

 wm8350 = devm_kzalloc(&i2c->dev, sizeof(struct wm8350), GFP_KERNEL);
 if (wm8350 == ((void*)0))
  return -ENOMEM;

 wm8350->regmap = devm_regmap_init_i2c(i2c, &wm8350_regmap);
 if (IS_ERR(wm8350->regmap)) {
  ret = PTR_ERR(wm8350->regmap);
  dev_err(&i2c->dev, "Failed to allocate register map: %d\n",
   ret);
  return ret;
 }

 i2c_set_clientdata(i2c, wm8350);
 wm8350->dev = &i2c->dev;

 return wm8350_device_init(wm8350, i2c->irq, pdata);
}

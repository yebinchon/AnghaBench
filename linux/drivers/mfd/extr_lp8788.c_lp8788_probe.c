
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lp8788_platform_data {int dummy; } ;
struct lp8788 {int * dev; struct lp8788_platform_data* pdata; int regmap; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int irq; int dev; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*,int) ;
 struct lp8788_platform_data* dev_get_platdata (int *) ;
 struct lp8788* devm_kzalloc (int *,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int i2c_set_clientdata (struct i2c_client*,struct lp8788*) ;
 int lp8788_devs ;
 int lp8788_irq_init (struct lp8788*,int ) ;
 int lp8788_platform_init (struct lp8788*) ;
 int lp8788_regmap_config ;
 int mfd_add_devices (int *,int,int ,int ,int *,int ,int *) ;

__attribute__((used)) static int lp8788_probe(struct i2c_client *cl, const struct i2c_device_id *id)
{
 struct lp8788 *lp;
 struct lp8788_platform_data *pdata = dev_get_platdata(&cl->dev);
 int ret;

 lp = devm_kzalloc(&cl->dev, sizeof(struct lp8788), GFP_KERNEL);
 if (!lp)
  return -ENOMEM;

 lp->regmap = devm_regmap_init_i2c(cl, &lp8788_regmap_config);
 if (IS_ERR(lp->regmap)) {
  ret = PTR_ERR(lp->regmap);
  dev_err(&cl->dev, "regmap init i2c err: %d\n", ret);
  return ret;
 }

 lp->pdata = pdata;
 lp->dev = &cl->dev;
 i2c_set_clientdata(cl, lp);

 ret = lp8788_platform_init(lp);
 if (ret)
  return ret;

 ret = lp8788_irq_init(lp, cl->irq);
 if (ret)
  return ret;

 return mfd_add_devices(lp->dev, -1, lp8788_devs,
          ARRAY_SIZE(lp8788_devs), ((void*)0), 0, ((void*)0));
}

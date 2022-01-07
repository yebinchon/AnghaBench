
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct qca8k_priv {TYPE_1__* ds; int reg_mutex; int ops; scalar_t__ reset_gpio; int * dev; int bus; } ;
struct mdio_device {int dev; int bus; } ;
struct TYPE_3__ {int * ops; struct qca8k_priv* priv; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_ASIS ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int PTR_ERR (scalar_t__) ;
 int QCA8K_ID_QCA8337 ;
 int QCA8K_MASK_CTRL_ID_M ;
 int QCA8K_MASK_CTRL_ID_S ;
 int QCA8K_NUM_PORTS ;
 int QCA8K_REG_MASK_CTRL ;
 int dev_set_drvdata (int *,struct qca8k_priv*) ;
 scalar_t__ devm_gpiod_get_optional (int *,char*,int ) ;
 struct qca8k_priv* devm_kzalloc (int *,int,int ) ;
 int dsa_register_switch (TYPE_1__*) ;
 TYPE_1__* dsa_switch_alloc (int *,int ) ;
 int gpiod_set_value_cansleep (scalar_t__,int) ;
 int msleep (int) ;
 int mutex_init (int *) ;
 int qca8k_read (struct qca8k_priv*,int ) ;
 int qca8k_switch_ops ;

__attribute__((used)) static int
qca8k_sw_probe(struct mdio_device *mdiodev)
{
 struct qca8k_priv *priv;
 u32 id;




 priv = devm_kzalloc(&mdiodev->dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->bus = mdiodev->bus;
 priv->dev = &mdiodev->dev;

 priv->reset_gpio = devm_gpiod_get_optional(priv->dev, "reset",
         GPIOD_ASIS);
 if (IS_ERR(priv->reset_gpio))
  return PTR_ERR(priv->reset_gpio);

 if (priv->reset_gpio) {
  gpiod_set_value_cansleep(priv->reset_gpio, 1);



  msleep(20);
  gpiod_set_value_cansleep(priv->reset_gpio, 0);
 }


 id = qca8k_read(priv, QCA8K_REG_MASK_CTRL);
 id >>= QCA8K_MASK_CTRL_ID_S;
 id &= QCA8K_MASK_CTRL_ID_M;
 if (id != QCA8K_ID_QCA8337)
  return -ENODEV;

 priv->ds = dsa_switch_alloc(&mdiodev->dev, QCA8K_NUM_PORTS);
 if (!priv->ds)
  return -ENOMEM;

 priv->ds->priv = priv;
 priv->ops = qca8k_switch_ops;
 priv->ds->ops = &priv->ops;
 mutex_init(&priv->reg_mutex);
 dev_set_drvdata(&mdiodev->dev, priv);

 return dsa_register_switch(priv->ds);
}

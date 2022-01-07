
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {int of_node; } ;
struct spi_device {int bits_per_word; struct device dev; } ;
struct sja1105_tagger_data {int meta_lock; int rxtstamp_work; int skb_rxtstamp_queue; } ;
struct sja1105_private {struct dsa_switch* ds; int mgmt_lock; struct sja1105_port* ports; struct sja1105_tagger_data tagger_data; TYPE_2__* info; struct spi_device* spidev; int reset_gpio; } ;
struct sja1105_port {struct sja1105_tagger_data* data; TYPE_1__* dp; } ;
struct dsa_switch {TYPE_1__* ports; struct sja1105_private* priv; int * ops; } ;
struct TYPE_4__ {int name; } ;
struct TYPE_3__ {struct sja1105_port* priv; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_OUT_HIGH ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (int ) ;
 int SJA1105_NUM_PORTS ;
 int dev_dbg (struct device*,char*) ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*,int ) ;
 int devm_gpiod_get (struct device*,char*,int ) ;
 struct sja1105_private* devm_kzalloc (struct device*,int,int ) ;
 int dsa_register_switch (struct dsa_switch*) ;
 struct dsa_switch* dsa_switch_alloc (struct device*,int) ;
 int mutex_init (int *) ;
 TYPE_2__* of_device_get_match_data (struct device*) ;
 int sja1105_check_device_id (struct sja1105_private*) ;
 int sja1105_hw_reset (int ,int,int) ;
 int sja1105_rxtstamp_work ;
 int sja1105_switch_ops ;
 int sja1105_tas_setup (struct dsa_switch*) ;
 int skb_queue_head_init (int *) ;
 int spi_set_drvdata (struct spi_device*,struct sja1105_private*) ;
 int spi_setup (struct spi_device*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int sja1105_probe(struct spi_device *spi)
{
 struct sja1105_tagger_data *tagger_data;
 struct device *dev = &spi->dev;
 struct sja1105_private *priv;
 struct dsa_switch *ds;
 int rc, i;

 if (!dev->of_node) {
  dev_err(dev, "No DTS bindings for SJA1105 driver\n");
  return -EINVAL;
 }

 priv = devm_kzalloc(dev, sizeof(struct sja1105_private), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;


 priv->reset_gpio = devm_gpiod_get(dev, "reset", GPIOD_OUT_HIGH);
 if (IS_ERR(priv->reset_gpio))
  dev_dbg(dev, "reset-gpios not defined, ignoring\n");
 else
  sja1105_hw_reset(priv->reset_gpio, 1, 1);




 priv->spidev = spi;
 spi_set_drvdata(spi, priv);


 spi->bits_per_word = 8;
 rc = spi_setup(spi);
 if (rc < 0) {
  dev_err(dev, "Could not init SPI\n");
  return rc;
 }

 priv->info = of_device_get_match_data(dev);


 rc = sja1105_check_device_id(priv);
 if (rc < 0) {
  dev_err(dev, "Device ID check failed: %d\n", rc);
  return rc;
 }

 dev_info(dev, "Probed switch chip: %s\n", priv->info->name);

 ds = dsa_switch_alloc(dev, SJA1105_NUM_PORTS);
 if (!ds)
  return -ENOMEM;

 ds->ops = &sja1105_switch_ops;
 ds->priv = priv;
 priv->ds = ds;

 tagger_data = &priv->tagger_data;
 skb_queue_head_init(&tagger_data->skb_rxtstamp_queue);
 INIT_WORK(&tagger_data->rxtstamp_work, sja1105_rxtstamp_work);
 spin_lock_init(&tagger_data->meta_lock);


 for (i = 0; i < SJA1105_NUM_PORTS; i++) {
  struct sja1105_port *sp = &priv->ports[i];

  ds->ports[i].priv = sp;
  sp->dp = &ds->ports[i];
  sp->data = tagger_data;
 }
 mutex_init(&priv->mgmt_lock);

 sja1105_tas_setup(ds);

 return dsa_register_switch(priv->ds);
}

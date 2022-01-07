
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct spi_device {int irq; int dev; } ;
struct ieee802154_hw {TYPE_1__* phy; int * parent; struct at86rf230_local* priv; } ;
struct at86rf230_local {int slp_tr; struct ieee802154_hw* hw; int state_complete; int tx; int state; int regmap; struct spi_device* spi; } ;
struct TYPE_2__ {int perm_extended_addr; } ;


 int EINVAL ;
 int ENOMEM ;
 int GPIOF_OUT_INIT_HIGH ;
 int GPIOF_OUT_INIT_LOW ;
 int IRQF_SHARED ;
 int IRQF_TRIGGER_HIGH ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int RG_IRQ_STATUS ;
 int at86rf230_debugfs_init (struct at86rf230_local*) ;
 int at86rf230_debugfs_remove () ;
 int at86rf230_detect_device (struct at86rf230_local*) ;
 int at86rf230_get_pdata (struct spi_device*,int*,int*,int *) ;
 int at86rf230_hw_init (struct at86rf230_local*,int ) ;
 int at86rf230_isr ;
 int at86rf230_ops ;
 int at86rf230_read_subreg (struct at86rf230_local*,int ,int,int ,unsigned int*) ;
 int at86rf230_regmap_spi_config ;
 int at86rf230_setup_spi_messages (struct at86rf230_local*,int *) ;
 int at86rf230_sleep (struct at86rf230_local*) ;
 int dev_err (int *,char*,...) ;
 int dev_name (int *) ;
 int devm_gpio_request_one (int *,int,int ,char*) ;
 int devm_regmap_init_spi (struct spi_device*,int *) ;
 int devm_request_irq (int *,int ,int ,int,int ,struct at86rf230_local*) ;
 int disable_irq (int ) ;
 scalar_t__ gpio_is_valid (int) ;
 int gpio_set_value_cansleep (int,int) ;
 struct ieee802154_hw* ieee802154_alloc_hw (int,int *) ;
 int ieee802154_free_hw (struct ieee802154_hw*) ;
 int ieee802154_random_extended_addr (int *) ;
 int ieee802154_register_hw (struct ieee802154_hw*) ;
 int init_completion (int *) ;
 int irq_get_trigger_type (int ) ;
 int spi_set_drvdata (struct spi_device*,struct at86rf230_local*) ;
 int udelay (int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int at86rf230_probe(struct spi_device *spi)
{
 struct ieee802154_hw *hw;
 struct at86rf230_local *lp;
 unsigned int status;
 int rc, irq_type, rstn, slp_tr;
 u8 xtal_trim = 0;

 if (!spi->irq) {
  dev_err(&spi->dev, "no IRQ specified\n");
  return -EINVAL;
 }

 rc = at86rf230_get_pdata(spi, &rstn, &slp_tr, &xtal_trim);
 if (rc < 0) {
  dev_err(&spi->dev, "failed to parse platform_data: %d\n", rc);
  return rc;
 }

 if (gpio_is_valid(rstn)) {
  rc = devm_gpio_request_one(&spi->dev, rstn,
        GPIOF_OUT_INIT_HIGH, "rstn");
  if (rc)
   return rc;
 }

 if (gpio_is_valid(slp_tr)) {
  rc = devm_gpio_request_one(&spi->dev, slp_tr,
        GPIOF_OUT_INIT_LOW, "slp_tr");
  if (rc)
   return rc;
 }


 if (gpio_is_valid(rstn)) {
  udelay(1);
  gpio_set_value_cansleep(rstn, 0);
  udelay(1);
  gpio_set_value_cansleep(rstn, 1);
  usleep_range(120, 240);
 }

 hw = ieee802154_alloc_hw(sizeof(*lp), &at86rf230_ops);
 if (!hw)
  return -ENOMEM;

 lp = hw->priv;
 lp->hw = hw;
 lp->spi = spi;
 lp->slp_tr = slp_tr;
 hw->parent = &spi->dev;
 ieee802154_random_extended_addr(&hw->phy->perm_extended_addr);

 lp->regmap = devm_regmap_init_spi(spi, &at86rf230_regmap_spi_config);
 if (IS_ERR(lp->regmap)) {
  rc = PTR_ERR(lp->regmap);
  dev_err(&spi->dev, "Failed to allocate register map: %d\n",
   rc);
  goto free_dev;
 }

 at86rf230_setup_spi_messages(lp, &lp->state);
 at86rf230_setup_spi_messages(lp, &lp->tx);

 rc = at86rf230_detect_device(lp);
 if (rc < 0)
  goto free_dev;

 init_completion(&lp->state_complete);

 spi_set_drvdata(spi, lp);

 rc = at86rf230_hw_init(lp, xtal_trim);
 if (rc)
  goto free_dev;


 rc = at86rf230_read_subreg(lp, RG_IRQ_STATUS, 0xff, 0, &status);
 if (rc)
  goto free_dev;

 irq_type = irq_get_trigger_type(spi->irq);
 if (!irq_type)
  irq_type = IRQF_TRIGGER_HIGH;

 rc = devm_request_irq(&spi->dev, spi->irq, at86rf230_isr,
         IRQF_SHARED | irq_type, dev_name(&spi->dev), lp);
 if (rc)
  goto free_dev;


 disable_irq(spi->irq);


 at86rf230_sleep(lp);

 at86rf230_debugfs_init(lp);

 rc = ieee802154_register_hw(lp->hw);
 if (rc)
  goto free_debugfs;

 return rc;

free_debugfs:
 at86rf230_debugfs_remove();
free_dev:
 ieee802154_free_hw(lp->hw);

 return rc;
}

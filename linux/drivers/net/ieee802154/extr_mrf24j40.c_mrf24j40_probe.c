
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct spi_device {scalar_t__ max_speed_hz; int dev; int irq; } ;
struct mrf24j40 {struct ieee802154_hw* hw; int regmap_long; int regmap_short; struct spi_device* spi; } ;
struct ieee802154_hw {int flags; TYPE_2__* phy; int * parent; struct mrf24j40* priv; } ;
struct TYPE_3__ {int * channels; } ;
struct TYPE_4__ {int flags; TYPE_1__ supported; } ;


 int CHANNEL_MASK ;
 int EINVAL ;
 int ENOMEM ;
 int IEEE802154_HW_AFILT ;
 int IEEE802154_HW_CSMA_PARAMS ;
 int IEEE802154_HW_PROMISCUOUS ;
 int IEEE802154_HW_TX_OMIT_CKSUM ;
 int IRQF_TRIGGER_LOW ;
 scalar_t__ IS_ERR (int ) ;
 scalar_t__ MAX_SPI_SPEED_HZ ;
 int PTR_ERR (int ) ;
 int WPAN_PHY_FLAG_CCA_ED_LEVEL ;
 int WPAN_PHY_FLAG_CCA_MODE ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*,...) ;
 int dev_info (int *,char*,int ) ;
 int dev_name (int *) ;
 int dev_warn (int *,char*,scalar_t__) ;
 int devm_regmap_init (int *,int *,struct spi_device*,int *) ;
 int devm_regmap_init_spi (struct spi_device*,int *) ;
 int devm_request_irq (int *,int ,int ,int,int ,struct mrf24j40*) ;
 struct ieee802154_hw* ieee802154_alloc_hw (int,int *) ;
 int ieee802154_free_hw (struct ieee802154_hw*) ;
 int ieee802154_register_hw (struct ieee802154_hw*) ;
 int irq_get_trigger_type (int ) ;
 int mrf24j40_hw_init (struct mrf24j40*) ;
 int mrf24j40_isr ;
 int mrf24j40_long_regmap ;
 int mrf24j40_long_regmap_bus ;
 int mrf24j40_ops ;
 int mrf24j40_phy_setup (struct mrf24j40*) ;
 int mrf24j40_setup_irq_spi_messages (struct mrf24j40*) ;
 int mrf24j40_setup_rx_spi_messages (struct mrf24j40*) ;
 int mrf24j40_setup_tx_spi_messages (struct mrf24j40*) ;
 int mrf24j40_short_regmap ;
 int printdev (struct mrf24j40*) ;
 int spi_set_drvdata (struct spi_device*,struct mrf24j40*) ;

__attribute__((used)) static int mrf24j40_probe(struct spi_device *spi)
{
 int ret = -ENOMEM, irq_type;
 struct ieee802154_hw *hw;
 struct mrf24j40 *devrec;

 dev_info(&spi->dev, "probe(). IRQ: %d\n", spi->irq);



 hw = ieee802154_alloc_hw(sizeof(*devrec), &mrf24j40_ops);
 if (!hw)
  goto err_ret;

 devrec = hw->priv;
 devrec->spi = spi;
 spi_set_drvdata(spi, devrec);
 devrec->hw = hw;
 devrec->hw->parent = &spi->dev;
 devrec->hw->phy->supported.channels[0] = CHANNEL_MASK;
 devrec->hw->flags = IEEE802154_HW_TX_OMIT_CKSUM | IEEE802154_HW_AFILT |
       IEEE802154_HW_CSMA_PARAMS |
       IEEE802154_HW_PROMISCUOUS;

 devrec->hw->phy->flags = WPAN_PHY_FLAG_CCA_MODE |
     WPAN_PHY_FLAG_CCA_ED_LEVEL;

 mrf24j40_setup_tx_spi_messages(devrec);
 mrf24j40_setup_rx_spi_messages(devrec);
 mrf24j40_setup_irq_spi_messages(devrec);

 devrec->regmap_short = devm_regmap_init_spi(spi,
          &mrf24j40_short_regmap);
 if (IS_ERR(devrec->regmap_short)) {
  ret = PTR_ERR(devrec->regmap_short);
  dev_err(&spi->dev, "Failed to allocate short register map: %d\n",
   ret);
  goto err_register_device;
 }

 devrec->regmap_long = devm_regmap_init(&spi->dev,
            &mrf24j40_long_regmap_bus,
            spi, &mrf24j40_long_regmap);
 if (IS_ERR(devrec->regmap_long)) {
  ret = PTR_ERR(devrec->regmap_long);
  dev_err(&spi->dev, "Failed to allocate long register map: %d\n",
   ret);
  goto err_register_device;
 }

 if (spi->max_speed_hz > MAX_SPI_SPEED_HZ) {
  dev_warn(&spi->dev, "spi clock above possible maximum: %d",
    MAX_SPI_SPEED_HZ);
  ret = -EINVAL;
  goto err_register_device;
 }

 ret = mrf24j40_hw_init(devrec);
 if (ret)
  goto err_register_device;

 mrf24j40_phy_setup(devrec);


 irq_type = irq_get_trigger_type(spi->irq);
 if (!irq_type)
  irq_type = IRQF_TRIGGER_LOW;

 ret = devm_request_irq(&spi->dev, spi->irq, mrf24j40_isr,
          irq_type, dev_name(&spi->dev), devrec);
 if (ret) {
  dev_err(printdev(devrec), "Unable to get IRQ");
  goto err_register_device;
 }

 dev_dbg(printdev(devrec), "registered mrf24j40\n");
 ret = ieee802154_register_hw(devrec->hw);
 if (ret)
  goto err_register_device;

 return 0;

err_register_device:
 ieee802154_free_hw(devrec->hw);
err_ret:
 return ret;
}

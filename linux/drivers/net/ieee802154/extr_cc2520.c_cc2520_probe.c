
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dev; } ;
struct cc2520_private {int amplified; int fifop_irqwork; int buffer_mutex; int tx_complete; int lock; void* buf; struct spi_device* spi; } ;
struct cc2520_platform_data {int sfd; int fifop; int reset; int vreg; int cca; int fifo; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOF_IN ;
 int GPIOF_OUT_INIT_LOW ;
 int HIGH ;
 int INIT_WORK (int *,int ) ;
 int IRQF_TRIGGER_FALLING ;
 int IRQF_TRIGGER_RISING ;
 int SPI_COMMAND_BUFFER ;
 int cc2520_fifop_irqwork ;
 int cc2520_fifop_isr ;
 int cc2520_get_platform_data (struct spi_device*,struct cc2520_platform_data*) ;
 int cc2520_hw_init (struct cc2520_private*) ;
 int cc2520_register (struct cc2520_private*) ;
 int cc2520_sfd_isr ;
 int dev_err (int *,char*) ;
 int dev_name (int *) ;
 int devm_gpio_request_one (int *,int ,int ,char*) ;
 void* devm_kzalloc (int *,int,int ) ;
 int devm_request_irq (int *,int ,int ,int ,int ,struct cc2520_private*) ;
 int flush_work (int *) ;
 int gpio_is_valid (int ) ;
 int gpio_set_value (int ,int ) ;
 int gpio_to_irq (int ) ;
 int init_completion (int *) ;
 int mutex_destroy (int *) ;
 int mutex_init (int *) ;
 int spi_set_drvdata (struct spi_device*,struct cc2520_private*) ;
 int spin_lock_init (int *) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int cc2520_probe(struct spi_device *spi)
{
 struct cc2520_private *priv;
 struct cc2520_platform_data pdata;
 int ret;

 priv = devm_kzalloc(&spi->dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 spi_set_drvdata(spi, priv);

 ret = cc2520_get_platform_data(spi, &pdata);
 if (ret < 0) {
  dev_err(&spi->dev, "no platform data\n");
  return -EINVAL;
 }

 priv->spi = spi;

 priv->buf = devm_kzalloc(&spi->dev,
     SPI_COMMAND_BUFFER, GFP_KERNEL);
 if (!priv->buf)
  return -ENOMEM;

 mutex_init(&priv->buffer_mutex);
 INIT_WORK(&priv->fifop_irqwork, cc2520_fifop_irqwork);
 spin_lock_init(&priv->lock);
 init_completion(&priv->tx_complete);


 priv->amplified = 0;


 if (!gpio_is_valid(pdata.fifo)) {
  dev_err(&spi->dev, "fifo gpio is not valid\n");
  ret = -EINVAL;
  goto err_hw_init;
 }

 ret = devm_gpio_request_one(&spi->dev, pdata.fifo,
        GPIOF_IN, "fifo");
 if (ret)
  goto err_hw_init;

 if (!gpio_is_valid(pdata.cca)) {
  dev_err(&spi->dev, "cca gpio is not valid\n");
  ret = -EINVAL;
  goto err_hw_init;
 }

 ret = devm_gpio_request_one(&spi->dev, pdata.cca,
        GPIOF_IN, "cca");
 if (ret)
  goto err_hw_init;

 if (!gpio_is_valid(pdata.fifop)) {
  dev_err(&spi->dev, "fifop gpio is not valid\n");
  ret = -EINVAL;
  goto err_hw_init;
 }

 ret = devm_gpio_request_one(&spi->dev, pdata.fifop,
        GPIOF_IN, "fifop");
 if (ret)
  goto err_hw_init;

 if (!gpio_is_valid(pdata.sfd)) {
  dev_err(&spi->dev, "sfd gpio is not valid\n");
  ret = -EINVAL;
  goto err_hw_init;
 }

 ret = devm_gpio_request_one(&spi->dev, pdata.sfd,
        GPIOF_IN, "sfd");
 if (ret)
  goto err_hw_init;

 if (!gpio_is_valid(pdata.reset)) {
  dev_err(&spi->dev, "reset gpio is not valid\n");
  ret = -EINVAL;
  goto err_hw_init;
 }

 ret = devm_gpio_request_one(&spi->dev, pdata.reset,
        GPIOF_OUT_INIT_LOW, "reset");
 if (ret)
  goto err_hw_init;

 if (!gpio_is_valid(pdata.vreg)) {
  dev_err(&spi->dev, "vreg gpio is not valid\n");
  ret = -EINVAL;
  goto err_hw_init;
 }

 ret = devm_gpio_request_one(&spi->dev, pdata.vreg,
        GPIOF_OUT_INIT_LOW, "vreg");
 if (ret)
  goto err_hw_init;

 gpio_set_value(pdata.vreg, HIGH);
 usleep_range(100, 150);

 gpio_set_value(pdata.reset, HIGH);
 usleep_range(200, 250);

 ret = cc2520_hw_init(priv);
 if (ret)
  goto err_hw_init;


 ret = devm_request_irq(&spi->dev,
          gpio_to_irq(pdata.fifop),
          cc2520_fifop_isr,
          IRQF_TRIGGER_RISING,
          dev_name(&spi->dev),
          priv);
 if (ret) {
  dev_err(&spi->dev, "could not get fifop irq\n");
  goto err_hw_init;
 }


 ret = devm_request_irq(&spi->dev,
          gpio_to_irq(pdata.sfd),
          cc2520_sfd_isr,
          IRQF_TRIGGER_FALLING,
          dev_name(&spi->dev),
          priv);
 if (ret) {
  dev_err(&spi->dev, "could not get sfd irq\n");
  goto err_hw_init;
 }

 ret = cc2520_register(priv);
 if (ret)
  goto err_hw_init;

 return 0;

err_hw_init:
 mutex_destroy(&priv->buffer_mutex);
 flush_work(&priv->fifop_irqwork);
 return ret;
}

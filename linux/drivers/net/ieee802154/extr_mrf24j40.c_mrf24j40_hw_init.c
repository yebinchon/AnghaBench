
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct mrf24j40 {int regmap_long; TYPE_2__* spi; int regmap_short; } ;
struct TYPE_4__ {int dev; int irq; } ;
struct TYPE_3__ {scalar_t__ driver_data; } ;


 int BIT_INTEDGE ;
 int IRQ_TYPE_EDGE_FALLING ;


 scalar_t__ MRF24J40MC ;
 int REG_BBREG2 ;
 int REG_BBREG6 ;
 int REG_CCAEDTH ;
 int REG_GPIO ;
 int REG_PACON2 ;
 int REG_RFCON0 ;
 int REG_RFCON1 ;
 int REG_RFCON2 ;
 int REG_RFCON3 ;
 int REG_RFCON6 ;
 int REG_RFCON7 ;
 int REG_RFCON8 ;
 int REG_RFCTL ;
 int REG_RXMCR ;
 int REG_SLPCON0 ;
 int REG_SLPCON1 ;
 int REG_SOFTRST ;
 int REG_TESTMODE ;
 int REG_TRISGPIO ;
 int REG_TXSTBL ;
 int dev_warn (int *,char*) ;
 int irq_get_trigger_type (int ) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int regmap_write (int ,int ,int) ;
 TYPE_1__* spi_get_device_id (TYPE_2__*) ;
 int udelay (int) ;

__attribute__((used)) static int mrf24j40_hw_init(struct mrf24j40 *devrec)
{
 u32 irq_type;
 int ret;



 ret = regmap_write(devrec->regmap_short, REG_SOFTRST, 0x07);
 if (ret)
  goto err_ret;

 ret = regmap_write(devrec->regmap_short, REG_PACON2, 0x98);
 if (ret)
  goto err_ret;

 ret = regmap_write(devrec->regmap_short, REG_TXSTBL, 0x95);
 if (ret)
  goto err_ret;

 ret = regmap_write(devrec->regmap_long, REG_RFCON0, 0x03);
 if (ret)
  goto err_ret;

 ret = regmap_write(devrec->regmap_long, REG_RFCON1, 0x01);
 if (ret)
  goto err_ret;

 ret = regmap_write(devrec->regmap_long, REG_RFCON2, 0x80);
 if (ret)
  goto err_ret;

 ret = regmap_write(devrec->regmap_long, REG_RFCON6, 0x90);
 if (ret)
  goto err_ret;

 ret = regmap_write(devrec->regmap_long, REG_RFCON7, 0x80);
 if (ret)
  goto err_ret;

 ret = regmap_write(devrec->regmap_long, REG_RFCON8, 0x10);
 if (ret)
  goto err_ret;

 ret = regmap_write(devrec->regmap_long, REG_SLPCON1, 0x21);
 if (ret)
  goto err_ret;

 ret = regmap_write(devrec->regmap_short, REG_BBREG2, 0x80);
 if (ret)
  goto err_ret;

 ret = regmap_write(devrec->regmap_short, REG_CCAEDTH, 0x60);
 if (ret)
  goto err_ret;

 ret = regmap_write(devrec->regmap_short, REG_BBREG6, 0x40);
 if (ret)
  goto err_ret;

 ret = regmap_write(devrec->regmap_short, REG_RFCTL, 0x04);
 if (ret)
  goto err_ret;

 ret = regmap_write(devrec->regmap_short, REG_RFCTL, 0x0);
 if (ret)
  goto err_ret;

 udelay(192);


 ret = regmap_update_bits(devrec->regmap_short, REG_RXMCR, 0x03, 0x00);
 if (ret)
  goto err_ret;

 if (spi_get_device_id(devrec->spi)->driver_data == MRF24J40MC) {



  regmap_update_bits(devrec->regmap_long, REG_TESTMODE, 0x07,
       0x07);


  regmap_update_bits(devrec->regmap_short, REG_TRISGPIO, 0x08,
       0x08);


  regmap_update_bits(devrec->regmap_short, REG_GPIO, 0x08, 0x08);




  regmap_write(devrec->regmap_long, REG_RFCON3, 0x28);
 }

 irq_type = irq_get_trigger_type(devrec->spi->irq);
 if (irq_type == 129 ||
     irq_type == IRQ_TYPE_EDGE_FALLING)
  dev_warn(&devrec->spi->dev,
    "Using edge triggered irq's are not recommended, because it can cause races and result in a non-functional driver!\n");
 switch (irq_type) {
 case 129:
 case 128:

  ret = regmap_update_bits(devrec->regmap_long, REG_SLPCON0,
      BIT_INTEDGE, BIT_INTEDGE);
  if (ret)
   goto err_ret;
  break;
 default:

  break;
 }

 return 0;

err_ret:
 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int freq; } ;
struct TYPE_4__ {TYPE_1__ clock; } ;
struct sja1000_priv {int ocr; int cdr; TYPE_2__ can; int write_reg; int read_reg; } ;
struct device_node {int dummy; } ;


 int CDR_CBP ;
 int CDR_CLKOUT_MASK ;
 int CDR_CLK_OFF ;
 int OCR_MODE_MASK ;
 int OCR_MODE_NORMAL ;
 int OCR_TX0_PULLDOWN ;
 int OCR_TX_MASK ;
 int OCR_TX_SHIFT ;
 int SP_CAN_CLOCK ;
 int of_property_read_bool (struct device_node*,char*) ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;
 int sp_read_reg16 ;
 int sp_read_reg32 ;
 int sp_read_reg8 ;
 int sp_write_reg16 ;
 int sp_write_reg32 ;
 int sp_write_reg8 ;

__attribute__((used)) static void sp_populate_of(struct sja1000_priv *priv, struct device_node *of)
{
 int err;
 u32 prop;

 err = of_property_read_u32(of, "reg-io-width", &prop);
 if (err)
  prop = 1;

 switch (prop) {
 case 4:
  priv->read_reg = sp_read_reg32;
  priv->write_reg = sp_write_reg32;
  break;
 case 2:
  priv->read_reg = sp_read_reg16;
  priv->write_reg = sp_write_reg16;
  break;
 case 1:
 default:
  priv->read_reg = sp_read_reg8;
  priv->write_reg = sp_write_reg8;
 }

 err = of_property_read_u32(of, "nxp,external-clock-frequency", &prop);
 if (!err)
  priv->can.clock.freq = prop / 2;
 else
  priv->can.clock.freq = SP_CAN_CLOCK;

 err = of_property_read_u32(of, "nxp,tx-output-mode", &prop);
 if (!err)
  priv->ocr |= prop & OCR_MODE_MASK;
 else
  priv->ocr |= OCR_MODE_NORMAL;

 err = of_property_read_u32(of, "nxp,tx-output-config", &prop);
 if (!err)
  priv->ocr |= (prop << OCR_TX_SHIFT) & OCR_TX_MASK;
 else
  priv->ocr |= OCR_TX0_PULLDOWN;

 err = of_property_read_u32(of, "nxp,clock-out-frequency", &prop);
 if (!err && prop) {
  u32 divider = priv->can.clock.freq * 2 / prop;

  if (divider > 1)
   priv->cdr |= divider / 2 - 1;
  else
   priv->cdr |= CDR_CLKOUT_MASK;
 } else {
  priv->cdr |= CDR_CLK_OFF;
 }

 if (!of_property_read_bool(of, "nxp,no-comparator-bypass"))
  priv->cdr |= CDR_CBP;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sja1000_priv {int cdr; int ocr; int (* write_reg ) (struct sja1000_priv*,int ,int) ;} ;
struct net_device {int dummy; } ;


 int CDR_PELICAN ;
 int OCR_MODE_NORMAL ;
 int SJA1000_ACCC0 ;
 int SJA1000_ACCC1 ;
 int SJA1000_ACCC2 ;
 int SJA1000_ACCC3 ;
 int SJA1000_ACCM0 ;
 int SJA1000_ACCM1 ;
 int SJA1000_ACCM2 ;
 int SJA1000_ACCM3 ;
 int SJA1000_CDR ;
 int SJA1000_OCR ;
 struct sja1000_priv* netdev_priv (struct net_device*) ;
 int stub1 (struct sja1000_priv*,int ,int) ;
 int stub10 (struct sja1000_priv*,int ,int) ;
 int stub2 (struct sja1000_priv*,int ,int) ;
 int stub3 (struct sja1000_priv*,int ,int) ;
 int stub4 (struct sja1000_priv*,int ,int) ;
 int stub5 (struct sja1000_priv*,int ,int) ;
 int stub6 (struct sja1000_priv*,int ,int) ;
 int stub7 (struct sja1000_priv*,int ,int) ;
 int stub8 (struct sja1000_priv*,int ,int) ;
 int stub9 (struct sja1000_priv*,int ,int) ;

__attribute__((used)) static void chipset_init(struct net_device *dev)
{
 struct sja1000_priv *priv = netdev_priv(dev);


 priv->write_reg(priv, SJA1000_CDR, priv->cdr | CDR_PELICAN);


 priv->write_reg(priv, SJA1000_ACCC0, 0x00);
 priv->write_reg(priv, SJA1000_ACCC1, 0x00);
 priv->write_reg(priv, SJA1000_ACCC2, 0x00);
 priv->write_reg(priv, SJA1000_ACCC3, 0x00);

 priv->write_reg(priv, SJA1000_ACCM0, 0xFF);
 priv->write_reg(priv, SJA1000_ACCM1, 0xFF);
 priv->write_reg(priv, SJA1000_ACCM2, 0xFF);
 priv->write_reg(priv, SJA1000_ACCM3, 0xFF);

 priv->write_reg(priv, SJA1000_OCR, priv->ocr | OCR_MODE_NORMAL);
}

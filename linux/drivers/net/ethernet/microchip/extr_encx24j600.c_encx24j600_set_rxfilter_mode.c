
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct encx24j600_priv {int rxfilter; } ;


 int BCEN ;
 int CRCEN ;
 int ERXFCON ;
 int MACON1 ;
 int MCEN ;
 int NOTMEEN ;
 int PASSALL ;



 int UCEN ;
 int encx24j600_clr_bits (struct encx24j600_priv*,int ,int ) ;
 int encx24j600_set_bits (struct encx24j600_priv*,int ,int ) ;
 int encx24j600_write_reg (struct encx24j600_priv*,int ,int) ;

__attribute__((used)) static void encx24j600_set_rxfilter_mode(struct encx24j600_priv *priv)
{
 switch (priv->rxfilter) {
 case 128:
  encx24j600_set_bits(priv, MACON1, PASSALL);
  encx24j600_write_reg(priv, ERXFCON, UCEN | MCEN | NOTMEEN);
  break;
 case 130:
  encx24j600_clr_bits(priv, MACON1, PASSALL);
  encx24j600_write_reg(priv, ERXFCON, UCEN | CRCEN | BCEN | MCEN);
  break;
 case 129:
 default:
  encx24j600_clr_bits(priv, MACON1, PASSALL);
  encx24j600_write_reg(priv, ERXFCON, UCEN | CRCEN | BCEN);
  break;
 }
}

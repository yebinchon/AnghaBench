
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct encx24j600_priv {int dummy; } ;


 int ECON2 ;
 int TXRST ;
 int encx24j600_clr_bits (struct encx24j600_priv*,int ,int ) ;
 int encx24j600_set_bits (struct encx24j600_priv*,int ,int ) ;

__attribute__((used)) static void encx24j600_reset_hw_tx(struct encx24j600_priv *priv)
{
 encx24j600_set_bits(priv, ECON2, TXRST);
 encx24j600_clr_bits(priv, ECON2, TXRST);
}

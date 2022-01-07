
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct encx24j600_priv {int dummy; } ;


 int EGPWRPT ;
 int EIR ;
 int ENC_TX_BUF_START ;
 int TXABTIF ;
 int TXIF ;
 int encx24j600_clr_bits (struct encx24j600_priv*,int ,int) ;
 int encx24j600_reset_hw_tx (struct encx24j600_priv*) ;
 int encx24j600_write_reg (struct encx24j600_priv*,int ,int ) ;

__attribute__((used)) static void encx24j600_hw_init_tx(struct encx24j600_priv *priv)
{

 encx24j600_reset_hw_tx(priv);


 encx24j600_clr_bits(priv, EIR, TXIF | TXABTIF);


 encx24j600_write_reg(priv, EGPWRPT, ENC_TX_BUF_START);
}

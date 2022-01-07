
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct encx24j600_priv {scalar_t__ next_packet; } ;


 int DISABLERX ;
 scalar_t__ ENC_RX_BUF_START ;
 scalar_t__ ENC_SRAM_SIZE ;
 int ERXRDPT ;
 int ERXST ;
 int ERXTAIL ;
 int EUDAND ;
 int EUDAST ;
 int MAMXFL ;
 scalar_t__ MAX_FRAMELEN ;
 int encx24j600_cmd (struct encx24j600_priv*,int ) ;
 int encx24j600_write_reg (struct encx24j600_priv*,int ,scalar_t__) ;

__attribute__((used)) static void encx24j600_hw_init_rx(struct encx24j600_priv *priv)
{
 encx24j600_cmd(priv, DISABLERX);


 encx24j600_write_reg(priv, ERXST, ENC_RX_BUF_START);


 encx24j600_write_reg(priv, ERXRDPT, ENC_RX_BUF_START);

 priv->next_packet = ENC_RX_BUF_START;


 encx24j600_write_reg(priv, ERXTAIL, ENC_SRAM_SIZE - 2);


 encx24j600_write_reg(priv, EUDAST, ENC_SRAM_SIZE);
 encx24j600_write_reg(priv, EUDAND, ENC_SRAM_SIZE + 1);


 encx24j600_write_reg(priv, MAMXFL, MAX_FRAMELEN);
}

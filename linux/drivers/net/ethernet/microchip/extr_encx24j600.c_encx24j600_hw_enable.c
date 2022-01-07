
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct encx24j600_priv {int hw_enabled; } ;


 int EIE ;
 int EIR ;
 int ENABLERX ;
 int INTIE ;
 int LINKIE ;
 int LINKIF ;
 int PCFULIE ;
 int PCFULIF ;
 int PKTIE ;
 int PKTIF ;
 int RXABTIE ;
 int RXABTIF ;
 int TXABTIE ;
 int TXABTIF ;
 int TXIE ;
 int TXIF ;
 int encx24j600_clr_bits (struct encx24j600_priv*,int ,int) ;
 int encx24j600_cmd (struct encx24j600_priv*,int ) ;
 int encx24j600_write_reg (struct encx24j600_priv*,int ,int) ;

__attribute__((used)) static void encx24j600_hw_enable(struct encx24j600_priv *priv)
{

 encx24j600_clr_bits(priv, EIR, (PCFULIF | RXABTIF | TXABTIF | TXIF |
     PKTIF | LINKIF));


 encx24j600_write_reg(priv, EIE, (PCFULIE | RXABTIE | TXABTIE | TXIE |
      PKTIE | LINKIE | INTIE));


 encx24j600_cmd(priv, ENABLERX);

 priv->hw_enabled = 1;
}

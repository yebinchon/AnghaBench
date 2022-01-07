
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct encx24j600_priv {int hw_enabled; } ;


 int DISABLERX ;
 int EIE ;
 int encx24j600_cmd (struct encx24j600_priv*,int ) ;
 int encx24j600_write_reg (struct encx24j600_priv*,int ,int ) ;

__attribute__((used)) static void encx24j600_hw_disable(struct encx24j600_priv *priv)
{

 encx24j600_write_reg(priv, EIE, 0);


 encx24j600_cmd(priv, DISABLERX);

 priv->hw_enabled = 0;
}

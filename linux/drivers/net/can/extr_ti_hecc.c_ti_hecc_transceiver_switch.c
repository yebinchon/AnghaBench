
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_hecc_priv {int reg_xceiver; } ;


 int regulator_disable (int ) ;
 int regulator_enable (int ) ;

__attribute__((used)) static int ti_hecc_transceiver_switch(const struct ti_hecc_priv *priv,
          int on)
{
 if (!priv->reg_xceiver)
  return 0;

 if (on)
  return regulator_enable(priv->reg_xceiver);
 else
  return regulator_disable(priv->reg_xceiver);
}

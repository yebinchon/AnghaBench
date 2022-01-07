
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sja1000_priv {int (* read_reg ) (struct sja1000_priv*,int ) ;} ;


 int SJA1000_MOD ;
 int stub1 (struct sja1000_priv*,int ) ;

__attribute__((used)) static int sja1000_is_absent(struct sja1000_priv *priv)
{
 return (priv->read_reg(priv, SJA1000_MOD) == 0xFF);
}

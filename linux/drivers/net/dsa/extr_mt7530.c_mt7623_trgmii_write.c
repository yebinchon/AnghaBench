
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt7530_priv {int dev; int ethernet; } ;


 int TRGMII_BASE (int ) ;
 int dev_err (int ,char*) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int
mt7623_trgmii_write(struct mt7530_priv *priv, u32 reg, u32 val)
{
 int ret;

 ret = regmap_write(priv->ethernet, TRGMII_BASE(reg), val);
 if (ret < 0)
  dev_err(priv->dev,
   "failed to priv write register\n");
 return ret;
}

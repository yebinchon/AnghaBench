
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt7530_priv {int dev; int ethernet; } ;


 int TRGMII_BASE (int) ;
 int dev_err (int ,char*) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static u32
mt7623_trgmii_read(struct mt7530_priv *priv, u32 reg)
{
 int ret;
 u32 val;

 ret = regmap_read(priv->ethernet, TRGMII_BASE(reg), &val);
 if (ret < 0) {
  dev_err(priv->dev,
   "failed to priv read register\n");
  return ret;
 }

 return val;
}

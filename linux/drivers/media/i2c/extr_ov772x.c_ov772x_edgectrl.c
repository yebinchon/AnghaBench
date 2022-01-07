
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct regmap {int dummy; } ;
struct ov772x_priv {TYPE_2__* info; struct regmap* regmap; } ;
struct TYPE_3__ {int strength; int threshold; int upper; int lower; } ;
struct TYPE_4__ {TYPE_1__ edgectrl; } ;


 int DSPAUTO ;
 int EDGE_ACTRL ;
 int EDGE_LOWER ;
 int EDGE_STRNGT ;
 int EDGE_TRSHLD ;
 int EDGE_UPPER ;
 int OV772X_EDGE_LOWER_MASK ;
 int OV772X_EDGE_STRENGTH_MASK ;
 int OV772X_EDGE_THRESHOLD_MASK ;
 int OV772X_EDGE_UPPER_MASK ;
 int OV772X_MANUAL_EDGE_CTRL ;
 int regmap_update_bits (struct regmap*,int ,int ,int) ;

__attribute__((used)) static int ov772x_edgectrl(struct ov772x_priv *priv)
{
 struct regmap *regmap = priv->regmap;
 int ret;

 if (!priv->info)
  return 0;

 if (priv->info->edgectrl.strength & OV772X_MANUAL_EDGE_CTRL) {







  ret = regmap_update_bits(regmap, DSPAUTO, EDGE_ACTRL, 0x00);
  if (ret < 0)
   return ret;

  ret = regmap_update_bits(regmap, EDGE_TRSHLD,
      OV772X_EDGE_THRESHOLD_MASK,
      priv->info->edgectrl.threshold);
  if (ret < 0)
   return ret;

  ret = regmap_update_bits(regmap, EDGE_STRNGT,
      OV772X_EDGE_STRENGTH_MASK,
      priv->info->edgectrl.strength);
  if (ret < 0)
   return ret;

 } else if (priv->info->edgectrl.upper > priv->info->edgectrl.lower) {





  ret = regmap_update_bits(regmap, EDGE_UPPER,
      OV772X_EDGE_UPPER_MASK,
      priv->info->edgectrl.upper);
  if (ret < 0)
   return ret;

  ret = regmap_update_bits(regmap, EDGE_LOWER,
      OV772X_EDGE_LOWER_MASK,
      priv->info->edgectrl.lower);
  if (ret < 0)
   return ret;
 }

 return 0;
}

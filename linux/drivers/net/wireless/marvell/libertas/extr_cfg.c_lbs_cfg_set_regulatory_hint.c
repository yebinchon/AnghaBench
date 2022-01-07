
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lbs_private {int regioncode; TYPE_1__* wdev; } ;
struct TYPE_2__ {int wiphy; } ;


 size_t ARRAY_SIZE (struct region_code_mapping const*) ;
 int regulatory_hint (int ,char const*) ;

__attribute__((used)) static void lbs_cfg_set_regulatory_hint(struct lbs_private *priv)
{
 struct region_code_mapping {
  const char *cn;
  int code;
 };


 static const struct region_code_mapping regmap[] = {
  {"US ", 0x10},
  {"CA ", 0x20},
  {"EU ", 0x30},
  {"ES ", 0x31},
  {"FR ", 0x32},
  {"JP ", 0x40},
 };
 size_t i;

 for (i = 0; i < ARRAY_SIZE(regmap); i++)
  if (regmap[i].code == priv->regioncode) {
   regulatory_hint(priv->wdev->wiphy, regmap[i].cn);
   break;
  }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct bcm_sf2_priv {int dummy; } ;


 int bcm_sf2_cfp_rule_del_one (struct bcm_sf2_priv*,int,scalar_t__,scalar_t__*) ;

__attribute__((used)) static int bcm_sf2_cfp_rule_remove(struct bcm_sf2_priv *priv, int port,
       u32 loc)
{
 u32 next_loc = 0;
 int ret;

 ret = bcm_sf2_cfp_rule_del_one(priv, port, loc, &next_loc);
 if (ret)
  return ret;


 if (next_loc)
  ret = bcm_sf2_cfp_rule_del_one(priv, port, next_loc, ((void*)0));

 return ret;
}

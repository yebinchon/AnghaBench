
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct dsa_switch {int dummy; } ;
struct TYPE_2__ {int gphy_rev; } ;
struct bcm_sf2_priv {TYPE_1__ hw_params; } ;


 struct bcm_sf2_priv* bcm_sf2_to_priv (struct dsa_switch*) ;

__attribute__((used)) static u32 bcm_sf2_sw_get_phy_flags(struct dsa_switch *ds, int port)
{
 struct bcm_sf2_priv *priv = bcm_sf2_to_priv(ds);






 return priv->hw_params.gphy_rev;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gbe_priv {int dummy; } ;


 int gbe_reset_mod_stats (struct gbe_priv*,int) ;
 int gbe_stats_mod_visible_ver14 (struct gbe_priv*,int) ;

__attribute__((used)) static void gbe_reset_mod_stats_ver14(struct gbe_priv *gbe_dev, int stats_mod)
{
 gbe_stats_mod_visible_ver14(gbe_dev, stats_mod);
 gbe_reset_mod_stats(gbe_dev, stats_mod);
}

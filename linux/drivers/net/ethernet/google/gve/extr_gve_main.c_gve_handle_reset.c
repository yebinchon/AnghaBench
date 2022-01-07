
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gve_priv {int dummy; } ;


 scalar_t__ gve_get_do_reset (struct gve_priv*) ;
 scalar_t__ gve_get_probe_in_progress (struct gve_priv*) ;
 int gve_reset (struct gve_priv*,int) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static void gve_handle_reset(struct gve_priv *priv)
{




 if (gve_get_probe_in_progress(priv))
  return;

 if (gve_get_do_reset(priv)) {
  rtnl_lock();
  gve_reset(priv, 0);
  rtnl_unlock();
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gve_priv {int dev; } ;


 int gve_close (int ) ;
 int gve_teardown_priv_resources (struct gve_priv*) ;
 int gve_trigger_reset (struct gve_priv*) ;

__attribute__((used)) static void gve_reset_and_teardown(struct gve_priv *priv, bool was_up)
{
 gve_trigger_reset(priv);

 if (was_up)
  gve_close(priv->dev);
 gve_teardown_priv_resources(priv);
}

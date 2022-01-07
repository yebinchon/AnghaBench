
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gve_priv {int dummy; } ;


 int gve_adminq_release (struct gve_priv*) ;

__attribute__((used)) static void gve_trigger_reset(struct gve_priv *priv)
{

 gve_adminq_release(priv);
}

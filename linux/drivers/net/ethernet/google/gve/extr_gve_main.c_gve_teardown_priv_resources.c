
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gve_priv {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int gve_adminq_free (int *,struct gve_priv*) ;
 int gve_teardown_device_resources (struct gve_priv*) ;

__attribute__((used)) static void gve_teardown_priv_resources(struct gve_priv *priv)
{
 gve_teardown_device_resources(priv);
 gve_adminq_free(&priv->pdev->dev, priv);
}

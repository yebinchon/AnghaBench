
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gve_priv {int adminq_bus_addr; int adminq; } ;
struct device {int dummy; } ;


 int PAGE_SIZE ;
 int dma_free_coherent (struct device*,int ,int ,int ) ;
 int gve_adminq_release (struct gve_priv*) ;
 int gve_clear_admin_queue_ok (struct gve_priv*) ;
 int gve_get_admin_queue_ok (struct gve_priv*) ;

void gve_adminq_free(struct device *dev, struct gve_priv *priv)
{
 if (!gve_get_admin_queue_ok(priv))
  return;
 gve_adminq_release(priv);
 dma_free_coherent(dev, PAGE_SIZE, priv->adminq, priv->adminq_bus_addr);
 gve_clear_admin_queue_ok(priv);
}

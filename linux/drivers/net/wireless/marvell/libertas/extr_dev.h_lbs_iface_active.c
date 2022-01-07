
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbs_private {scalar_t__ mesh_dev; scalar_t__ dev; } ;


 int netif_running (scalar_t__) ;

__attribute__((used)) static inline int lbs_iface_active(struct lbs_private *priv)
{
 int r;

 r = netif_running(priv->dev);
 if (priv->mesh_dev)
  r |= netif_running(priv->mesh_dev);

 return r;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {int sa_data; } ;
struct net_device {int dev_addr; struct lbs_private* ml_priv; } ;
struct lbs_private {TYPE_1__* mesh_dev; int current_addr; struct net_device* dev; } ;
struct TYPE_2__ {int dev_addr; } ;


 int EBUSY ;
 int ETH_ALEN ;
 scalar_t__ lbs_iface_active (struct lbs_private*) ;
 int memcpy (int ,int ,int ) ;

int lbs_set_mac_address(struct net_device *dev, void *addr)
{
 int ret = 0;
 struct lbs_private *priv = dev->ml_priv;
 struct sockaddr *phwaddr = addr;





 if (lbs_iface_active(priv))
  return -EBUSY;


 dev = priv->dev;

 memcpy(priv->current_addr, phwaddr->sa_data, ETH_ALEN);
 memcpy(dev->dev_addr, phwaddr->sa_data, ETH_ALEN);
 if (priv->mesh_dev)
  memcpy(priv->mesh_dev->dev_addr, phwaddr->sa_data, ETH_ALEN);

 return ret;
}

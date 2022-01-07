
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {int sa_data; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int work; } ;
struct ipw2100_priv {int action_mutex; TYPE_1__ reset_work; scalar_t__ reset_backoff; int mac_addr; int config; } ;


 int CFG_CUSTOM_MAC ;
 int EADDRNOTAVAIL ;
 int ETH_ALEN ;
 int ipw2100_reset_adapter (int *) ;
 int ipw2100_set_mac_address (struct ipw2100_priv*,int ) ;
 int is_valid_ether_addr (int ) ;
 struct ipw2100_priv* libipw_priv (struct net_device*) ;
 int memcpy (int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ipw2100_set_address(struct net_device *dev, void *p)
{
 struct ipw2100_priv *priv = libipw_priv(dev);
 struct sockaddr *addr = p;
 int err = 0;

 if (!is_valid_ether_addr(addr->sa_data))
  return -EADDRNOTAVAIL;

 mutex_lock(&priv->action_mutex);

 priv->config |= CFG_CUSTOM_MAC;
 memcpy(priv->mac_addr, addr->sa_data, ETH_ALEN);

 err = ipw2100_set_mac_address(priv, 0);
 if (err)
  goto done;

 priv->reset_backoff = 0;
 mutex_unlock(&priv->action_mutex);
 ipw2100_reset_adapter(&priv->reset_work.work);
 return 0;

      done:
 mutex_unlock(&priv->action_mutex);
 return err;
}

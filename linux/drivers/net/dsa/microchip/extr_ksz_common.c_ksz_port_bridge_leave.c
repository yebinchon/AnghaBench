
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ksz_device {int br_member; int member; int dev_mutex; } ;
struct dsa_switch {struct ksz_device* priv; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void ksz_port_bridge_leave(struct dsa_switch *ds, int port,
      struct net_device *br)
{
 struct ksz_device *dev = ds->priv;

 mutex_lock(&dev->dev_mutex);
 dev->br_member &= ~(1 << port);
 dev->member &= ~(1 << port);
 mutex_unlock(&dev->dev_mutex);




}

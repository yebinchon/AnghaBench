
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ksz_port {TYPE_1__* linked; } ;
struct dev_priv {scalar_t__ media_state; } ;
struct TYPE_2__ {scalar_t__ state; } ;


 int media_connected ;
 scalar_t__ netif_running (struct net_device*) ;
 int set_media_state (struct net_device*,int ) ;

__attribute__((used)) static void update_link(struct net_device *dev, struct dev_priv *priv,
 struct ksz_port *port)
{
 if (priv->media_state != port->linked->state) {
  priv->media_state = port->linked->state;
  if (netif_running(dev))
   set_media_state(dev, media_connected);
 }
}

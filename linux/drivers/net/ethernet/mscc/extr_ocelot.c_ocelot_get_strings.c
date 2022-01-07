
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct ocelot_port {struct ocelot* ocelot; } ;
struct ocelot {int num_stats; TYPE_1__* stats_layout; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int name; } ;


 int ETH_GSTRING_LEN ;
 scalar_t__ ETH_SS_STATS ;
 int memcpy (int *,int ,int) ;
 struct ocelot_port* netdev_priv (struct net_device*) ;

__attribute__((used)) static void ocelot_get_strings(struct net_device *netdev, u32 sset, u8 *data)
{
 struct ocelot_port *port = netdev_priv(netdev);
 struct ocelot *ocelot = port->ocelot;
 int i;

 if (sset != ETH_SS_STATS)
  return;

 for (i = 0; i < ocelot->num_stats; i++)
  memcpy(data + i * ETH_GSTRING_LEN, ocelot->stats_layout[i].name,
         ETH_GSTRING_LEN);
}

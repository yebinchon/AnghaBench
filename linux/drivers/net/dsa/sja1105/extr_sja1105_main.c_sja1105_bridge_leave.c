
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct dsa_switch {int dummy; } ;


 int sja1105_bridge_member (struct dsa_switch*,int,struct net_device*,int) ;

__attribute__((used)) static void sja1105_bridge_leave(struct dsa_switch *ds, int port,
     struct net_device *br)
{
 sja1105_bridge_member(ds, port, br, 0);
}

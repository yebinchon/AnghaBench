
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_wolinfo {int dummy; } ;


 int memset (struct ethtool_wolinfo*,int ,int) ;
 int pegasus_set_wol (struct net_device*,struct ethtool_wolinfo*) ;

__attribute__((used)) static inline void pegasus_reset_wol(struct net_device *dev)
{
 struct ethtool_wolinfo wol;

 memset(&wol, 0, sizeof wol);
 (void) pegasus_set_wol(dev, &wol);
}

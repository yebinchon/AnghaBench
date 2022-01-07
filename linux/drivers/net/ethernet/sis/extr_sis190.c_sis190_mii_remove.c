
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sis190_private {int first_phy; } ;
struct net_device {int dummy; } ;


 struct sis190_private* netdev_priv (struct net_device*) ;
 int sis190_free_phy (int *) ;

__attribute__((used)) static void sis190_mii_remove(struct net_device *dev)
{
 struct sis190_private *tp = netdev_priv(dev);

 sis190_free_phy(&tp->first_phy);
}

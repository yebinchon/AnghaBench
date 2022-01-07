
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;


 int ethtool_op_get_link (struct net_device*) ;

__attribute__((used)) static u32 aq_ethtool_get_link(struct net_device *ndev)
{
 return ethtool_op_get_link(ndev);
}

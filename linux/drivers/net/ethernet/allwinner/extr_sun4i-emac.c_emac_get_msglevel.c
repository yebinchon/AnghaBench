
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct emac_board_info {int msg_enable; } ;


 struct emac_board_info* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 emac_get_msglevel(struct net_device *dev)
{
 struct emac_board_info *db = netdev_priv(dev);

 return db->msg_enable;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct board_info {int dummy; } ;


 struct board_info* netdev_priv (struct net_device*) ;

__attribute__((used)) static inline struct board_info *to_dm9000_board(struct net_device *dev)
{
 return netdev_priv(dev);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nubus_board {int dummy; } ;
struct net_device {int dummy; } ;


 int free_netdev (struct net_device*) ;
 struct net_device* nubus_get_drvdata (struct nubus_board*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int mac8390_device_remove(struct nubus_board *board)
{
 struct net_device *dev = nubus_get_drvdata(board);

 unregister_netdev(dev);
 free_netdev(dev);
 return 0;
}

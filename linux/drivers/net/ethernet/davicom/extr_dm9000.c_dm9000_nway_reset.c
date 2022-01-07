
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct board_info {int mii; } ;


 int mii_nway_restart (int *) ;
 struct board_info* to_dm9000_board (struct net_device*) ;

__attribute__((used)) static int dm9000_nway_reset(struct net_device *dev)
{
 struct board_info *dm = to_dm9000_board(dev);
 return mii_nway_restart(&dm->mii);
}

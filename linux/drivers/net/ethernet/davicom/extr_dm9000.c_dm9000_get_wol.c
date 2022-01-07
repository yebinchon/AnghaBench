
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_wolinfo {int wolopts; int supported; } ;
struct board_info {int wake_state; scalar_t__ wake_supported; } ;


 int WAKE_MAGIC ;
 int memset (struct ethtool_wolinfo*,int ,int) ;
 struct board_info* to_dm9000_board (struct net_device*) ;

__attribute__((used)) static void dm9000_get_wol(struct net_device *dev, struct ethtool_wolinfo *w)
{
 struct board_info *dm = to_dm9000_board(dev);

 memset(w, 0, sizeof(struct ethtool_wolinfo));


 w->supported = dm->wake_supported ? WAKE_MAGIC : 0;
 w->wolopts = dm->wake_state;
}

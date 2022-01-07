
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct board_info {int msg_enable; } ;


 struct board_info* to_dm9000_board (struct net_device*) ;

__attribute__((used)) static void dm9000_set_msglevel(struct net_device *dev, u32 value)
{
 struct board_info *dm = to_dm9000_board(dev);

 dm->msg_enable = value;
}

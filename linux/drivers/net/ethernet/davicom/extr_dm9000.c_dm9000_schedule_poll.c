
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct board_info {scalar_t__ type; int phy_poll; } ;


 int HZ ;
 scalar_t__ TYPE_DM9000E ;
 int schedule_delayed_work (int *,int) ;

__attribute__((used)) static void dm9000_schedule_poll(struct board_info *db)
{
 if (db->type == TYPE_DM9000E)
  schedule_delayed_work(&db->phy_poll, HZ * 2);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdio_board_info {int dummy; } ;
struct mdio_board_entry {int list; int board_info; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct mdio_board_entry* kcalloc (unsigned int,int,int ) ;
 int list_add_tail (int *,int *) ;
 int mdio_board_list ;
 int mdio_board_lock ;
 int memcpy (int *,struct mdio_board_info const*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int mdiobus_register_board_info(const struct mdio_board_info *info,
    unsigned int n)
{
 struct mdio_board_entry *be;
 unsigned int i;

 be = kcalloc(n, sizeof(*be), GFP_KERNEL);
 if (!be)
  return -ENOMEM;

 for (i = 0; i < n; i++, be++, info++) {
  memcpy(&be->board_info, info, sizeof(*info));
  mutex_lock(&mdio_board_lock);
  list_add_tail(&be->list, &mdio_board_list);
  mutex_unlock(&mdio_board_lock);
 }

 return 0;
}

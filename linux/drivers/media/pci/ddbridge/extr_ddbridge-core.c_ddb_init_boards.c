
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct ddb_link {struct ddb_info* info; } ;
struct ddb_info {int board_control; int board_control_2; } ;
struct ddb {struct ddb_link* link; } ;


 int BOARD_CONTROL ;
 int DDB_LINK_TAG (size_t) ;
 size_t DDB_MAX_LINK ;
 int ddb_init_tempmon (struct ddb_link*) ;
 int ddbwritel (struct ddb*,int,int) ;
 int msleep (int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int ddb_init_boards(struct ddb *dev)
{
 const struct ddb_info *info;
 struct ddb_link *link;
 u32 l;

 for (l = 0; l < DDB_MAX_LINK; l++) {
  link = &dev->link[l];
  info = link->info;

  if (!info)
   continue;
  if (info->board_control) {
   ddbwritel(dev, 0, DDB_LINK_TAG(l) | BOARD_CONTROL);
   msleep(100);
   ddbwritel(dev, info->board_control_2,
      DDB_LINK_TAG(l) | BOARD_CONTROL);
   usleep_range(2000, 3000);
   ddbwritel(dev,
      info->board_control_2 | info->board_control,
      DDB_LINK_TAG(l) | BOARD_CONTROL);
   usleep_range(2000, 3000);
  }
  ddb_init_tempmon(link);
 }
 return 0;
}

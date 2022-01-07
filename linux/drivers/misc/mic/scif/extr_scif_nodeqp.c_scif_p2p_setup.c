
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scif_dev {int dummy; } ;
struct TYPE_2__ {int maxid; int p2p_enable; } ;


 int _scifdev_alive (struct scif_dev*) ;
 struct scif_dev* scif_dev ;
 TYPE_1__ scif_info ;
 int scif_node_connect (struct scif_dev*,int) ;

__attribute__((used)) static void scif_p2p_setup(void)
{
 int i, j;

 if (!scif_info.p2p_enable)
  return;

 for (i = 1; i <= scif_info.maxid; i++)
  if (!_scifdev_alive(&scif_dev[i]))
   return;

 for (i = 1; i <= scif_info.maxid; i++) {
  for (j = 1; j <= scif_info.maxid; j++) {
   struct scif_dev *scifdev = &scif_dev[i];

   if (i == j)
    continue;
   scif_node_connect(scifdev, j);
  }
 }
}

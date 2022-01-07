
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scif_dev {int dummy; } ;
struct TYPE_2__ {int maxid; } ;


 struct scif_dev* scif_dev ;
 int scif_handle_remove_node (int) ;
 TYPE_1__ scif_info ;
 scalar_t__ scifdev_self (struct scif_dev*) ;

void scif_stop(struct scif_dev *scifdev)
{
 struct scif_dev *dev;
 int i;

 for (i = scif_info.maxid; i >= 0; i--) {
  dev = &scif_dev[i];
  if (scifdev_self(dev))
   continue;
  scif_handle_remove_node(i);
 }
}

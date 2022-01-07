
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scif_hw_dev_id {scalar_t__ device; } ;
struct scif_hw_dev {int dummy; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct scif_hw_dev_id* id_table; } ;


 struct scif_hw_dev* dev_to_scif (struct device*) ;
 TYPE_1__* drv_to_scif (struct device_driver*) ;
 scalar_t__ scif_id_match (struct scif_hw_dev*,struct scif_hw_dev_id const*) ;

__attribute__((used)) static int scif_dev_match(struct device *dv, struct device_driver *dr)
{
 unsigned int i;
 struct scif_hw_dev *dev = dev_to_scif(dv);
 const struct scif_hw_dev_id *ids;

 ids = drv_to_scif(dr)->id_table;
 for (i = 0; ids[i].device; i++)
  if (scif_id_match(dev, &ids[i]))
   return 1;
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scif_dev {int dummy; } ;


 size_t SCIF_MGMT_NODE ;
 struct scif_dev* scif_dev ;
 scalar_t__ scif_is_mgmt_node () ;
 int scifdev_self (struct scif_dev*) ;

__attribute__((used)) static inline bool scifdev_is_p2p(struct scif_dev *dev)
{
 if (scif_is_mgmt_node())
  return 0;
 else
  return dev != &scif_dev[SCIF_MGMT_NODE] &&
   !scifdev_self(dev);
}

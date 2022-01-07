
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scif_dev {scalar_t__ node; } ;
struct TYPE_2__ {scalar_t__ nodeid; } ;


 TYPE_1__ scif_info ;

__attribute__((used)) static inline int scifdev_self(struct scif_dev *dev)
{
 return dev->node == scif_info.nodeid;
}

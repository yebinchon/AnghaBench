
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ sd; } ;
struct TYPE_5__ {TYPE_3__ kobj; } ;
struct enclosure_component {TYPE_2__ cdev; TYPE_1__* dev; } ;
struct TYPE_4__ {TYPE_3__ kobj; } ;


 int ENCLOSURE_NAME_SIZE ;
 int enclosure_link_name (struct enclosure_component*,char*) ;
 int sysfs_remove_link (TYPE_3__*,char*) ;

__attribute__((used)) static void enclosure_remove_links(struct enclosure_component *cdev)
{
 char name[ENCLOSURE_NAME_SIZE];

 enclosure_link_name(cdev, name);





 if (cdev->dev->kobj.sd)
  sysfs_remove_link(&cdev->dev->kobj, name);

 if (cdev->cdev.kobj.sd)
  sysfs_remove_link(&cdev->cdev.kobj, "device");
}

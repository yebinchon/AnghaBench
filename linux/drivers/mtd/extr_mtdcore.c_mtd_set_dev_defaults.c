
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_3__* parent; } ;
struct mtd_info {int flags; int orig_flags; TYPE_1__ dev; scalar_t__ name; scalar_t__ owner; } ;
struct TYPE_6__ {TYPE_2__* driver; } ;
struct TYPE_5__ {scalar_t__ owner; } ;


 scalar_t__ dev_name (TYPE_3__*) ;
 int pr_debug (char*) ;

__attribute__((used)) static void mtd_set_dev_defaults(struct mtd_info *mtd)
{
 if (mtd->dev.parent) {
  if (!mtd->owner && mtd->dev.parent->driver)
   mtd->owner = mtd->dev.parent->driver->owner;
  if (!mtd->name)
   mtd->name = dev_name(mtd->dev.parent);
 } else {
  pr_debug("mtd device won't show a device symlink in sysfs\n");
 }

 mtd->orig_flags = mtd->flags;
}

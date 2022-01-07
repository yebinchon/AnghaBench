
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; int dev_release; int class_release; } ;
struct pvr2_sysfs_class {TYPE_1__ class; } ;


 int GFP_KERNEL ;
 scalar_t__ class_register (TYPE_1__*) ;
 int kfree (struct pvr2_sysfs_class*) ;
 struct pvr2_sysfs_class* kzalloc (int,int ) ;
 int pvr2_sysfs_class_release ;
 int pvr2_sysfs_release ;
 int pvr2_sysfs_trace (char*,struct pvr2_sysfs_class*) ;

struct pvr2_sysfs_class *pvr2_sysfs_class_create(void)
{
 struct pvr2_sysfs_class *clp;
 clp = kzalloc(sizeof(*clp),GFP_KERNEL);
 if (!clp) return clp;
 pvr2_sysfs_trace("Creating and registering pvr2_sysfs_class id=%p",
    clp);
 clp->class.name = "pvrusb2";
 clp->class.class_release = pvr2_sysfs_class_release;
 clp->class.dev_release = pvr2_sysfs_release;
 if (class_register(&clp->class)) {
  pvr2_sysfs_trace(
   "Registration failed for pvr2_sysfs_class id=%p",clp);
  kfree(clp);
  clp = ((void*)0);
 }
 return clp;
}

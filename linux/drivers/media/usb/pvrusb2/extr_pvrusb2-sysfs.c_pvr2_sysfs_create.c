
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pvr2_sysfs_class {int dummy; } ;
struct TYPE_2__ {int check_func; } ;
struct pvr2_sysfs {TYPE_1__ channel; } ;
struct pvr2_context {int dummy; } ;


 int GFP_KERNEL ;
 int PVR2_TRACE_STRUCT ;
 int class_dev_create (struct pvr2_sysfs*,struct pvr2_sysfs_class*) ;
 struct pvr2_sysfs* kzalloc (int,int ) ;
 int pvr2_channel_init (TYPE_1__*,struct pvr2_context*) ;
 int pvr2_sysfs_internal_check ;
 int pvr2_trace (int ,char*,struct pvr2_sysfs*) ;

struct pvr2_sysfs *pvr2_sysfs_create(struct pvr2_context *mp,
         struct pvr2_sysfs_class *class_ptr)
{
 struct pvr2_sysfs *sfp;
 sfp = kzalloc(sizeof(*sfp),GFP_KERNEL);
 if (!sfp) return sfp;
 pvr2_trace(PVR2_TRACE_STRUCT,"Creating pvr2_sysfs id=%p",sfp);
 pvr2_channel_init(&sfp->channel,mp);
 sfp->channel.check_func = pvr2_sysfs_internal_check;

 class_dev_create(sfp,class_ptr);
 return sfp;
}

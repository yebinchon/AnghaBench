
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hdw; } ;
struct pvr2_sysfs {TYPE_1__ channel; } ;


 unsigned int pvr2_hdw_get_ctrl_count (int ) ;
 int pvr2_sysfs_add_control (struct pvr2_sysfs*,unsigned int) ;

__attribute__((used)) static void pvr2_sysfs_add_controls(struct pvr2_sysfs *sfp)
{
 unsigned int idx,cnt;
 cnt = pvr2_hdw_get_ctrl_count(sfp->channel.hdw);
 for (idx = 0; idx < cnt; idx++) {
  pvr2_sysfs_add_control(sfp,idx);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pvr2_sysfs_ctl_item {TYPE_2__* chptr; int cptr; } ;
struct TYPE_3__ {int hdw; } ;
struct TYPE_4__ {TYPE_1__ channel; } ;


 int pvr2_ctrl_custom_sym_to_value (int ,char const*,unsigned int,int*,int*) ;
 int pvr2_ctrl_set_mask_value (int ,int,int) ;
 int pvr2_ctrl_sym_to_value (int ,char const*,unsigned int,int*,int*) ;
 int pvr2_hdw_commit_ctl (int ) ;

__attribute__((used)) static int store_val_any(struct pvr2_sysfs_ctl_item *cip, int customfl,
    const char *buf,unsigned int count)
{
 int ret;
 int mask,val;
 if (customfl) {
  ret = pvr2_ctrl_custom_sym_to_value(cip->cptr, buf, count,
          &mask, &val);
 } else {
  ret = pvr2_ctrl_sym_to_value(cip->cptr, buf, count,
          &mask, &val);
 }
 if (ret < 0) return ret;
 ret = pvr2_ctrl_set_mask_value(cip->cptr, mask, val);
 pvr2_hdw_commit_ctl(cip->chptr->channel.hdw);
 return ret;
}

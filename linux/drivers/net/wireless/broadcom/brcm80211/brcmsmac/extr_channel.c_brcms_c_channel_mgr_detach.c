
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcms_cm_info {int dummy; } ;


 int kfree (struct brcms_cm_info*) ;

void brcms_c_channel_mgr_detach(struct brcms_cm_info *wlc_cm)
{
 kfree(wlc_cm);
}

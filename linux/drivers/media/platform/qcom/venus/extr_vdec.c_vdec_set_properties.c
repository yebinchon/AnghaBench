
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct vdec_controls {scalar_t__ post_loop_deb_mode; } ;
struct TYPE_2__ {struct vdec_controls dec; } ;
struct venus_inst {TYPE_1__ controls; } ;
struct hfi_enable {int enable; } ;


 int HFI_PROPERTY_CONFIG_VDEC_POST_LOOP_DEBLOCKER ;
 int hfi_session_set_property (struct venus_inst*,int ,struct hfi_enable*) ;

__attribute__((used)) static int vdec_set_properties(struct venus_inst *inst)
{
 struct vdec_controls *ctr = &inst->controls.dec;
 struct hfi_enable en = { .enable = 1 };
 u32 ptype;
 int ret;

 if (ctr->post_loop_deb_mode) {
  ptype = HFI_PROPERTY_CONFIG_VDEC_POST_LOOP_DEBLOCKER;
  ret = hfi_session_set_property(inst, ptype, &en);
  if (ret)
   return ret;
 }

 return 0;
}

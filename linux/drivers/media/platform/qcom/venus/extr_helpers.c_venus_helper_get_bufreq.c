
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union hfi_get_property {TYPE_1__* bufreq; } ;
typedef scalar_t__ u32 ;
struct venus_inst {int dummy; } ;
struct hfi_buffer_requirements {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 int EINVAL ;
 unsigned int HFI_BUFFER_TYPE_MAX ;
 scalar_t__ HFI_PROPERTY_CONFIG_BUFFER_REQUIREMENTS ;
 int hfi_session_get_property (struct venus_inst*,scalar_t__,union hfi_get_property*) ;
 int memcpy (struct hfi_buffer_requirements*,TYPE_1__*,int) ;
 int memset (struct hfi_buffer_requirements*,int ,int) ;

int venus_helper_get_bufreq(struct venus_inst *inst, u32 type,
       struct hfi_buffer_requirements *req)
{
 u32 ptype = HFI_PROPERTY_CONFIG_BUFFER_REQUIREMENTS;
 union hfi_get_property hprop;
 unsigned int i;
 int ret;

 if (req)
  memset(req, 0, sizeof(*req));

 ret = hfi_session_get_property(inst, ptype, &hprop);
 if (ret)
  return ret;

 ret = -EINVAL;

 for (i = 0; i < HFI_BUFFER_TYPE_MAX; i++) {
  if (hprop.bufreq[i].type != type)
   continue;

  if (req)
   memcpy(req, &hprop.bufreq[i], sizeof(*req));
  ret = 0;
  break;
 }

 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct venus_inst {int core; } ;
struct venus_hfi_device {int dummy; } ;
struct hfi_session_get_property_pkt {int dummy; } ;


 int pkt_session_get_property (struct hfi_session_get_property_pkt*,struct venus_inst*,int ) ;
 struct venus_hfi_device* to_hfi_priv (int ) ;
 int venus_iface_cmdq_write (struct venus_hfi_device*,struct hfi_session_get_property_pkt*) ;

__attribute__((used)) static int venus_session_get_property(struct venus_inst *inst, u32 ptype)
{
 struct venus_hfi_device *hdev = to_hfi_priv(inst->core);
 struct hfi_session_get_property_pkt pkt;
 int ret;

 ret = pkt_session_get_property(&pkt, inst, ptype);
 if (ret)
  return ret;

 return venus_iface_cmdq_write(hdev, &pkt);
}

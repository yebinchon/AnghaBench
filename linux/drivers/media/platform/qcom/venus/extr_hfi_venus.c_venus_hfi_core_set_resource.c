
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct venus_hfi_device {int dummy; } ;
struct venus_core {int dummy; } ;
struct hfi_sys_set_resource_pkt {int dummy; } ;


 int IFACEQ_VAR_SMALL_PKT_SIZE ;
 int VIDC_RESOURCE_NONE ;
 int pkt_sys_set_resource (struct hfi_sys_set_resource_pkt*,int ,int ,int ,void*) ;
 struct venus_hfi_device* to_hfi_priv (struct venus_core*) ;
 int venus_iface_cmdq_write (struct venus_hfi_device*,struct hfi_sys_set_resource_pkt*) ;

__attribute__((used)) static int venus_hfi_core_set_resource(struct venus_core *core, u32 id,
           u32 size, u32 addr, void *cookie)
{
 struct venus_hfi_device *hdev = to_hfi_priv(core);
 struct hfi_sys_set_resource_pkt *pkt;
 u8 packet[IFACEQ_VAR_SMALL_PKT_SIZE];
 int ret;

 if (id == VIDC_RESOURCE_NONE)
  return 0;

 pkt = (struct hfi_sys_set_resource_pkt *)packet;

 ret = pkt_sys_set_resource(pkt, id, size, addr, cookie);
 if (ret)
  return ret;

 ret = venus_iface_cmdq_write(hdev, pkt);
 if (ret)
  return ret;

 return 0;
}

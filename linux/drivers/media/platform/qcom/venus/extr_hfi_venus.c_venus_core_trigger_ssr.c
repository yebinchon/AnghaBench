
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct venus_hfi_device {int dummy; } ;
struct venus_core {int dummy; } ;
struct hfi_sys_test_ssr_pkt {int dummy; } ;


 int pkt_sys_ssr_cmd (struct hfi_sys_test_ssr_pkt*,int ) ;
 struct venus_hfi_device* to_hfi_priv (struct venus_core*) ;
 int venus_iface_cmdq_write (struct venus_hfi_device*,struct hfi_sys_test_ssr_pkt*) ;

__attribute__((used)) static int venus_core_trigger_ssr(struct venus_core *core, u32 trigger_type)
{
 struct venus_hfi_device *hdev = to_hfi_priv(core);
 struct hfi_sys_test_ssr_pkt pkt;
 int ret;

 ret = pkt_sys_ssr_cmd(&pkt, trigger_type);
 if (ret)
  return ret;

 return venus_iface_cmdq_write(hdev, &pkt);
}

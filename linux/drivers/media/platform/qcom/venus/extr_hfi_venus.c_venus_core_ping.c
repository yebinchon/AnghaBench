
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct venus_hfi_device {int dummy; } ;
struct venus_core {int dummy; } ;
struct hfi_sys_ping_pkt {int dummy; } ;


 int pkt_sys_ping (struct hfi_sys_ping_pkt*,int ) ;
 struct venus_hfi_device* to_hfi_priv (struct venus_core*) ;
 int venus_iface_cmdq_write (struct venus_hfi_device*,struct hfi_sys_ping_pkt*) ;

__attribute__((used)) static int venus_core_ping(struct venus_core *core, u32 cookie)
{
 struct venus_hfi_device *hdev = to_hfi_priv(core);
 struct hfi_sys_ping_pkt pkt;

 pkt_sys_ping(&pkt, cookie);

 return venus_iface_cmdq_write(hdev, &pkt);
}

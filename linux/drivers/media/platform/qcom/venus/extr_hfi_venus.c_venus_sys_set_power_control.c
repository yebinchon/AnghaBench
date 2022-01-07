
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct venus_hfi_device {int dummy; } ;
struct hfi_sys_set_property_pkt {int dummy; } ;


 int IFACEQ_VAR_SMALL_PKT_SIZE ;
 int pkt_sys_power_control (struct hfi_sys_set_property_pkt*,int) ;
 int venus_iface_cmdq_write (struct venus_hfi_device*,struct hfi_sys_set_property_pkt*) ;

__attribute__((used)) static int venus_sys_set_power_control(struct venus_hfi_device *hdev,
           bool enable)
{
 struct hfi_sys_set_property_pkt *pkt;
 u8 packet[IFACEQ_VAR_SMALL_PKT_SIZE];
 int ret;

 pkt = (struct hfi_sys_set_property_pkt *)packet;

 pkt_sys_power_control(pkt, enable);

 ret = venus_iface_cmdq_write(hdev, pkt);
 if (ret)
  return ret;

 return 0;
}

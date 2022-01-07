
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct hl_device {TYPE_1__* asic_funcs; } ;
struct armcp_packet {int ctl; } ;
typedef int pkt ;
struct TYPE_2__ {int (* send_cpu_message ) (struct hl_device*,int*,int,int ,int *) ;} ;


 int ARMCP_PKT_CTL_OPCODE_SHIFT ;
 int HL_DEVICE_TIMEOUT_USEC ;
 int cpu_to_le32 (int) ;
 int stub1 (struct hl_device*,int*,int,int ,int *) ;

int hl_fw_send_pci_access_msg(struct hl_device *hdev, u32 opcode)
{
 struct armcp_packet pkt = {};

 pkt.ctl = cpu_to_le32(opcode << ARMCP_PKT_CTL_OPCODE_SHIFT);

 return hdev->asic_funcs->send_cpu_message(hdev, (u32 *) &pkt,
    sizeof(pkt), HL_DEVICE_TIMEOUT_USEC, ((void*)0));
}

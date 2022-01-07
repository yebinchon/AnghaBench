
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct hl_device {int dev; TYPE_1__* asic_funcs; } ;
struct armcp_packet {int value; void* led_index; void* ctl; } ;
typedef int pkt ;
struct TYPE_2__ {int (* send_cpu_message ) (struct hl_device*,int *,int,int ,int *) ;} ;


 int ARMCP_PACKET_LED_SET ;
 int ARMCP_PKT_CTL_OPCODE_SHIFT ;
 int HL_DEVICE_TIMEOUT_USEC ;
 void* cpu_to_le32 (int) ;
 int cpu_to_le64 (int) ;
 int dev_err (int ,char*,int,int) ;
 scalar_t__ hl_device_disabled_or_in_reset (struct hl_device*) ;
 int memset (struct armcp_packet*,int ,int) ;
 int stub1 (struct hl_device*,int *,int,int ,int *) ;

__attribute__((used)) static void hl_debugfs_led_set(struct hl_device *hdev, u8 led, u8 state)
{
 struct armcp_packet pkt;
 int rc;

 if (hl_device_disabled_or_in_reset(hdev))
  return;

 memset(&pkt, 0, sizeof(pkt));

 pkt.ctl = cpu_to_le32(ARMCP_PACKET_LED_SET <<
    ARMCP_PKT_CTL_OPCODE_SHIFT);
 pkt.led_index = cpu_to_le32(led);
 pkt.value = cpu_to_le64(state);

 rc = hdev->asic_funcs->send_cpu_message(hdev, (u32 *) &pkt, sizeof(pkt),
      HL_DEVICE_TIMEOUT_USEC, ((void*)0));

 if (rc)
  dev_err(hdev->dev, "Failed to set LED %d, error %d\n", led, rc);
}

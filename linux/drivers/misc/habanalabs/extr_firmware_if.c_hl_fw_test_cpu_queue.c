
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int test_pkt ;
struct hl_device {int dev; TYPE_1__* asic_funcs; } ;
struct armcp_packet {int value; int ctl; } ;
struct TYPE_2__ {int (* send_cpu_message ) (struct hl_device*,int *,int,int ,long*) ;} ;


 long ARMCP_PACKET_FENCE_VAL ;
 int ARMCP_PACKET_TEST ;
 int ARMCP_PKT_CTL_OPCODE_SHIFT ;
 int HL_DEVICE_TIMEOUT_USEC ;
 int cpu_to_le32 (int) ;
 int cpu_to_le64 (long) ;
 int dev_err (int ,char*,int) ;
 int dev_info (int ,char*) ;
 int stub1 (struct hl_device*,int *,int,int ,long*) ;

int hl_fw_test_cpu_queue(struct hl_device *hdev)
{
 struct armcp_packet test_pkt = {};
 long result;
 int rc;

 test_pkt.ctl = cpu_to_le32(ARMCP_PACKET_TEST <<
     ARMCP_PKT_CTL_OPCODE_SHIFT);
 test_pkt.value = cpu_to_le64(ARMCP_PACKET_FENCE_VAL);

 rc = hdev->asic_funcs->send_cpu_message(hdev, (u32 *) &test_pkt,
   sizeof(test_pkt), HL_DEVICE_TIMEOUT_USEC, &result);

 if (!rc) {
  if (result == ARMCP_PACKET_FENCE_VAL)
   dev_info(hdev->dev,
    "queue test on CPU queue succeeded\n");
  else
   dev_err(hdev->dev,
    "CPU queue test failed (0x%08lX)\n", result);
 } else {
  dev_err(hdev->dev, "CPU queue test failed, error %d\n", rc);
 }

 return rc;
}

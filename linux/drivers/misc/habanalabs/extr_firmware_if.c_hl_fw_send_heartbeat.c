
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct hl_device {TYPE_1__* asic_funcs; } ;
struct armcp_packet {int value; int ctl; } ;
typedef int hb_pkt ;
struct TYPE_2__ {int (* send_cpu_message ) (struct hl_device*,int *,int,int ,long*) ;} ;


 long ARMCP_PACKET_FENCE_VAL ;
 int ARMCP_PACKET_TEST ;
 int ARMCP_PKT_CTL_OPCODE_SHIFT ;
 int EIO ;
 int HL_DEVICE_TIMEOUT_USEC ;
 int cpu_to_le32 (int) ;
 int cpu_to_le64 (long) ;
 int stub1 (struct hl_device*,int *,int,int ,long*) ;

int hl_fw_send_heartbeat(struct hl_device *hdev)
{
 struct armcp_packet hb_pkt = {};
 long result;
 int rc;

 hb_pkt.ctl = cpu_to_le32(ARMCP_PACKET_TEST <<
     ARMCP_PKT_CTL_OPCODE_SHIFT);
 hb_pkt.value = cpu_to_le64(ARMCP_PACKET_FENCE_VAL);

 rc = hdev->asic_funcs->send_cpu_message(hdev, (u32 *) &hb_pkt,
   sizeof(hb_pkt), HL_DEVICE_TIMEOUT_USEC, &result);

 if ((rc) || (result != ARMCP_PACKET_FENCE_VAL))
  rc = -EIO;

 return rc;
}

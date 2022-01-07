
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct hl_device {int dev; } ;
struct armcp_packet {int value; int ctl; } ;
typedef int pkt ;


 int ARMCP_PACKET_UNMASK_RAZWI_IRQ ;
 int ARMCP_PKT_CTL_OPCODE_SHIFT ;
 int HL_DEVICE_TIMEOUT_USEC ;
 int cpu_to_le32 (int) ;
 int cpu_to_le64 (int ) ;
 int dev_err (int ,char*,int ) ;
 int goya_send_cpu_message (struct hl_device*,int *,int,int ,long*) ;
 int memset (struct armcp_packet*,int ,int) ;

__attribute__((used)) static int goya_unmask_irq(struct hl_device *hdev, u16 event_type)
{
 struct armcp_packet pkt;
 long result;
 int rc;

 memset(&pkt, 0, sizeof(pkt));

 pkt.ctl = cpu_to_le32(ARMCP_PACKET_UNMASK_RAZWI_IRQ <<
    ARMCP_PKT_CTL_OPCODE_SHIFT);
 pkt.value = cpu_to_le64(event_type);

 rc = goya_send_cpu_message(hdev, (u32 *) &pkt, sizeof(pkt),
   HL_DEVICE_TIMEOUT_USEC, &result);

 if (rc)
  dev_err(hdev->dev, "failed to unmask RAZWI IRQ %d", event_type);

 return rc;
}

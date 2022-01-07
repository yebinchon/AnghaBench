
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct hl_device {int dev; } ;
struct TYPE_2__ {void* ctl; } ;
struct armcp_unmask_irq_arr_packet {TYPE_1__ armcp_pkt; int irqs; void* length; } ;
typedef int irq_arr ;
typedef void* __le32 ;


 int ARMCP_PACKET_UNMASK_RAZWI_IRQ_ARRAY ;
 int ARMCP_PKT_CTL_OPCODE_SHIFT ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HL_DEVICE_TIMEOUT_USEC ;
 size_t USHRT_MAX ;
 void* cpu_to_le32 (int) ;
 int dev_err (int ,char*) ;
 int goya_send_cpu_message (struct hl_device*,int*,size_t,int ,long*) ;
 int kfree (struct armcp_unmask_irq_arr_packet*) ;
 struct armcp_unmask_irq_arr_packet* kzalloc (size_t,int ) ;

__attribute__((used)) static int goya_unmask_irq_arr(struct hl_device *hdev, u32 *irq_arr,
  size_t irq_arr_size)
{
 struct armcp_unmask_irq_arr_packet *pkt;
 size_t total_pkt_size;
 long result;
 int rc;
 int irq_num_entries, irq_arr_index;
 __le32 *goya_irq_arr;

 total_pkt_size = sizeof(struct armcp_unmask_irq_arr_packet) +
   irq_arr_size;


 total_pkt_size = (total_pkt_size + 0x7) & ~0x7;


 if (total_pkt_size > USHRT_MAX) {
  dev_err(hdev->dev, "too many elements in IRQ array\n");
  return -EINVAL;
 }

 pkt = kzalloc(total_pkt_size, GFP_KERNEL);
 if (!pkt)
  return -ENOMEM;

 irq_num_entries = irq_arr_size / sizeof(irq_arr[0]);
 pkt->length = cpu_to_le32(irq_num_entries);




 for (irq_arr_index = 0, goya_irq_arr = (__le32 *) &pkt->irqs;
   irq_arr_index < irq_num_entries ; irq_arr_index++)
  goya_irq_arr[irq_arr_index] =
    cpu_to_le32(irq_arr[irq_arr_index]);

 pkt->armcp_pkt.ctl = cpu_to_le32(ARMCP_PACKET_UNMASK_RAZWI_IRQ_ARRAY <<
      ARMCP_PKT_CTL_OPCODE_SHIFT);

 rc = goya_send_cpu_message(hdev, (u32 *) pkt, total_pkt_size,
   HL_DEVICE_TIMEOUT_USEC, &result);

 if (rc)
  dev_err(hdev->dev, "failed to unmask IRQ array\n");

 kfree(pkt);

 return rc;
}

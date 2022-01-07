
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct venus_hfi_device {struct iface_queue* queues; int last_packet_type; TYPE_1__* core; } ;
struct iface_queue {int dummy; } ;
struct hfi_pkt_hdr {int pkt_type; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;


 int EINVAL ;
 size_t IFACEQ_CMD_IDX ;
 int dev_err (struct device*,char*,int) ;
 int venus_is_valid_state (struct venus_hfi_device*) ;
 int venus_soft_int (struct venus_hfi_device*) ;
 int venus_write_queue (struct venus_hfi_device*,struct iface_queue*,void*,scalar_t__*) ;

__attribute__((used)) static int venus_iface_cmdq_write_nolock(struct venus_hfi_device *hdev,
      void *pkt)
{
 struct device *dev = hdev->core->dev;
 struct hfi_pkt_hdr *cmd_packet;
 struct iface_queue *queue;
 u32 rx_req;
 int ret;

 if (!venus_is_valid_state(hdev))
  return -EINVAL;

 cmd_packet = (struct hfi_pkt_hdr *)pkt;
 hdev->last_packet_type = cmd_packet->pkt_type;

 queue = &hdev->queues[IFACEQ_CMD_IDX];

 ret = venus_write_queue(hdev, queue, pkt, &rx_req);
 if (ret) {
  dev_err(dev, "write to iface cmd queue failed (%d)\n", ret);
  return ret;
 }

 if (rx_req)
  venus_soft_int(hdev);

 return 0;
}

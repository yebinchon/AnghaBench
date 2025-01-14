
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct venus_hfi_device {struct iface_queue* queues; } ;
struct iface_queue {int dummy; } ;


 int EINVAL ;
 size_t IFACEQ_DBG_IDX ;
 int venus_is_valid_state (struct venus_hfi_device*) ;
 int venus_read_queue (struct venus_hfi_device*,struct iface_queue*,void*,scalar_t__*) ;
 int venus_soft_int (struct venus_hfi_device*) ;

__attribute__((used)) static int venus_iface_dbgq_read_nolock(struct venus_hfi_device *hdev,
     void *pkt)
{
 struct iface_queue *queue;
 u32 tx_req;
 int ret;

 ret = venus_is_valid_state(hdev);
 if (!ret)
  return -EINVAL;

 queue = &hdev->queues[IFACEQ_DBG_IDX];

 ret = venus_read_queue(hdev, queue, pkt, &tx_req);
 if (ret)
  return ret;

 if (tx_req)
  venus_soft_int(hdev);

 return 0;
}

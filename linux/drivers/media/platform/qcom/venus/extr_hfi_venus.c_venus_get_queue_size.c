
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct venus_hfi_device {TYPE_1__* queues; } ;
struct hfi_queue_header {scalar_t__ write_idx; scalar_t__ read_idx; } ;
struct TYPE_2__ {struct hfi_queue_header* qhdr; } ;


 int EINVAL ;
 unsigned int IFACEQ_NUM ;
 int abs (scalar_t__) ;

__attribute__((used)) static int venus_get_queue_size(struct venus_hfi_device *hdev,
    unsigned int index)
{
 struct hfi_queue_header *qhdr;

 if (index >= IFACEQ_NUM)
  return -EINVAL;

 qhdr = hdev->queues[index].qhdr;
 if (!qhdr)
  return -EINVAL;

 return abs(qhdr->read_idx - qhdr->write_idx);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hl_hw_queue {int queue_type; int valid; int hw_queue_id; } ;
struct hl_device {int dev; } ;


 int BUILD_BUG_ON (int) ;
 int EINVAL ;
 scalar_t__ HL_PAGE_SIZE ;
 scalar_t__ HL_QUEUE_SIZE_IN_BYTES ;




 int cpu_hw_queue_init (struct hl_device*,struct hl_hw_queue*) ;
 int dev_crit (int ,char*,int) ;
 int ext_hw_queue_init (struct hl_device*,struct hl_hw_queue*) ;
 int int_hw_queue_init (struct hl_device*,struct hl_hw_queue*) ;

__attribute__((used)) static int hw_queue_init(struct hl_device *hdev, struct hl_hw_queue *q,
   u32 hw_queue_id)
{
 int rc;

 BUILD_BUG_ON(HL_QUEUE_SIZE_IN_BYTES > HL_PAGE_SIZE);

 q->hw_queue_id = hw_queue_id;

 switch (q->queue_type) {
 case 130:
  rc = ext_hw_queue_init(hdev, q);
  break;

 case 129:
  rc = int_hw_queue_init(hdev, q);
  break;

 case 131:
  rc = cpu_hw_queue_init(hdev, q);
  break;

 case 128:
  q->valid = 0;
  return 0;

 default:
  dev_crit(hdev->dev, "wrong queue type %d during init\n",
   q->queue_type);
  rc = -EINVAL;
  break;
 }

 if (rc)
  return rc;

 q->valid = 1;

 return 0;
}

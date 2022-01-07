
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hl_hw_queue {int queue_type; } ;
struct asic_fixed_properties {TYPE_1__* hw_queues_props; } ;
struct hl_device {struct hl_hw_queue* kernel_queues; int dev; struct asic_fixed_properties asic_prop; } ;
struct TYPE_2__ {int type; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HL_MAX_QUEUES ;
 int dev_err (int ,char*,...) ;
 int hw_queue_fini (struct hl_device*,struct hl_hw_queue*) ;
 int hw_queue_init (struct hl_device*,struct hl_hw_queue*,int) ;
 struct hl_hw_queue* kcalloc (int,int,int ) ;
 int kfree (struct hl_hw_queue*) ;

int hl_hw_queues_create(struct hl_device *hdev)
{
 struct asic_fixed_properties *asic = &hdev->asic_prop;
 struct hl_hw_queue *q;
 int i, rc, q_ready_cnt;

 hdev->kernel_queues = kcalloc(HL_MAX_QUEUES,
    sizeof(*hdev->kernel_queues), GFP_KERNEL);

 if (!hdev->kernel_queues) {
  dev_err(hdev->dev, "Not enough memory for H/W queues\n");
  return -ENOMEM;
 }


 for (i = 0, q_ready_cnt = 0, q = hdev->kernel_queues;
   i < HL_MAX_QUEUES ; i++, q_ready_cnt++, q++) {

  q->queue_type = asic->hw_queues_props[i].type;
  rc = hw_queue_init(hdev, q, i);
  if (rc) {
   dev_err(hdev->dev,
    "failed to initialize queue %d\n", i);
   goto release_queues;
  }
 }

 return 0;

release_queues:
 for (i = 0, q = hdev->kernel_queues ; i < q_ready_cnt ; i++, q++)
  hw_queue_fini(hdev, q);

 kfree(hdev->kernel_queues);

 return rc;
}

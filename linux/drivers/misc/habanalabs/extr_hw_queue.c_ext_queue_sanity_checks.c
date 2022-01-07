
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hl_hw_queue {size_t hw_queue_id; } ;
struct hl_device {int dev; TYPE_1__* completion_queue; } ;
typedef int atomic_t ;
struct TYPE_2__ {int free_slots_cnt; } ;


 int EAGAIN ;
 int HL_QUEUE_LENGTH ;
 int atomic_add (int,int *) ;
 scalar_t__ atomic_add_negative (int,int *) ;
 int dev_dbg (int ,char*,int,int) ;
 int queue_free_slots (struct hl_hw_queue*,int ) ;

__attribute__((used)) static int ext_queue_sanity_checks(struct hl_device *hdev,
    struct hl_hw_queue *q, int num_of_entries,
    bool reserve_cq_entry)
{
 atomic_t *free_slots =
   &hdev->completion_queue[q->hw_queue_id].free_slots_cnt;
 int free_slots_cnt;


 free_slots_cnt = queue_free_slots(q, HL_QUEUE_LENGTH);

 if (free_slots_cnt < num_of_entries) {
  dev_dbg(hdev->dev, "Queue %d doesn't have room for %d CBs\n",
   q->hw_queue_id, num_of_entries);
  return -EAGAIN;
 }

 if (reserve_cq_entry) {







  if (atomic_add_negative(num_of_entries * -1, free_slots)) {
   dev_dbg(hdev->dev, "No space for %d on CQ %d\n",
    num_of_entries, q->hw_queue_id);
   atomic_add(num_of_entries, free_slots);
   return -EAGAIN;
  }
 }

 return 0;
}

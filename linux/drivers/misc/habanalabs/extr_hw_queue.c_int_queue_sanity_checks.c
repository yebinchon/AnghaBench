
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_hw_queue {int hw_queue_id; int int_queue_len; } ;
struct hl_device {int dev; } ;


 int EAGAIN ;
 int dev_dbg (int ,char*,int ,int) ;
 int queue_free_slots (struct hl_hw_queue*,int ) ;

__attribute__((used)) static int int_queue_sanity_checks(struct hl_device *hdev,
     struct hl_hw_queue *q,
     int num_of_entries)
{
 int free_slots_cnt;


 free_slots_cnt = queue_free_slots(q, q->int_queue_len);

 if (free_slots_cnt < num_of_entries) {
  dev_dbg(hdev->dev, "Queue %d doesn't have room for %d CBs\n",
   q->hw_queue_id, num_of_entries);
  return -EAGAIN;
 }

 return 0;
}

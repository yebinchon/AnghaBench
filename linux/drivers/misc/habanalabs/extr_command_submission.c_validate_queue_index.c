
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct hw_queue_properties {scalar_t__ type; scalar_t__ driver_only; } ;
struct asic_fixed_properties {struct hw_queue_properties* hw_queues_props; } ;
struct hl_device {int dev; struct asic_fixed_properties asic_prop; } ;
struct hl_cs_chunk {size_t queue_index; int cb_handle; int cb_size; } ;
struct hl_cb_mgr {int dummy; } ;
struct hl_cb {scalar_t__ size; int lock; int cs_cnt; } ;


 size_t HL_MAX_QUEUES ;
 int PAGE_SHIFT ;
 scalar_t__ QUEUE_TYPE_INT ;
 scalar_t__ QUEUE_TYPE_NA ;
 int dev_err (int ,char*,scalar_t__) ;
 struct hl_cb* hl_cb_get (struct hl_device*,struct hl_cb_mgr*,scalar_t__) ;
 int hl_cb_put (struct hl_cb*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct hl_cb *validate_queue_index(struct hl_device *hdev,
     struct hl_cb_mgr *cb_mgr,
     struct hl_cs_chunk *chunk,
     bool *ext_queue)
{
 struct asic_fixed_properties *asic = &hdev->asic_prop;
 struct hw_queue_properties *hw_queue_prop;
 u32 cb_handle;
 struct hl_cb *cb;


 *ext_queue = 1;

 hw_queue_prop = &asic->hw_queues_props[chunk->queue_index];

 if ((chunk->queue_index >= HL_MAX_QUEUES) ||
   (hw_queue_prop->type == QUEUE_TYPE_NA)) {
  dev_err(hdev->dev, "Queue index %d is invalid\n",
   chunk->queue_index);
  return ((void*)0);
 }

 if (hw_queue_prop->driver_only) {
  dev_err(hdev->dev,
   "Queue index %d is restricted for the kernel driver\n",
   chunk->queue_index);
  return ((void*)0);
 } else if (hw_queue_prop->type == QUEUE_TYPE_INT) {
  *ext_queue = 0;
  return (struct hl_cb *) (uintptr_t) chunk->cb_handle;
 }


 cb_handle = (u32) (chunk->cb_handle >> PAGE_SHIFT);

 cb = hl_cb_get(hdev, cb_mgr, cb_handle);
 if (!cb) {
  dev_err(hdev->dev, "CB handle 0x%x invalid\n", cb_handle);
  return ((void*)0);
 }

 if ((chunk->cb_size < 8) || (chunk->cb_size > cb->size)) {
  dev_err(hdev->dev, "CB size %u invalid\n", chunk->cb_size);
  goto release_cb;
 }

 spin_lock(&cb->lock);
 cb->cs_cnt++;
 spin_unlock(&cb->lock);

 return cb;

release_cb:
 hl_cb_put(cb);
 return ((void*)0);
}

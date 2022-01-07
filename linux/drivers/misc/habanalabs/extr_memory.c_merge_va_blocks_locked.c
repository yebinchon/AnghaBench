
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct hl_vm_va_block {scalar_t__ end; scalar_t__ start; scalar_t__ size; struct list_head node; } ;
struct hl_device {int dummy; } ;


 int kfree (struct hl_vm_va_block*) ;
 int list_del (struct list_head*) ;
 struct hl_vm_va_block* list_next_entry (struct hl_vm_va_block*,int ) ;
 struct hl_vm_va_block* list_prev_entry (struct hl_vm_va_block*,int ) ;
 int node ;

__attribute__((used)) static void merge_va_blocks_locked(struct hl_device *hdev,
  struct list_head *va_list, struct hl_vm_va_block *va_block)
{
 struct hl_vm_va_block *prev, *next;

 prev = list_prev_entry(va_block, node);
 if (&prev->node != va_list && prev->end + 1 == va_block->start) {
  prev->end = va_block->end;
  prev->size = prev->end - prev->start;
  list_del(&va_block->node);
  kfree(va_block);
  va_block = prev;
 }

 next = list_next_entry(va_block, node);
 if (&next->node != va_list && va_block->end + 1 == next->start) {
  next->start = va_block->start;
  next->size = next->end - next->start;
  list_del(&va_block->node);
  kfree(va_block);
 }
}

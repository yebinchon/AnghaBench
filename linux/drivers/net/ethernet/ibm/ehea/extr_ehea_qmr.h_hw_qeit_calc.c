
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u64 ;
struct hw_queue {size_t queue_length; struct ehea_page** queue_pages; } ;
struct ehea_page {void* entries; } ;


 size_t EHEA_PAGESHIFT ;
 int EHEA_PAGESIZE ;

__attribute__((used)) static inline void *hw_qeit_calc(struct hw_queue *queue, u64 q_offset)
{
 struct ehea_page *current_page;

 if (q_offset >= queue->queue_length)
  q_offset -= queue->queue_length;
 current_page = (queue->queue_pages)[q_offset >> EHEA_PAGESHIFT];
 return &current_page->entries[q_offset & (EHEA_PAGESIZE - 1)];
}

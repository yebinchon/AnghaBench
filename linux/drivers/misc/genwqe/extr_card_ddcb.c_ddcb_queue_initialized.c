
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ddcb_queue {int * ddcb_vaddr; } ;



__attribute__((used)) static int ddcb_queue_initialized(struct ddcb_queue *queue)
{
 return queue->ddcb_vaddr != ((void*)0);
}

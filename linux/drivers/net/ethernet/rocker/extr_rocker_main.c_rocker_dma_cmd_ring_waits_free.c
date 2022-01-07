
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rocker_dma_ring_info {int size; int * desc_info; } ;
struct rocker {struct rocker_dma_ring_info cmd_ring; } ;


 int rocker_dma_cmd_ring_wait_free (int *) ;

__attribute__((used)) static void rocker_dma_cmd_ring_waits_free(const struct rocker *rocker)
{
 const struct rocker_dma_ring_info *cmd_ring = &rocker->cmd_ring;
 int i;

 for (i = 0; i < cmd_ring->size; i++)
  rocker_dma_cmd_ring_wait_free(&cmd_ring->desc_info[i]);
}

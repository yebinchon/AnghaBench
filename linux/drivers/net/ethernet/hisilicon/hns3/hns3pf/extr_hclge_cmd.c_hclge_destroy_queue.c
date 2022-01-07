
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hclge_cmq_ring {int lock; } ;


 int hclge_free_cmd_desc (struct hclge_cmq_ring*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void hclge_destroy_queue(struct hclge_cmq_ring *ring)
{
 spin_lock(&ring->lock);
 hclge_free_cmd_desc(ring);
 spin_unlock(&ring->lock);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netfront_queue {int * grant_rx_ref; } ;
typedef int grant_ref_t ;
typedef int RING_IDX ;


 int GRANT_INVALID_REF ;
 int xennet_rxidx (int ) ;

__attribute__((used)) static grant_ref_t xennet_get_rx_ref(struct netfront_queue *queue,
         RING_IDX ri)
{
 int i = xennet_rxidx(ri);
 grant_ref_t ref = queue->grant_rx_ref[i];
 queue->grant_rx_ref[i] = GRANT_INVALID_REF;
 return ref;
}

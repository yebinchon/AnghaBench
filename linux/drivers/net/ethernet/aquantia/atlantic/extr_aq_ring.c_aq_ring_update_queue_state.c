
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aq_ring_s {int dummy; } ;


 scalar_t__ AQ_CFG_RESTART_DESC_THRES ;
 scalar_t__ AQ_CFG_SKB_FRAGS_MAX ;
 scalar_t__ aq_ring_avail_dx (struct aq_ring_s*) ;
 int aq_ring_queue_stop (struct aq_ring_s*) ;
 int aq_ring_queue_wake (struct aq_ring_s*) ;

void aq_ring_update_queue_state(struct aq_ring_s *ring)
{
 if (aq_ring_avail_dx(ring) <= AQ_CFG_SKB_FRAGS_MAX)
  aq_ring_queue_stop(ring);
 else if (aq_ring_avail_dx(ring) > AQ_CFG_RESTART_DESC_THRES)
  aq_ring_queue_wake(ring);
}

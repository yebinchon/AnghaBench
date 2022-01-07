
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ice_ring_container {unsigned int target_itr; unsigned long next_update; unsigned int total_pkts; unsigned int total_bytes; int current_itr; int itr_setting; int ring; } ;
struct TYPE_3__ {unsigned int target_itr; int current_itr; } ;
struct ice_q_vector {TYPE_2__* vsi; struct ice_ring_container rx; TYPE_1__ tx; scalar_t__ itr_countdown; } ;
struct TYPE_4__ {int port_info; } ;


 unsigned int ICE_ITR_ADAPTIVE_BULK ;
 unsigned int ICE_ITR_ADAPTIVE_LATENCY ;
 unsigned int ICE_ITR_ADAPTIVE_MAX_USECS ;
 unsigned int ICE_ITR_ADAPTIVE_MIN_INC ;
 unsigned int ICE_ITR_ADAPTIVE_MIN_USECS ;
 unsigned int ICE_ITR_MASK ;
 int ITR_IS_DYNAMIC (int ) ;
 unsigned int ice_adjust_itr_by_size_and_speed (int ,unsigned int,unsigned int) ;
 unsigned long jiffies ;
 unsigned int min (int ,int ) ;
 int prefetch (int ) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static void
ice_update_itr(struct ice_q_vector *q_vector, struct ice_ring_container *rc)
{
 unsigned long next_update = jiffies;
 unsigned int packets, bytes, itr;
 bool container_is_rx;

 if (!rc->ring || !ITR_IS_DYNAMIC(rc->itr_setting))
  return;







 if (q_vector->itr_countdown) {
  itr = rc->target_itr;
  goto clear_counts;
 }

 container_is_rx = (&q_vector->rx == rc);



 itr = container_is_rx ?
  ICE_ITR_ADAPTIVE_MIN_USECS | ICE_ITR_ADAPTIVE_LATENCY :
  ICE_ITR_ADAPTIVE_MAX_USECS | ICE_ITR_ADAPTIVE_LATENCY;






 if (time_after(next_update, rc->next_update))
  goto clear_counts;

 prefetch(q_vector->vsi->port_info);

 packets = rc->total_pkts;
 bytes = rc->total_bytes;

 if (container_is_rx) {





  if (packets && packets < 4 && bytes < 9000 &&
      (q_vector->tx.target_itr & ICE_ITR_ADAPTIVE_LATENCY)) {
   itr = ICE_ITR_ADAPTIVE_LATENCY;
   goto adjust_by_size_and_speed;
  }
 } else if (packets < 4) {





  if (rc->target_itr == ICE_ITR_ADAPTIVE_MAX_USECS &&
      (q_vector->rx.target_itr & ICE_ITR_MASK) ==
      ICE_ITR_ADAPTIVE_MAX_USECS)
   goto clear_counts;
 } else if (packets > 32) {



  rc->target_itr &= ~ICE_ITR_ADAPTIVE_LATENCY;
 }
 if (packets < 56) {
  itr = rc->target_itr + ICE_ITR_ADAPTIVE_MIN_INC;
  if ((itr & ICE_ITR_MASK) > ICE_ITR_ADAPTIVE_MAX_USECS) {
   itr &= ICE_ITR_ADAPTIVE_LATENCY;
   itr += ICE_ITR_ADAPTIVE_MAX_USECS;
  }
  goto clear_counts;
 }

 if (packets <= 256) {
  itr = min(q_vector->tx.current_itr, q_vector->rx.current_itr);
  itr &= ICE_ITR_MASK;





  if (packets <= 112)
   goto clear_counts;






  itr >>= 1;
  itr &= ICE_ITR_MASK;
  if (itr < ICE_ITR_ADAPTIVE_MIN_USECS)
   itr = ICE_ITR_ADAPTIVE_MIN_USECS;

  goto clear_counts;
 }







 itr = ICE_ITR_ADAPTIVE_BULK;

adjust_by_size_and_speed:


 itr = ice_adjust_itr_by_size_and_speed(q_vector->vsi->port_info,
            bytes / packets, itr);

clear_counts:

 rc->target_itr = itr;


 rc->next_update = next_update + 1;

 rc->total_bytes = 0;
 rc->total_pkts = 0;
}

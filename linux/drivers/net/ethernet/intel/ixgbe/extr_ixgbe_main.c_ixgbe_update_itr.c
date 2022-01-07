
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ixgbe_ring_container {unsigned long next_update; unsigned int total_packets; unsigned int itr; unsigned int total_bytes; int ring; } ;
struct ixgbe_q_vector {int itr; TYPE_1__* adapter; } ;
struct TYPE_2__ {int link_speed; } ;


 int DIV_ROUND_UP (unsigned int,int) ;
 unsigned int IXGBE_ITR_ADAPTIVE_BULK ;
 unsigned int IXGBE_ITR_ADAPTIVE_LATENCY ;
 unsigned int IXGBE_ITR_ADAPTIVE_MAX_USECS ;
 int IXGBE_ITR_ADAPTIVE_MIN_INC ;
 unsigned int IXGBE_ITR_ADAPTIVE_MIN_USECS ;





 unsigned long jiffies ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static void ixgbe_update_itr(struct ixgbe_q_vector *q_vector,
        struct ixgbe_ring_container *ring_container)
{
 unsigned int itr = IXGBE_ITR_ADAPTIVE_MIN_USECS |
      IXGBE_ITR_ADAPTIVE_LATENCY;
 unsigned int avg_wire_size, packets, bytes;
 unsigned long next_update = jiffies;




 if (!ring_container->ring)
  return;






 if (time_after(next_update, ring_container->next_update))
  goto clear_counts;

 packets = ring_container->total_packets;
 if (!packets) {
  itr = (q_vector->itr >> 2) + IXGBE_ITR_ADAPTIVE_MIN_INC;
  if (itr > IXGBE_ITR_ADAPTIVE_MAX_USECS)
   itr = IXGBE_ITR_ADAPTIVE_MAX_USECS;
  itr += ring_container->itr & IXGBE_ITR_ADAPTIVE_LATENCY;
  goto clear_counts;
 }

 bytes = ring_container->total_bytes;





 if (packets < 4 && bytes < 9000) {
  itr = IXGBE_ITR_ADAPTIVE_LATENCY;
  goto adjust_by_size;
 }





 if (packets < 48) {
  itr = (q_vector->itr >> 2) + IXGBE_ITR_ADAPTIVE_MIN_INC;
  if (itr > IXGBE_ITR_ADAPTIVE_MAX_USECS)
   itr = IXGBE_ITR_ADAPTIVE_MAX_USECS;
  goto clear_counts;
 }




 if (packets < 96) {
  itr = q_vector->itr >> 2;
  goto clear_counts;
 }





 if (packets < 256) {
  itr = q_vector->itr >> 3;
  if (itr < IXGBE_ITR_ADAPTIVE_MIN_USECS)
   itr = IXGBE_ITR_ADAPTIVE_MIN_USECS;
  goto clear_counts;
 }







 itr = IXGBE_ITR_ADAPTIVE_BULK;

adjust_by_size:





 avg_wire_size = bytes / packets;
 if (avg_wire_size <= 60) {

  avg_wire_size = 5120;
 } else if (avg_wire_size <= 316) {

  avg_wire_size *= 40;
  avg_wire_size += 2720;
 } else if (avg_wire_size <= 1084) {

  avg_wire_size *= 15;
  avg_wire_size += 11452;
 } else if (avg_wire_size < 1968) {

  avg_wire_size *= 5;
  avg_wire_size += 22420;
 } else {

  avg_wire_size = 32256;
 }




 if (itr & IXGBE_ITR_ADAPTIVE_LATENCY)
  avg_wire_size >>= 1;
 switch (q_vector->adapter->link_speed) {
 case 131:
 case 132:
 default:
  itr += DIV_ROUND_UP(avg_wire_size,
        IXGBE_ITR_ADAPTIVE_MIN_INC * 256) *
         IXGBE_ITR_ADAPTIVE_MIN_INC;
  break;
 case 128:
 case 129:
 case 130:
  if (avg_wire_size > 8064)
   avg_wire_size = 8064;
  itr += DIV_ROUND_UP(avg_wire_size,
        IXGBE_ITR_ADAPTIVE_MIN_INC * 64) *
         IXGBE_ITR_ADAPTIVE_MIN_INC;
  break;
 }

clear_counts:

 ring_container->itr = itr;


 ring_container->next_update = next_update + 1;

 ring_container->total_bytes = 0;
 ring_container->total_packets = 0;
}

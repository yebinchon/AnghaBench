
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct i40e_ring_container {unsigned long next_update; unsigned int target_itr; unsigned int total_packets; unsigned int total_bytes; TYPE_1__* ring; } ;
struct TYPE_6__ {unsigned int target_itr; int current_itr; } ;
struct TYPE_5__ {unsigned int target_itr; int current_itr; } ;
struct i40e_q_vector {TYPE_3__ rx; TYPE_2__ tx; scalar_t__ itr_countdown; } ;
struct TYPE_4__ {int itr_setting; } ;


 unsigned int DIV_ROUND_UP (unsigned int,int ) ;
 unsigned int I40E_ITR_ADAPTIVE_BULK ;
 unsigned int I40E_ITR_ADAPTIVE_LATENCY ;
 unsigned int I40E_ITR_ADAPTIVE_MAX_USECS ;
 unsigned int I40E_ITR_ADAPTIVE_MIN_INC ;
 unsigned int I40E_ITR_ADAPTIVE_MIN_USECS ;
 unsigned int I40E_ITR_MASK ;
 int ITR_IS_DYNAMIC (int ) ;
 scalar_t__ i40e_container_is_rx (struct i40e_q_vector*,struct i40e_ring_container*) ;
 int i40e_itr_divisor (struct i40e_q_vector*) ;
 unsigned long jiffies ;
 unsigned int min (int ,int ) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static void i40e_update_itr(struct i40e_q_vector *q_vector,
       struct i40e_ring_container *rc)
{
 unsigned int avg_wire_size, packets, bytes, itr;
 unsigned long next_update = jiffies;




 if (!rc->ring || !ITR_IS_DYNAMIC(rc->ring->itr_setting))
  return;




 itr = i40e_container_is_rx(q_vector, rc) ?
       I40E_ITR_ADAPTIVE_MIN_USECS | I40E_ITR_ADAPTIVE_LATENCY :
       I40E_ITR_ADAPTIVE_MAX_USECS | I40E_ITR_ADAPTIVE_LATENCY;






 if (time_after(next_update, rc->next_update))
  goto clear_counts;







 if (q_vector->itr_countdown) {
  itr = rc->target_itr;
  goto clear_counts;
 }

 packets = rc->total_packets;
 bytes = rc->total_bytes;

 if (i40e_container_is_rx(q_vector, rc)) {





  if (packets && packets < 4 && bytes < 9000 &&
      (q_vector->tx.target_itr & I40E_ITR_ADAPTIVE_LATENCY)) {
   itr = I40E_ITR_ADAPTIVE_LATENCY;
   goto adjust_by_size;
  }
 } else if (packets < 4) {





  if (rc->target_itr == I40E_ITR_ADAPTIVE_MAX_USECS &&
      (q_vector->rx.target_itr & I40E_ITR_MASK) ==
       I40E_ITR_ADAPTIVE_MAX_USECS)
   goto clear_counts;
 } else if (packets > 32) {



  rc->target_itr &= ~I40E_ITR_ADAPTIVE_LATENCY;
 }
 if (packets < 56) {
  itr = rc->target_itr + I40E_ITR_ADAPTIVE_MIN_INC;
  if ((itr & I40E_ITR_MASK) > I40E_ITR_ADAPTIVE_MAX_USECS) {
   itr &= I40E_ITR_ADAPTIVE_LATENCY;
   itr += I40E_ITR_ADAPTIVE_MAX_USECS;
  }
  goto clear_counts;
 }

 if (packets <= 256) {
  itr = min(q_vector->tx.current_itr, q_vector->rx.current_itr);
  itr &= I40E_ITR_MASK;





  if (packets <= 112)
   goto clear_counts;






  itr /= 2;
  itr &= I40E_ITR_MASK;
  if (itr < I40E_ITR_ADAPTIVE_MIN_USECS)
   itr = I40E_ITR_ADAPTIVE_MIN_USECS;

  goto clear_counts;
 }







 itr = I40E_ITR_ADAPTIVE_BULK;

adjust_by_size:





 avg_wire_size = bytes / packets;
 if (avg_wire_size <= 60) {

  avg_wire_size = 4096;
 } else if (avg_wire_size <= 380) {

  avg_wire_size *= 40;
  avg_wire_size += 1696;
 } else if (avg_wire_size <= 1084) {

  avg_wire_size *= 15;
  avg_wire_size += 11452;
 } else if (avg_wire_size <= 1980) {

  avg_wire_size *= 5;
  avg_wire_size += 22420;
 } else {

  avg_wire_size = 32256;
 }




 if (itr & I40E_ITR_ADAPTIVE_LATENCY)
  avg_wire_size /= 2;
 itr += DIV_ROUND_UP(avg_wire_size, i40e_itr_divisor(q_vector)) *
        I40E_ITR_ADAPTIVE_MIN_INC;

 if ((itr & I40E_ITR_MASK) > I40E_ITR_ADAPTIVE_MAX_USECS) {
  itr &= I40E_ITR_ADAPTIVE_LATENCY;
  itr += I40E_ITR_ADAPTIVE_MAX_USECS;
 }

clear_counts:

 rc->target_itr = itr;


 rc->next_update = next_update + 1;

 rc->total_bytes = 0;
 rc->total_packets = 0;
}

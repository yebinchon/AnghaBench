
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fm10k_ring_container {unsigned int itr; unsigned int total_packets; unsigned int total_bytes; int itr_scale; } ;


 int BIT (unsigned int) ;
 unsigned int FM10K_ITR_ADAPTIVE ;
 int ITR_IS_ADAPTIVE (unsigned int) ;
 int READ_ONCE (int ) ;

__attribute__((used)) static void fm10k_update_itr(struct fm10k_ring_container *ring_container)
{
 unsigned int avg_wire_size, packets, itr_round;


 if (!ITR_IS_ADAPTIVE(ring_container->itr))
  goto clear_counts;

 packets = ring_container->total_packets;
 if (!packets)
  goto clear_counts;

 avg_wire_size = ring_container->total_bytes / packets;
 if (avg_wire_size <= 360) {

  avg_wire_size *= 8;
  avg_wire_size += 376;
 } else if (avg_wire_size <= 1152) {

  avg_wire_size *= 3;
  avg_wire_size += 2176;
 } else if (avg_wire_size <= 1920) {

  avg_wire_size += 4480;
 } else {

  avg_wire_size = 6656;
 }





 itr_round = READ_ONCE(ring_container->itr_scale) + 8;
 avg_wire_size += BIT(itr_round) - 1;
 avg_wire_size >>= itr_round;


 ring_container->itr = avg_wire_size | FM10K_ITR_ADAPTIVE;

clear_counts:
 ring_container->total_bytes = 0;
 ring_container->total_packets = 0;
}

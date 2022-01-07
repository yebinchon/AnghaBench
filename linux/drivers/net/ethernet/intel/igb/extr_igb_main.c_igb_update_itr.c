
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct igb_ring_container {unsigned int total_packets; unsigned int total_bytes; int itr; } ;
struct igb_q_vector {int dummy; } ;






__attribute__((used)) static void igb_update_itr(struct igb_q_vector *q_vector,
      struct igb_ring_container *ring_container)
{
 unsigned int packets = ring_container->total_packets;
 unsigned int bytes = ring_container->total_bytes;
 u8 itrval = ring_container->itr;


 if (packets == 0)
  return;

 switch (itrval) {
 case 128:

  if (bytes/packets > 8000)
   itrval = 130;
  else if ((packets < 5) && (bytes > 512))
   itrval = 129;
  break;
 case 129:
  if (bytes > 10000) {

   if (bytes/packets > 8000)
    itrval = 130;
   else if ((packets < 10) || ((bytes/packets) > 1200))
    itrval = 130;
   else if ((packets > 35))
    itrval = 128;
  } else if (bytes/packets > 2000) {
   itrval = 130;
  } else if (packets <= 2 && bytes < 512) {
   itrval = 128;
  }
  break;
 case 130:
  if (bytes > 25000) {
   if (packets > 35)
    itrval = 129;
  } else if (bytes < 1500) {
   itrval = 129;
  }
  break;
 }


 ring_container->total_bytes = 0;
 ring_container->total_packets = 0;


 ring_container->itr = itrval;
}

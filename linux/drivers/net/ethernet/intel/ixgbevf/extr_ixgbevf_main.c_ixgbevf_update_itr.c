
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct ixgbevf_ring_container {int total_bytes; int total_packets; int itr; } ;
struct ixgbevf_q_vector {int itr; } ;






__attribute__((used)) static void ixgbevf_update_itr(struct ixgbevf_q_vector *q_vector,
          struct ixgbevf_ring_container *ring_container)
{
 int bytes = ring_container->total_bytes;
 int packets = ring_container->total_packets;
 u32 timepassed_us;
 u64 bytes_perint;
 u8 itr_setting = ring_container->itr;

 if (packets == 0)
  return;







 timepassed_us = q_vector->itr >> 2;
 if (timepassed_us == 0)
  return;

 bytes_perint = bytes / timepassed_us;

 switch (itr_setting) {
 case 128:
  if (bytes_perint > 10)
   itr_setting = 129;
  break;
 case 129:
  if (bytes_perint > 20)
   itr_setting = 130;
  else if (bytes_perint <= 10)
   itr_setting = 128;
  break;
 case 130:
  if (bytes_perint <= 20)
   itr_setting = 129;
  break;
 }


 ring_container->total_bytes = 0;
 ring_container->total_packets = 0;


 ring_container->itr = itr_setting;
}

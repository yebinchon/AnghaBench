
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int flow_level; } ;
struct hns3_enet_ring_group {int total_packets; int total_bytes; TYPE_2__ coal; TYPE_1__* ring; } ;
struct hns3_enet_tqp_vector {struct hns3_enet_ring_group rx_group; scalar_t__ last_jiffies; } ;
typedef enum hns3_flow_level_range { ____Placeholder_hns3_flow_level_range } hns3_flow_level_range ;
struct TYPE_3__ {struct hns3_enet_tqp_vector* tqp_vector; } ;






 int HNS3_RX_LOW_BYTE_RATE ;
 int HNS3_RX_MID_BYTE_RATE ;
 int HNS3_RX_ULTRA_PACKET_RATE ;
 int do_div (int,int ) ;
 scalar_t__ jiffies ;
 int jiffies_to_msecs (scalar_t__) ;

__attribute__((used)) static bool hns3_get_new_flow_lvl(struct hns3_enet_ring_group *ring_group)
{




 enum hns3_flow_level_range new_flow_level;
 struct hns3_enet_tqp_vector *tqp_vector;
 int packets_per_msecs, bytes_per_msecs;
 u32 time_passed_ms;

 tqp_vector = ring_group->ring->tqp_vector;
 time_passed_ms =
  jiffies_to_msecs(jiffies - tqp_vector->last_jiffies);
 if (!time_passed_ms)
  return 0;

 do_div(ring_group->total_packets, time_passed_ms);
 packets_per_msecs = ring_group->total_packets;

 do_div(ring_group->total_bytes, time_passed_ms);
 bytes_per_msecs = ring_group->total_bytes;

 new_flow_level = ring_group->coal.flow_level;







 switch (new_flow_level) {
 case 130:
  if (bytes_per_msecs > 10000)
   new_flow_level = 129;
  break;
 case 129:
  if (bytes_per_msecs > 20000)
   new_flow_level = 131;
  else if (bytes_per_msecs <= 10000)
   new_flow_level = 130;
  break;
 case 131:
 case 128:
 default:
  if (bytes_per_msecs <= 20000)
   new_flow_level = 129;
  break;
 }

 if (packets_per_msecs > 40 &&
     &tqp_vector->rx_group == ring_group)
  new_flow_level = 128;

 ring_group->total_bytes = 0;
 ring_group->total_packets = 0;
 ring_group->coal.flow_level = new_flow_level;

 return 1;
}

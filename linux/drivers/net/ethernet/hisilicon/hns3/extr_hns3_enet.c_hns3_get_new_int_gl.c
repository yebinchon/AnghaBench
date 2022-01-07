
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct hns3_enet_tqp_vector {int last_jiffies; } ;
struct TYPE_3__ {scalar_t__ int_gl; int flow_level; } ;
struct hns3_enet_ring_group {scalar_t__ total_packets; TYPE_1__ coal; TYPE_2__* ring; } ;
struct TYPE_4__ {struct hns3_enet_tqp_vector* tqp_vector; } ;






 scalar_t__ HNS3_INT_GL_18K ;
 scalar_t__ HNS3_INT_GL_20K ;
 void* HNS3_INT_GL_50K ;
 scalar_t__ HNS3_INT_GL_8K ;
 int hns3_get_new_flow_lvl (struct hns3_enet_ring_group*) ;

__attribute__((used)) static bool hns3_get_new_int_gl(struct hns3_enet_ring_group *ring_group)
{
 struct hns3_enet_tqp_vector *tqp_vector;
 u16 new_int_gl;

 if (!ring_group->ring)
  return 0;

 tqp_vector = ring_group->ring->tqp_vector;
 if (!tqp_vector->last_jiffies)
  return 0;

 if (ring_group->total_packets == 0) {
  ring_group->coal.int_gl = HNS3_INT_GL_50K;
  ring_group->coal.flow_level = 130;
  return 1;
 }

 if (!hns3_get_new_flow_lvl(ring_group))
  return 0;

 new_int_gl = ring_group->coal.int_gl;
 switch (ring_group->coal.flow_level) {
 case 130:
  new_int_gl = HNS3_INT_GL_50K;
  break;
 case 129:
  new_int_gl = HNS3_INT_GL_20K;
  break;
 case 131:
  new_int_gl = HNS3_INT_GL_18K;
  break;
 case 128:
  new_int_gl = HNS3_INT_GL_8K;
  break;
 default:
  break;
 }

 if (new_int_gl != ring_group->coal.int_gl) {
  ring_group->coal.int_gl = new_int_gl;
  return 1;
 }
 return 0;
}

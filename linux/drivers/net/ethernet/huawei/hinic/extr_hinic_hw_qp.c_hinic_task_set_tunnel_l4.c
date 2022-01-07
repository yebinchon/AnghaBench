
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hinic_sq_task {int pkt_info2; } ;
typedef enum hinic_l4_tunnel_type { ____Placeholder_hinic_l4_tunnel_type } hinic_l4_tunnel_type ;


 int HINIC_SQ_TASK_INFO2_SET (int,int ) ;
 int TUNNEL_L4LEN ;
 int TUNNEL_L4TYPE ;

void hinic_task_set_tunnel_l4(struct hinic_sq_task *task,
         enum hinic_l4_tunnel_type l4_type,
         u32 tunnel_len)
{
 task->pkt_info2 |= HINIC_SQ_TASK_INFO2_SET(l4_type, TUNNEL_L4TYPE) |
      HINIC_SQ_TASK_INFO2_SET(tunnel_len, TUNNEL_L4LEN);
}

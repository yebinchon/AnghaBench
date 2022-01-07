
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hinic_sq_task {int ufo_v6_identify; int pkt_info1; int pkt_info0; } ;
typedef enum hinic_l4_offload_type { ____Placeholder_hinic_l4_offload_type } hinic_l4_offload_type ;


 int HINIC_SQ_CTRL_CLEAR (int,int ) ;
 int HINIC_SQ_CTRL_SET (int,int ) ;
 int HINIC_SQ_TASK_INFO0_SET (int,int ) ;
 int HINIC_SQ_TASK_INFO1_SET (int,int ) ;
 int INNER_L4LEN ;
 int L4_OFFLOAD ;
 int QUEUE_INFO_MSS ;
 int QUEUE_INFO_PLDOFF ;
 int QUEUE_INFO_TCPUDP_CS ;
 int QUEUE_INFO_TSO ;
 int QUEUE_INFO_UFO ;
 int TCP_OFFLOAD_ENABLE ;
 int TSO_FLAG ;
 int UDP_OFFLOAD_ENABLE ;

void hinic_set_tso_inner_l4(struct hinic_sq_task *task, u32 *queue_info,
       enum hinic_l4_offload_type l4_offload,
       u32 l4_len, u32 offset, u32 ip_ident, u32 mss)
{
 u32 tso = 0, ufo = 0;

 if (l4_offload == TCP_OFFLOAD_ENABLE)
  tso = 1;
 else if (l4_offload == UDP_OFFLOAD_ENABLE)
  ufo = 1;

 task->ufo_v6_identify = ip_ident;

 task->pkt_info0 |= HINIC_SQ_TASK_INFO0_SET(l4_offload, L4_OFFLOAD);
 task->pkt_info0 |= HINIC_SQ_TASK_INFO0_SET(tso || ufo, TSO_FLAG);
 task->pkt_info1 |= HINIC_SQ_TASK_INFO1_SET(l4_len, INNER_L4LEN);

 *queue_info |= HINIC_SQ_CTRL_SET(offset, QUEUE_INFO_PLDOFF) |
         HINIC_SQ_CTRL_SET(tso, QUEUE_INFO_TSO) |
         HINIC_SQ_CTRL_SET(ufo, QUEUE_INFO_UFO) |
         HINIC_SQ_CTRL_SET(!!l4_offload, QUEUE_INFO_TCPUDP_CS);


 *queue_info = HINIC_SQ_CTRL_CLEAR(*queue_info, QUEUE_INFO_MSS);
 *queue_info |= HINIC_SQ_CTRL_SET(mss, QUEUE_INFO_MSS);
}

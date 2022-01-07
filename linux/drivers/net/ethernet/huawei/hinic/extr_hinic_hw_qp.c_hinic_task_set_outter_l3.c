
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hinic_sq_task {int pkt_info2; } ;
typedef enum hinic_l3_offload_type { ____Placeholder_hinic_l3_offload_type } hinic_l3_offload_type ;


 int HINIC_SQ_TASK_INFO2_SET (int,int ) ;
 int OUTER_L3LEN ;
 int OUTER_L3TYPE ;

void hinic_task_set_outter_l3(struct hinic_sq_task *task,
         enum hinic_l3_offload_type l3_type,
         u32 network_len)
{
 task->pkt_info2 |= HINIC_SQ_TASK_INFO2_SET(l3_type, OUTER_L3TYPE) |
      HINIC_SQ_TASK_INFO2_SET(network_len, OUTER_L3LEN);
}

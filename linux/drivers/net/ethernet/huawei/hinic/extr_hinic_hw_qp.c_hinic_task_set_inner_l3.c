
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hinic_sq_task {int pkt_info1; int pkt_info0; } ;
typedef enum hinic_l3_offload_type { ____Placeholder_hinic_l3_offload_type } hinic_l3_offload_type ;


 int HINIC_SQ_TASK_INFO0_SET (int,int ) ;
 int HINIC_SQ_TASK_INFO1_SET (int ,int ) ;
 int INNER_L3LEN ;
 int INNER_L3TYPE ;

void hinic_task_set_inner_l3(struct hinic_sq_task *task,
        enum hinic_l3_offload_type l3_type,
        u32 network_len)
{
 task->pkt_info0 |= HINIC_SQ_TASK_INFO0_SET(l3_type, INNER_L3TYPE);
 task->pkt_info1 |= HINIC_SQ_TASK_INFO1_SET(network_len, INNER_L3LEN);
}

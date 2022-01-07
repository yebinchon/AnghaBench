
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hinic_sq_task {int pkt_info0; } ;


 int HINIC_SQ_TASK_INFO0_SET (int ,int ) ;
 int L2HDR_LEN ;

void hinic_task_set_l2hdr(struct hinic_sq_task *task, u32 len)
{
 task->pkt_info0 |= HINIC_SQ_TASK_INFO0_SET(len, L2HDR_LEN);
}

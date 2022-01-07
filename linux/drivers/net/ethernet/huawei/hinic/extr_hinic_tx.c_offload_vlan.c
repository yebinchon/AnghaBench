
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef unsigned int u16 ;
struct hinic_sq_task {int pkt_info0; } ;


 int HINIC_SQ_CTRL_SET (unsigned int,int ) ;
 int HINIC_SQ_TASK_INFO0_SET (unsigned int,int ) ;
 int QUEUE_INFO_PRI ;
 int VLAN_OFFLOAD ;
 int VLAN_TAG ;

__attribute__((used)) static void offload_vlan(struct hinic_sq_task *task, u32 *queue_info,
    u16 vlan_tag, u16 vlan_pri)
{
 task->pkt_info0 |= HINIC_SQ_TASK_INFO0_SET(vlan_tag, VLAN_TAG) |
    HINIC_SQ_TASK_INFO0_SET(1U, VLAN_OFFLOAD);

 *queue_info |= HINIC_SQ_CTRL_SET(vlan_pri, QUEUE_INFO_PRI);
}

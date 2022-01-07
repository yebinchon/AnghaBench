
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef size_t u32 ;
struct status_desc {int * status_desc_data; } ;
struct qlcnic_host_sds_ring {size_t consumer; int crb_sts_consumer; int num_desc; struct status_desc* desc_head; struct qlcnic_adapter* adapter; } ;
struct qlcnic_adapter {int dummy; } ;


 int QLCNIC_FETCH_RING_ID (int ) ;
 int STATUS_OWNER_PHANTOM ;
 int cpu_to_le64 (int ) ;
 size_t get_next_index (size_t,int ) ;
 int le64_to_cpu (int ) ;
 int qlcnic_83xx_opcode (int ) ;
 int qlcnic_83xx_process_rcv_diag (struct qlcnic_adapter*,int,int *) ;
 int writel (size_t,int ) ;

void qlcnic_83xx_process_rcv_ring_diag(struct qlcnic_host_sds_ring *sds_ring)
{
 struct qlcnic_adapter *adapter = sds_ring->adapter;
 struct status_desc *desc;
 u64 sts_data[2];
 int ring, opcode;
 u32 consumer = sds_ring->consumer;

 desc = &sds_ring->desc_head[consumer];
 sts_data[0] = le64_to_cpu(desc->status_desc_data[0]);
 sts_data[1] = le64_to_cpu(desc->status_desc_data[1]);
 opcode = qlcnic_83xx_opcode(sts_data[1]);
 if (!opcode)
  return;

 ring = QLCNIC_FETCH_RING_ID(sts_data[0]);
 qlcnic_83xx_process_rcv_diag(adapter, ring, sts_data);
 desc = &sds_ring->desc_head[consumer];
 desc->status_desc_data[0] = cpu_to_le64(STATUS_OWNER_PHANTOM);
 consumer = get_next_index(consumer, sds_ring->num_desc);
 sds_ring->consumer = consumer;
 writel(consumer, sds_ring->crb_sts_consumer);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef size_t u32 ;
struct status_desc {int * status_desc_data; } ;
struct qlcnic_host_sds_ring {size_t consumer; int crb_sts_consumer; int num_desc; struct status_desc* desc_head; struct qlcnic_adapter* adapter; } ;
struct qlcnic_adapter {int dummy; } ;



 int STATUS_OWNER_HOST ;
 int STATUS_OWNER_PHANTOM ;
 int cpu_to_le64 (int ) ;
 size_t get_next_index (size_t,int ) ;
 int le64_to_cpu (int ) ;
 int qlcnic_get_sts_desc_cnt (int) ;
 int qlcnic_get_sts_opcode (int) ;
 int qlcnic_get_sts_type (int) ;
 int qlcnic_handle_fw_message (int,size_t,struct qlcnic_host_sds_ring*) ;
 int qlcnic_process_rcv_diag (struct qlcnic_adapter*,int,int) ;
 int writel (size_t,int ) ;

void qlcnic_82xx_process_rcv_ring_diag(struct qlcnic_host_sds_ring *sds_ring)
{
 struct qlcnic_adapter *adapter = sds_ring->adapter;
 struct status_desc *desc;
 u64 sts_data0;
 int ring, opcode, desc_cnt;

 u32 consumer = sds_ring->consumer;

 desc = &sds_ring->desc_head[consumer];
 sts_data0 = le64_to_cpu(desc->status_desc_data[0]);

 if (!(sts_data0 & STATUS_OWNER_HOST))
  return;

 desc_cnt = qlcnic_get_sts_desc_cnt(sts_data0);
 opcode = qlcnic_get_sts_opcode(sts_data0);
 switch (opcode) {
 case 128:
  qlcnic_handle_fw_message(desc_cnt, consumer, sds_ring);
  break;
 default:
  ring = qlcnic_get_sts_type(sts_data0);
  qlcnic_process_rcv_diag(adapter, ring, sts_data0);
  break;
 }

 for (; desc_cnt > 0; desc_cnt--) {
  desc = &sds_ring->desc_head[consumer];
  desc->status_desc_data[0] = cpu_to_le64(STATUS_OWNER_PHANTOM);
  consumer = get_next_index(consumer, sds_ring->num_desc);
 }

 sds_ring->consumer = consumer;
 writel(consumer, sds_ring->crb_sts_consumer);
}

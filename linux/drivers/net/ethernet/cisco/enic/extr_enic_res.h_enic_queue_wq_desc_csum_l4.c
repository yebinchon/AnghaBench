
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnic_wq {int dummy; } ;
typedef int dma_addr_t ;


 int WQ_ENET_OFFLOAD_MODE_CSUM_L4 ;
 int enic_queue_wq_desc_ex (struct vnic_wq*,void*,int ,unsigned int,unsigned int,unsigned int,int,unsigned int,int ,int,int,int,int) ;

__attribute__((used)) static inline void enic_queue_wq_desc_csum_l4(struct vnic_wq *wq,
 void *os_buf, dma_addr_t dma_addr, unsigned int len,
 unsigned int csum_offset, unsigned int hdr_len,
 int vlan_tag_insert, unsigned int vlan_tag, int eop, int loopback)
{
 enic_queue_wq_desc_ex(wq, os_buf, dma_addr, len,
  csum_offset, hdr_len, vlan_tag_insert, vlan_tag,
  WQ_ENET_OFFLOAD_MODE_CSUM_L4,
  eop, 1 , eop, loopback);
}

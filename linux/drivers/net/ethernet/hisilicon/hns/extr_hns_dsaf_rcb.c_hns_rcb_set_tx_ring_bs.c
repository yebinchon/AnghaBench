
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hnae_queue {int dummy; } ;


 int RCB_RING_TX_RING_BD_LEN_REG ;
 int dsaf_write_dev (struct hnae_queue*,int ,int ) ;
 int hns_rcb_buf_size2type (int ) ;

void hns_rcb_set_tx_ring_bs(struct hnae_queue *q, u32 buf_size)
{
 u32 bd_size_type = hns_rcb_buf_size2type(buf_size);

 dsaf_write_dev(q, RCB_RING_TX_RING_BD_LEN_REG,
         bd_size_type);
}

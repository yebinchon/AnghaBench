
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct be_queue_info {int dummy; } ;
struct be_tx_obj {struct be_queue_info q; } ;
struct be_eth_wrb {int dummy; } ;
typedef int dma_addr_t ;


 int queue_head_inc (struct be_queue_info*) ;
 struct be_eth_wrb* queue_head_node (struct be_queue_info*) ;
 int wrb_fill (struct be_eth_wrb*,int ,int) ;

__attribute__((used)) static void be_tx_setup_wrb_frag(struct be_tx_obj *txo, dma_addr_t busaddr,
     int len)
{
 struct be_eth_wrb *wrb;
 struct be_queue_info *txq = &txo->q;

 wrb = queue_head_node(txq);
 wrb_fill(wrb, busaddr, len);
 queue_head_inc(txq);
}

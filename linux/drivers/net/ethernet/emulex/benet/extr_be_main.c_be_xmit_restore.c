
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct device {int dummy; } ;
struct be_queue_info {void* head; } ;
struct be_tx_obj {struct be_queue_info q; } ;
struct be_eth_wrb {int frag_len; } ;
struct be_adapter {TYPE_1__* pdev; } ;
struct TYPE_2__ {struct device dev; } ;


 void* le32_to_cpu (int ) ;
 int queue_head_inc (struct be_queue_info*) ;
 struct be_eth_wrb* queue_head_node (struct be_queue_info*) ;
 int unmap_tx_frag (struct device*,struct be_eth_wrb*,int) ;

__attribute__((used)) static void be_xmit_restore(struct be_adapter *adapter,
       struct be_tx_obj *txo, u32 head, bool map_single,
       u32 copied)
{
 struct device *dev;
 struct be_eth_wrb *wrb;
 struct be_queue_info *txq = &txo->q;

 dev = &adapter->pdev->dev;
 txq->head = head;


 queue_head_inc(txq);
 while (copied) {
  wrb = queue_head_node(txq);
  unmap_tx_frag(dev, wrb, map_single);
  map_single = 0;
  copied -= le32_to_cpu(wrb->frag_len);
  queue_head_inc(txq);
 }

 txq->head = head;
}

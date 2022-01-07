
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct sk_buff {int protocol; int data; } ;
struct ql_rcv_buf_cb {struct sk_buff* skb; } ;
struct ql3_adapter {scalar_t__ device_id; int napi; TYPE_2__* ndev; int pdev; } ;
struct ib_mac_iocb_rsp {int length; } ;
struct TYPE_3__ {int rx_bytes; int rx_packets; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;


 int PCI_DMA_FROMDEVICE ;
 scalar_t__ QL3022_DEVICE_ID ;
 int dma_unmap_addr (struct ql_rcv_buf_cb*,int ) ;
 int dma_unmap_len (struct ql_rcv_buf_cb*,int ) ;
 int eth_type_trans (struct sk_buff*,TYPE_2__*) ;
 scalar_t__ le16_to_cpu (int ) ;
 int mapaddr ;
 int maplen ;
 int napi_gro_receive (int *,struct sk_buff*) ;
 int pci_unmap_single (int ,int ,int ,int ) ;
 int prefetch (int ) ;
 struct ql_rcv_buf_cb* ql_get_lbuf (struct ql3_adapter*) ;
 int ql_get_sbuf (struct ql3_adapter*) ;
 int ql_release_to_lrg_buf_free_list (struct ql3_adapter*,struct ql_rcv_buf_cb*) ;
 int skb_checksum_none_assert (struct sk_buff*) ;
 int skb_put (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static void ql_process_mac_rx_intr(struct ql3_adapter *qdev,
       struct ib_mac_iocb_rsp *ib_mac_rsp_ptr)
{
 struct ql_rcv_buf_cb *lrg_buf_cb1 = ((void*)0);
 struct ql_rcv_buf_cb *lrg_buf_cb2 = ((void*)0);
 struct sk_buff *skb;
 u16 length = le16_to_cpu(ib_mac_rsp_ptr->length);




 ql_get_sbuf(qdev);

 if (qdev->device_id == QL3022_DEVICE_ID)
  lrg_buf_cb1 = ql_get_lbuf(qdev);


 lrg_buf_cb2 = ql_get_lbuf(qdev);
 skb = lrg_buf_cb2->skb;

 qdev->ndev->stats.rx_packets++;
 qdev->ndev->stats.rx_bytes += length;

 skb_put(skb, length);
 pci_unmap_single(qdev->pdev,
    dma_unmap_addr(lrg_buf_cb2, mapaddr),
    dma_unmap_len(lrg_buf_cb2, maplen),
    PCI_DMA_FROMDEVICE);
 prefetch(skb->data);
 skb_checksum_none_assert(skb);
 skb->protocol = eth_type_trans(skb, qdev->ndev);

 napi_gro_receive(&qdev->napi, skb);
 lrg_buf_cb2->skb = ((void*)0);

 if (qdev->device_id == QL3022_DEVICE_ID)
  ql_release_to_lrg_buf_free_list(qdev, lrg_buf_cb1);
 ql_release_to_lrg_buf_free_list(qdev, lrg_buf_cb2);
}

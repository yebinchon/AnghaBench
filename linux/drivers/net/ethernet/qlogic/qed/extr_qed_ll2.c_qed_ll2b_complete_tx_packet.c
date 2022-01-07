
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct qed_hwfn {struct qed_dev* cdev; } ;
struct qed_dev {TYPE_3__* ll2; TYPE_1__* pdev; } ;
typedef int dma_addr_t ;
struct TYPE_6__ {int cb_cookie; TYPE_2__* cbs; } ;
struct TYPE_5__ {int (* tx_cb ) (int ,struct sk_buff*,int) ;} ;
struct TYPE_4__ {int dev; } ;


 int DMA_TO_DEVICE ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int dma_unmap_single (int *,int ,int ,int ) ;
 int skb_headlen (struct sk_buff*) ;
 int stub1 (int ,struct sk_buff*,int) ;

__attribute__((used)) static void qed_ll2b_complete_tx_packet(void *cxt,
     u8 connection_handle,
     void *cookie,
     dma_addr_t first_frag_addr,
     bool b_last_fragment,
     bool b_last_packet)
{
 struct qed_hwfn *p_hwfn = cxt;
 struct qed_dev *cdev = p_hwfn->cdev;
 struct sk_buff *skb = cookie;


 dma_unmap_single(&p_hwfn->cdev->pdev->dev, first_frag_addr,
    skb_headlen(skb), DMA_TO_DEVICE);

 if (cdev->ll2->cbs && cdev->ll2->cbs->tx_cb)
  cdev->ll2->cbs->tx_cb(cdev->ll2->cb_cookie, skb,
          b_last_fragment);

 dev_kfree_skb_any(skb);
}

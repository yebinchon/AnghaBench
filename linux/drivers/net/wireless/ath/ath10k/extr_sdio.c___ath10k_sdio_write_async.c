
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; int data; } ;
struct ath10k_sdio_bus_request {size_t eid; scalar_t__ comp; scalar_t__ htc_msg; int address; struct sk_buff* skb; } ;
struct ath10k_htc_ep {int dummy; } ;
struct TYPE_2__ {struct ath10k_htc_ep* endpoint; } ;
struct ath10k {TYPE_1__ htc; } ;


 int ath10k_htc_notify_tx_completion (struct ath10k_htc_ep*,struct sk_buff*) ;
 int ath10k_sdio_free_bus_req (struct ath10k*,struct ath10k_sdio_bus_request*) ;
 int ath10k_sdio_write (struct ath10k*,int ,int ,int ) ;
 int ath10k_warn (struct ath10k*,char*,int ,int) ;
 int complete (scalar_t__) ;

__attribute__((used)) static void __ath10k_sdio_write_async(struct ath10k *ar,
          struct ath10k_sdio_bus_request *req)
{
 struct ath10k_htc_ep *ep;
 struct sk_buff *skb;
 int ret;

 skb = req->skb;
 ret = ath10k_sdio_write(ar, req->address, skb->data, skb->len);
 if (ret)
  ath10k_warn(ar, "failed to write skb to 0x%x asynchronously: %d",
       req->address, ret);

 if (req->htc_msg) {
  ep = &ar->htc.endpoint[req->eid];
  ath10k_htc_notify_tx_completion(ep, skb);
 } else if (req->comp) {
  complete(req->comp);
 }

 ath10k_sdio_free_bus_req(ar, req);
}

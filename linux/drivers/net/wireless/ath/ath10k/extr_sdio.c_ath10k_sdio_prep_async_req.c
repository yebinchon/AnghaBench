
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct completion {int dummy; } ;
struct ath10k_sdio_bus_request {int eid; int htc_msg; int list; struct completion* comp; int address; struct sk_buff* skb; } ;
struct ath10k_sdio {int wr_async_lock; int wr_asyncq; } ;
struct ath10k {int dummy; } ;
typedef enum ath10k_htc_ep_id { ____Placeholder_ath10k_htc_ep_id } ath10k_htc_ep_id ;


 int ENOMEM ;
 struct ath10k_sdio_bus_request* ath10k_sdio_alloc_busreq (struct ath10k*) ;
 struct ath10k_sdio* ath10k_sdio_priv (struct ath10k*) ;
 int ath10k_warn (struct ath10k*,char*) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int ath10k_sdio_prep_async_req(struct ath10k *ar, u32 addr,
          struct sk_buff *skb,
          struct completion *comp,
          bool htc_msg, enum ath10k_htc_ep_id eid)
{
 struct ath10k_sdio *ar_sdio = ath10k_sdio_priv(ar);
 struct ath10k_sdio_bus_request *bus_req;




 bus_req = ath10k_sdio_alloc_busreq(ar);
 if (!bus_req) {
  ath10k_warn(ar,
       "unable to allocate bus request for async request\n");
  return -ENOMEM;
 }

 bus_req->skb = skb;
 bus_req->eid = eid;
 bus_req->address = addr;
 bus_req->htc_msg = htc_msg;
 bus_req->comp = comp;

 spin_lock_bh(&ar_sdio->wr_async_lock);
 list_add_tail(&bus_req->list, &ar_sdio->wr_asyncq);
 spin_unlock_bh(&ar_sdio->wr_async_lock);

 return 0;
}

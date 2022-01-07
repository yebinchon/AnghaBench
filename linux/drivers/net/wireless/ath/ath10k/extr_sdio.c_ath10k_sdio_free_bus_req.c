
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_sdio_bus_request {int list; } ;
struct ath10k_sdio {int lock; int bus_req_freeq; } ;
struct ath10k {int dummy; } ;


 struct ath10k_sdio* ath10k_sdio_priv (struct ath10k*) ;
 int list_add_tail (int *,int *) ;
 int memset (struct ath10k_sdio_bus_request*,int ,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void ath10k_sdio_free_bus_req(struct ath10k *ar,
         struct ath10k_sdio_bus_request *bus_req)
{
 struct ath10k_sdio *ar_sdio = ath10k_sdio_priv(ar);

 memset(bus_req, 0, sizeof(*bus_req));

 spin_lock_bh(&ar_sdio->lock);
 list_add_tail(&bus_req->list, &ar_sdio->bus_req_freeq);
 spin_unlock_bh(&ar_sdio->lock);
}

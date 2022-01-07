
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hif_scatter_req {int list; } ;
struct ath6kl_sdio {int scat_lock; int scat_req; } ;
struct ath6kl {int dummy; } ;


 struct ath6kl_sdio* ath6kl_sdio_priv (struct ath6kl*) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void ath6kl_sdio_scatter_req_add(struct ath6kl *ar,
     struct hif_scatter_req *s_req)
{
 struct ath6kl_sdio *ar_sdio = ath6kl_sdio_priv(ar);

 spin_lock_bh(&ar_sdio->scat_lock);

 list_add_tail(&s_req->list, &ar_sdio->scat_req);

 spin_unlock_bh(&ar_sdio->scat_lock);
}

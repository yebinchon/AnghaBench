
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct hif_scatter_req {int req; TYPE_1__* busrequest; int scat_entries; int len; } ;
struct ath6kl_sdio {int wr_async_work; int wr_async_lock; int wr_asyncq; } ;
struct ath6kl {int ath6kl_wq; } ;
struct TYPE_2__ {int list; } ;


 int ATH6KL_DBG_SCATTER ;
 int EINVAL ;
 int HIF_SYNCHRONOUS ;
 int ath6kl_dbg (int ,char*,int ,int ) ;
 struct ath6kl_sdio* ath6kl_sdio_priv (struct ath6kl*) ;
 int ath6kl_sdio_scat_rw (struct ath6kl_sdio*,TYPE_1__*) ;
 int list_add_tail (int *,int *) ;
 int queue_work (int ,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int ath6kl_sdio_async_rw_scatter(struct ath6kl *ar,
     struct hif_scatter_req *scat_req)
{
 struct ath6kl_sdio *ar_sdio = ath6kl_sdio_priv(ar);
 u32 request = scat_req->req;
 int status = 0;

 if (!scat_req->len)
  return -EINVAL;

 ath6kl_dbg(ATH6KL_DBG_SCATTER,
     "hif-scatter: total len: %d scatter entries: %d\n",
     scat_req->len, scat_req->scat_entries);

 if (request & HIF_SYNCHRONOUS) {
  status = ath6kl_sdio_scat_rw(ar_sdio, scat_req->busrequest);
 } else {
  spin_lock_bh(&ar_sdio->wr_async_lock);
  list_add_tail(&scat_req->busrequest->list, &ar_sdio->wr_asyncq);
  spin_unlock_bh(&ar_sdio->wr_async_lock);
  queue_work(ar->ath6kl_wq, &ar_sdio->wr_async_work);
 }

 return status;
}

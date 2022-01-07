
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef void* u32 ;
struct htc_packet {int dummy; } ;
struct bus_request {int list; struct htc_packet* packet; void* request; void* length; int * buffer; void* address; } ;
struct ath6kl_sdio {int wr_async_work; int wr_async_lock; int wr_asyncq; } ;
struct ath6kl {int ath6kl_wq; } ;


 int ENOMEM ;
 scalar_t__ WARN_ON_ONCE (int) ;
 struct bus_request* ath6kl_sdio_alloc_busreq (struct ath6kl_sdio*) ;
 struct ath6kl_sdio* ath6kl_sdio_priv (struct ath6kl*) ;
 int list_add_tail (int *,int *) ;
 int queue_work (int ,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int ath6kl_sdio_write_async(struct ath6kl *ar, u32 address, u8 *buffer,
       u32 length, u32 request,
       struct htc_packet *packet)
{
 struct ath6kl_sdio *ar_sdio = ath6kl_sdio_priv(ar);
 struct bus_request *bus_req;

 bus_req = ath6kl_sdio_alloc_busreq(ar_sdio);

 if (WARN_ON_ONCE(!bus_req))
  return -ENOMEM;

 bus_req->address = address;
 bus_req->buffer = buffer;
 bus_req->length = length;
 bus_req->request = request;
 bus_req->packet = packet;

 spin_lock_bh(&ar_sdio->wr_async_lock);
 list_add_tail(&bus_req->list, &ar_sdio->wr_asyncq);
 spin_unlock_bh(&ar_sdio->wr_async_lock);
 queue_work(ar->ath6kl_wq, &ar_sdio->wr_async_work);

 return 0;
}

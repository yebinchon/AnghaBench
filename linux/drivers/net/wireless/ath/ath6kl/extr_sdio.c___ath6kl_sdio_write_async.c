
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bus_request {void* packet; int request; int length; int buffer; int address; scalar_t__ scat_req; } ;
struct ath6kl_sdio {int ar; } ;


 int ath6kl_hif_rw_comp_handler (void*,int) ;
 int ath6kl_sdio_free_bus_req (struct ath6kl_sdio*,struct bus_request*) ;
 int ath6kl_sdio_read_write_sync (int ,int ,int ,int ,int ) ;
 int ath6kl_sdio_scat_rw (struct ath6kl_sdio*,struct bus_request*) ;

__attribute__((used)) static void __ath6kl_sdio_write_async(struct ath6kl_sdio *ar_sdio,
          struct bus_request *req)
{
 if (req->scat_req) {
  ath6kl_sdio_scat_rw(ar_sdio, req);
 } else {
  void *context;
  int status;

  status = ath6kl_sdio_read_write_sync(ar_sdio->ar, req->address,
           req->buffer, req->length,
           req->request);
  context = req->packet;
  ath6kl_sdio_free_bus_req(ar_sdio, req);
  ath6kl_hif_rw_comp_handler(context, status);
 }
}

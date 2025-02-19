
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hif_scatter_req {scalar_t__ len; int status; scalar_t__ virt_scat; int (* complete ) (int ,struct hif_scatter_req*) ;int addr; int scat_entries; int req; } ;
struct ath6kl_device {TYPE_2__* ar; } ;
struct TYPE_3__ {int htc_addr; int htc_ext_addr; } ;
struct TYPE_4__ {int htc_target; TYPE_1__ mbox_info; } ;


 int ATH6KL_DBG_HIF ;
 scalar_t__ HIF_MBOX_WIDTH ;
 int HIF_RD_SYNC_BLOCK_FIX ;
 int HIF_WR_ASYNC_BLOCK_INC ;
 int ath6kl_dbg (int ,char*,int ,scalar_t__,int ,char*,char*) ;
 void* ath6kl_hif_cp_scat_dma_buf (struct hif_scatter_req*,int) ;
 int ath6kl_hif_scat_req_rw (TYPE_2__*,struct hif_scatter_req*) ;
 int stub1 (int ,struct hif_scatter_req*) ;

int ath6kl_hif_submit_scat_req(struct ath6kl_device *dev,
         struct hif_scatter_req *scat_req, bool read)
{
 int status = 0;

 if (read) {
  scat_req->req = HIF_RD_SYNC_BLOCK_FIX;
  scat_req->addr = dev->ar->mbox_info.htc_addr;
 } else {
  scat_req->req = HIF_WR_ASYNC_BLOCK_INC;

  scat_req->addr =
   (scat_req->len > HIF_MBOX_WIDTH) ?
   dev->ar->mbox_info.htc_ext_addr :
   dev->ar->mbox_info.htc_addr;
 }

 ath6kl_dbg(ATH6KL_DBG_HIF,
     "hif submit scatter request entries %d len %d mbox 0x%x %s %s\n",
     scat_req->scat_entries, scat_req->len,
     scat_req->addr, !read ? "async" : "sync",
     (read) ? "rd" : "wr");

 if (!read && scat_req->virt_scat) {
  status = ath6kl_hif_cp_scat_dma_buf(scat_req, 0);
  if (status) {
   scat_req->status = status;
   scat_req->complete(dev->ar->htc_target, scat_req);
   return 0;
  }
 }

 status = ath6kl_hif_scat_req_rw(dev->ar, scat_req);

 if (read) {

  scat_req->status = status;
  if (!status && scat_req->virt_scat)
   scat_req->status =
    ath6kl_hif_cp_scat_dma_buf(scat_req, 1);
 }

 return status;
}

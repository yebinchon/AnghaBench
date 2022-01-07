
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bmi_xfer {int wait_for_resp; scalar_t__ resp_len; } ;
struct ath10k_pci_pipe {struct ath10k_ce_pipe* ce_hdl; } ;
struct ath10k_pci {struct ath10k_pci_pipe* pipe_info; } ;
struct ath10k_ce_pipe {int dummy; } ;
struct ath10k {int dev; } ;
typedef int dma_addr_t ;


 size_t BMI_CE_NUM_TO_HOST ;
 size_t BMI_CE_NUM_TO_TARG ;
 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int ath10k_ce_cancel_send_next (struct ath10k_ce_pipe*,int *,int *,unsigned int*,unsigned int*) ;
 int ath10k_ce_revoke_recv_next (struct ath10k_ce_pipe*,int *,int *) ;
 int ath10k_ce_rx_post_buf (struct ath10k_ce_pipe*,struct bmi_xfer*,int ) ;
 int ath10k_ce_send (struct ath10k_ce_pipe*,struct bmi_xfer*,int ,int ,int,int ) ;
 int ath10k_pci_bmi_wait (struct ath10k*,struct ath10k_ce_pipe*,struct ath10k_ce_pipe*,struct bmi_xfer*) ;
 struct ath10k_pci* ath10k_pci_priv (struct ath10k*) ;
 int dma_map_single (int ,void*,int ,int ) ;
 int dma_mapping_error (int ,int ) ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 int kfree (void*) ;
 void* kmemdup (void*,int ,int ) ;
 void* kzalloc (int ,int ) ;
 int memcpy (void*,void*,scalar_t__) ;
 int might_sleep () ;
 int min (int ,scalar_t__) ;

int ath10k_pci_hif_exchange_bmi_msg(struct ath10k *ar,
        void *req, u32 req_len,
        void *resp, u32 *resp_len)
{
 struct ath10k_pci *ar_pci = ath10k_pci_priv(ar);
 struct ath10k_pci_pipe *pci_tx = &ar_pci->pipe_info[BMI_CE_NUM_TO_TARG];
 struct ath10k_pci_pipe *pci_rx = &ar_pci->pipe_info[BMI_CE_NUM_TO_HOST];
 struct ath10k_ce_pipe *ce_tx = pci_tx->ce_hdl;
 struct ath10k_ce_pipe *ce_rx = pci_rx->ce_hdl;
 dma_addr_t req_paddr = 0;
 dma_addr_t resp_paddr = 0;
 struct bmi_xfer xfer = {};
 void *treq, *tresp = ((void*)0);
 int ret = 0;

 might_sleep();

 if (resp && !resp_len)
  return -EINVAL;

 if (resp && resp_len && *resp_len == 0)
  return -EINVAL;

 treq = kmemdup(req, req_len, GFP_KERNEL);
 if (!treq)
  return -ENOMEM;

 req_paddr = dma_map_single(ar->dev, treq, req_len, DMA_TO_DEVICE);
 ret = dma_mapping_error(ar->dev, req_paddr);
 if (ret) {
  ret = -EIO;
  goto err_dma;
 }

 if (resp && resp_len) {
  tresp = kzalloc(*resp_len, GFP_KERNEL);
  if (!tresp) {
   ret = -ENOMEM;
   goto err_req;
  }

  resp_paddr = dma_map_single(ar->dev, tresp, *resp_len,
         DMA_FROM_DEVICE);
  ret = dma_mapping_error(ar->dev, resp_paddr);
  if (ret) {
   ret = -EIO;
   goto err_req;
  }

  xfer.wait_for_resp = 1;
  xfer.resp_len = 0;

  ath10k_ce_rx_post_buf(ce_rx, &xfer, resp_paddr);
 }

 ret = ath10k_ce_send(ce_tx, &xfer, req_paddr, req_len, -1, 0);
 if (ret)
  goto err_resp;

 ret = ath10k_pci_bmi_wait(ar, ce_tx, ce_rx, &xfer);
 if (ret) {
  dma_addr_t unused_buffer;
  unsigned int unused_nbytes;
  unsigned int unused_id;

  ath10k_ce_cancel_send_next(ce_tx, ((void*)0), &unused_buffer,
        &unused_nbytes, &unused_id);
 } else {

  ret = 0;
 }

err_resp:
 if (resp) {
  dma_addr_t unused_buffer;

  ath10k_ce_revoke_recv_next(ce_rx, ((void*)0), &unused_buffer);
  dma_unmap_single(ar->dev, resp_paddr,
     *resp_len, DMA_FROM_DEVICE);
 }
err_req:
 dma_unmap_single(ar->dev, req_paddr, req_len, DMA_TO_DEVICE);

 if (ret == 0 && resp_len) {
  *resp_len = min(*resp_len, xfer.resp_len);
  memcpy(resp, tresp, xfer.resp_len);
 }
err_dma:
 kfree(treq);
 kfree(tresp);

 return ret;
}

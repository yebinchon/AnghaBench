
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sk_buff {scalar_t__ data; } ;
struct fmdev {int resp_skb_lock; struct sk_buff* resp_skb; int maintask_comp; } ;
struct fm_event_msg_hdr {int status; unsigned int dlen; } ;


 int EFAULT ;
 int EIO ;
 int ETIMEDOUT ;
 int FM_DRV_TX_TIMEOUT ;
 int fm_send_cmd (struct fmdev*,int ,int ,void*,unsigned int,int *) ;
 int fmerr (char*,...) ;
 int init_completion (int *) ;
 int jiffies_to_msecs (int ) ;
 int kfree_skb (struct sk_buff*) ;
 int memcpy (void*,scalar_t__,unsigned int) ;
 int skb_pull (struct sk_buff*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_for_completion_timeout (int *,int ) ;

int fmc_send_cmd(struct fmdev *fmdev, u8 fm_op, u16 type, void *payload,
  unsigned int payload_len, void *response, int *response_len)
{
 struct sk_buff *skb;
 struct fm_event_msg_hdr *evt_hdr;
 unsigned long flags;
 int ret;

 init_completion(&fmdev->maintask_comp);
 ret = fm_send_cmd(fmdev, fm_op, type, payload, payload_len,
       &fmdev->maintask_comp);
 if (ret)
  return ret;

 if (!wait_for_completion_timeout(&fmdev->maintask_comp,
      FM_DRV_TX_TIMEOUT)) {
  fmerr("Timeout(%d sec),didn't get regcompletion signal from RX tasklet\n",
      jiffies_to_msecs(FM_DRV_TX_TIMEOUT) / 1000);
  return -ETIMEDOUT;
 }
 if (!fmdev->resp_skb) {
  fmerr("Response SKB is missing\n");
  return -EFAULT;
 }
 spin_lock_irqsave(&fmdev->resp_skb_lock, flags);
 skb = fmdev->resp_skb;
 fmdev->resp_skb = ((void*)0);
 spin_unlock_irqrestore(&fmdev->resp_skb_lock, flags);

 evt_hdr = (void *)skb->data;
 if (evt_hdr->status != 0) {
  fmerr("Received event pkt status(%d) is not zero\n",
      evt_hdr->status);
  kfree_skb(skb);
  return -EIO;
 }

 if (response != ((void*)0) && response_len != ((void*)0) && evt_hdr->dlen &&
     evt_hdr->dlen <= payload_len) {

  skb_pull(skb, sizeof(struct fm_event_msg_hdr));
  memcpy(response, skb->data, evt_hdr->dlen);
  *response_len = evt_hdr->dlen;
 } else if (response_len != ((void*)0) && evt_hdr->dlen == 0) {
  *response_len = 0;
 }
 kfree_skb(skb);

 return 0;
}

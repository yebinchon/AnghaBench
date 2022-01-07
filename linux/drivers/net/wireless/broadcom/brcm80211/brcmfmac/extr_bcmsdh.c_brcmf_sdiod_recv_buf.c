
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int u8 ;
struct sk_buff {int data; } ;
struct brcmf_sdio_dev {int dummy; } ;


 int EIO ;
 int brcmf_err (char*,int ) ;
 int brcmf_sdiod_recv_pkt (struct brcmf_sdio_dev*,struct sk_buff*) ;
 int brcmu_pkt_buf_free_skb (struct sk_buff*) ;
 struct sk_buff* brcmu_pkt_buf_get_skb (int ) ;
 int memcpy (int *,int ,int ) ;

int brcmf_sdiod_recv_buf(struct brcmf_sdio_dev *sdiodev, u8 *buf, uint nbytes)
{
 struct sk_buff *mypkt;
 int err;

 mypkt = brcmu_pkt_buf_get_skb(nbytes);
 if (!mypkt) {
  brcmf_err("brcmu_pkt_buf_get_skb failed: len %d\n",
     nbytes);
  return -EIO;
 }

 err = brcmf_sdiod_recv_pkt(sdiodev, mypkt);
 if (!err)
  memcpy(buf, mypkt->data, nbytes);

 brcmu_pkt_buf_free_skb(mypkt);
 return err;
}

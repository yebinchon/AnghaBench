
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint ;
typedef int u8 ;
typedef int u32 ;
struct sk_buff {int data; } ;
struct brcmf_sdio_dev {int func2; TYPE_1__* cc_core; } ;
struct TYPE_2__ {int base; } ;


 int EIO ;
 int SBSDIO_SB_ACCESS_2_4B_FLAG ;
 int SBSDIO_SB_OFT_ADDR_MASK ;
 int brcmf_err (char*,int ) ;
 int brcmf_sdiod_set_backplane_window (struct brcmf_sdio_dev*,int ) ;
 int brcmf_sdiod_skbuff_write (struct brcmf_sdio_dev*,int ,int ,struct sk_buff*) ;
 int brcmu_pkt_buf_free_skb (struct sk_buff*) ;
 struct sk_buff* brcmu_pkt_buf_get_skb (int ) ;
 int memcpy (int ,int *,int ) ;

int brcmf_sdiod_send_buf(struct brcmf_sdio_dev *sdiodev, u8 *buf, uint nbytes)
{
 struct sk_buff *mypkt;
 u32 addr = sdiodev->cc_core->base;
 int err;

 mypkt = brcmu_pkt_buf_get_skb(nbytes);

 if (!mypkt) {
  brcmf_err("brcmu_pkt_buf_get_skb failed: len %d\n",
     nbytes);
  return -EIO;
 }

 memcpy(mypkt->data, buf, nbytes);

 err = brcmf_sdiod_set_backplane_window(sdiodev, addr);
 if (err)
  goto out;

 addr &= SBSDIO_SB_OFT_ADDR_MASK;
 addr |= SBSDIO_SB_ACCESS_2_4B_FLAG;

 err = brcmf_sdiod_skbuff_write(sdiodev, sdiodev->func2, addr, mypkt);
out:
 brcmu_pkt_buf_free_skb(mypkt);

 return err;
}

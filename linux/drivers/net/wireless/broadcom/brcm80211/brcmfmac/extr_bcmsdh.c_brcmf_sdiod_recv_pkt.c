
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int len; } ;
struct brcmf_sdio_dev {int func2; TYPE_1__* cc_core; } ;
struct TYPE_2__ {int base; } ;


 int SBSDIO_SB_ACCESS_2_4B_FLAG ;
 int SBSDIO_SB_OFT_ADDR_MASK ;
 int SDIO ;
 int brcmf_dbg (int ,char*,int ,int ) ;
 int brcmf_sdiod_set_backplane_window (struct brcmf_sdio_dev*,int ) ;
 int brcmf_sdiod_skbuff_read (struct brcmf_sdio_dev*,int ,int ,struct sk_buff*) ;

int brcmf_sdiod_recv_pkt(struct brcmf_sdio_dev *sdiodev, struct sk_buff *pkt)
{
 u32 addr = sdiodev->cc_core->base;
 int err = 0;

 brcmf_dbg(SDIO, "addr = 0x%x, size = %d\n", addr, pkt->len);

 err = brcmf_sdiod_set_backplane_window(sdiodev, addr);
 if (err)
  goto done;

 addr &= SBSDIO_SB_OFT_ADDR_MASK;
 addr |= SBSDIO_SB_ACCESS_2_4B_FLAG;

 err = brcmf_sdiod_skbuff_read(sdiodev, sdiodev->func2, addr, pkt);

done:
 return err;
}

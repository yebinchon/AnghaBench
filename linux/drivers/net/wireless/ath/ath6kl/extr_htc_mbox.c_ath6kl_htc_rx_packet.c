
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct htc_target {struct ath6kl_device* dev; } ;
struct TYPE_5__ {int exp_hdr; } ;
struct TYPE_6__ {TYPE_1__ rx; } ;
struct htc_packet {int status; int buf; TYPE_2__ info; int buf_len; } ;
struct ath6kl_device {TYPE_4__* ar; } ;
struct TYPE_7__ {int htc_addr; } ;
struct TYPE_8__ {TYPE_3__ mbox_info; } ;


 int ATH6KL_DBG_HTC ;
 int CALC_TXRX_PADDED_LEN (struct htc_target*,int ) ;
 int ENOMEM ;
 int HIF_RD_SYNC_BLOCK_FIX ;
 int ath6kl_dbg (int ,char*,struct htc_packet*,int ,int ,int ) ;
 int ath6kl_err (char*,int ,int ,int ) ;
 int hif_read_write_sync (TYPE_4__*,int ,int ,int ,int ) ;

__attribute__((used)) static int ath6kl_htc_rx_packet(struct htc_target *target,
    struct htc_packet *packet,
    u32 rx_len)
{
 struct ath6kl_device *dev = target->dev;
 u32 padded_len;
 int status;

 padded_len = CALC_TXRX_PADDED_LEN(target, rx_len);

 if (padded_len > packet->buf_len) {
  ath6kl_err("not enough receive space for packet - padlen %d recvlen %d bufferlen %d\n",
      padded_len, rx_len, packet->buf_len);
  return -ENOMEM;
 }

 ath6kl_dbg(ATH6KL_DBG_HTC,
     "htc rx 0x%p hdr 0x%x len %d mbox 0x%x\n",
     packet, packet->info.rx.exp_hdr,
     padded_len, dev->ar->mbox_info.htc_addr);

 status = hif_read_write_sync(dev->ar,
         dev->ar->mbox_info.htc_addr,
         packet->buf, padded_len,
         HIF_RD_SYNC_BLOCK_FIX);

 packet->status = status;

 return status;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct htc_target {TYPE_4__* dev; } ;
struct TYPE_7__ {int seqno; } ;
struct TYPE_8__ {TYPE_1__ tx; } ;
struct htc_packet {int status; int buf; int endpoint; TYPE_2__ info; scalar_t__ act_len; int completion; } ;
struct TYPE_9__ {int htc_addr; } ;
struct TYPE_11__ {TYPE_3__ mbox_info; } ;
struct TYPE_10__ {TYPE_5__* ar; } ;


 int ATH6KL_DBG_HTC ;
 scalar_t__ CALC_TXRX_PADDED_LEN (struct htc_target*,scalar_t__) ;
 int HIF_WR_ASYNC_BLOCK_INC ;
 int HIF_WR_SYNC_BLOCK_INC ;
 scalar_t__ HTC_HDR_LENGTH ;
 int ath6kl_dbg (int ,char*,scalar_t__,int ,scalar_t__,int ,char*) ;
 int hif_read_write_sync (TYPE_5__*,int ,int ,scalar_t__,int ) ;
 int hif_write_async (TYPE_5__*,int ,int ,scalar_t__,int ,struct htc_packet*) ;
 int trace_ath6kl_htc_tx (int,int ,int ,scalar_t__) ;

__attribute__((used)) static int ath6kl_htc_tx_issue(struct htc_target *target,
          struct htc_packet *packet)
{
 int status;
 bool sync = 0;
 u32 padded_len, send_len;

 if (!packet->completion)
  sync = 1;

 send_len = packet->act_len + HTC_HDR_LENGTH;

 padded_len = CALC_TXRX_PADDED_LEN(target, send_len);

 ath6kl_dbg(ATH6KL_DBG_HTC,
     "htc tx issue len %d seqno %d padded_len %d mbox 0x%X %s\n",
     send_len, packet->info.tx.seqno, padded_len,
     target->dev->ar->mbox_info.htc_addr,
     sync ? "sync" : "async");

 if (sync) {
  status = hif_read_write_sync(target->dev->ar,
    target->dev->ar->mbox_info.htc_addr,
     packet->buf, padded_len,
     HIF_WR_SYNC_BLOCK_INC);

  packet->status = status;
  packet->buf += HTC_HDR_LENGTH;
 } else
  status = hif_write_async(target->dev->ar,
    target->dev->ar->mbox_info.htc_addr,
    packet->buf, padded_len,
    HIF_WR_ASYNC_BLOCK_INC, packet);

 trace_ath6kl_htc_tx(status, packet->endpoint, packet->buf, send_len);

 return status;
}

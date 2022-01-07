
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef size_t u16 ;
struct sk_buff {int dummy; } ;
struct TYPE_7__ {int ifidx; int request_id; } ;
struct TYPE_5__ {int flow_ring_id; } ;
struct msgbuf_tx_status {TYPE_3__ msg; TYPE_1__ compl_hdr; } ;
struct brcmf_msgbuf {TYPE_4__* drvr; struct brcmf_commonring** flowrings; int txstatus_done_map; int tx_pktids; } ;
struct brcmf_commonring {int outstanding_tx; } ;
struct TYPE_8__ {TYPE_2__* bus_if; } ;
struct TYPE_6__ {int dev; } ;


 scalar_t__ BRCMF_H2D_MSGRING_FLOWRING_IDSTART ;
 int atomic_dec (int *) ;
 int brcmf_get_ifp (TYPE_4__*,int ) ;
 struct sk_buff* brcmf_msgbuf_get_pktid (int ,int ,scalar_t__) ;
 int brcmf_txfinalize (int ,struct sk_buff*,int) ;
 size_t le16_to_cpu (int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 int set_bit (size_t,int ) ;

__attribute__((used)) static void
brcmf_msgbuf_process_txstatus(struct brcmf_msgbuf *msgbuf, void *buf)
{
 struct brcmf_commonring *commonring;
 struct msgbuf_tx_status *tx_status;
 u32 idx;
 struct sk_buff *skb;
 u16 flowid;

 tx_status = (struct msgbuf_tx_status *)buf;
 idx = le32_to_cpu(tx_status->msg.request_id) - 1;
 flowid = le16_to_cpu(tx_status->compl_hdr.flow_ring_id);
 flowid -= BRCMF_H2D_MSGRING_FLOWRING_IDSTART;
 skb = brcmf_msgbuf_get_pktid(msgbuf->drvr->bus_if->dev,
         msgbuf->tx_pktids, idx);
 if (!skb)
  return;

 set_bit(flowid, msgbuf->txstatus_done_map);
 commonring = msgbuf->flowrings[flowid];
 atomic_dec(&commonring->outstanding_tx);

 brcmf_txfinalize(brcmf_get_ifp(msgbuf->drvr, tx_status->msg.ifidx),
    skb, 1);
}

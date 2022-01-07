
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef size_t u32 ;
struct TYPE_6__ {void* low_addr; void* high_addr; } ;
struct TYPE_5__ {scalar_t__ request_id; int ifidx; int msgtype; } ;
struct msgbuf_tx_flowring_create_req {int tid; void* len_item; void* max_items; TYPE_3__ flow_ring_addr; int da; int sa; void* flow_ring_id; TYPE_2__ msg; } ;
struct brcmf_pub {TYPE_1__* bus_if; } ;
struct brcmf_msgbuf_work_item {size_t flowid; int ifidx; int da; int sa; } ;
struct brcmf_msgbuf {scalar_t__* flowring_dma_handle; int flow; struct brcmf_commonring** commonrings; int * flowrings; struct brcmf_pub* drvr; } ;
struct brcmf_commonring {int dummy; } ;
struct TYPE_4__ {int dev; } ;


 size_t BRCMF_FLOWRING_INVALID_ID ;
 size_t BRCMF_H2D_MSGRING_CONTROL_SUBMIT ;
 size_t BRCMF_H2D_MSGRING_FLOWRING_IDSTART ;
 size_t BRCMF_H2D_TXFLOWRING_ITEMSIZE ;
 size_t BRCMF_H2D_TXFLOWRING_MAX_ITEM ;
 int ETH_ALEN ;
 int GFP_KERNEL ;
 int MSGBUF ;
 int MSGBUF_TYPE_FLOW_RING_CREATE ;
 int bphy_err (struct brcmf_pub*,char*) ;
 int brcmf_commonring_config (int ,size_t,size_t,void*) ;
 int brcmf_commonring_lock (struct brcmf_commonring*) ;
 void* brcmf_commonring_reserve_for_write (struct brcmf_commonring*) ;
 int brcmf_commonring_unlock (struct brcmf_commonring*) ;
 int brcmf_commonring_write_complete (struct brcmf_commonring*) ;
 int brcmf_dbg (int ,char*,size_t,int ,int ,int ) ;
 int brcmf_flowring_delete (int ,size_t) ;
 int brcmf_flowring_tid (int ,size_t) ;
 int brcmf_msgbuf_remove_flowring (struct brcmf_msgbuf*,size_t) ;
 void* cpu_to_le16 (size_t) ;
 void* cpu_to_le32 (int) ;
 void* dma_alloc_coherent (int ,size_t,scalar_t__*,int ) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static u32
brcmf_msgbuf_flowring_create_worker(struct brcmf_msgbuf *msgbuf,
        struct brcmf_msgbuf_work_item *work)
{
 struct brcmf_pub *drvr = msgbuf->drvr;
 struct msgbuf_tx_flowring_create_req *create;
 struct brcmf_commonring *commonring;
 void *ret_ptr;
 u32 flowid;
 void *dma_buf;
 u32 dma_sz;
 u64 address;
 int err;

 flowid = work->flowid;
 dma_sz = BRCMF_H2D_TXFLOWRING_MAX_ITEM * BRCMF_H2D_TXFLOWRING_ITEMSIZE;
 dma_buf = dma_alloc_coherent(msgbuf->drvr->bus_if->dev, dma_sz,
         &msgbuf->flowring_dma_handle[flowid],
         GFP_KERNEL);
 if (!dma_buf) {
  bphy_err(drvr, "dma_alloc_coherent failed\n");
  brcmf_flowring_delete(msgbuf->flow, flowid);
  return BRCMF_FLOWRING_INVALID_ID;
 }

 brcmf_commonring_config(msgbuf->flowrings[flowid],
    BRCMF_H2D_TXFLOWRING_MAX_ITEM,
    BRCMF_H2D_TXFLOWRING_ITEMSIZE, dma_buf);

 commonring = msgbuf->commonrings[BRCMF_H2D_MSGRING_CONTROL_SUBMIT];
 brcmf_commonring_lock(commonring);
 ret_ptr = brcmf_commonring_reserve_for_write(commonring);
 if (!ret_ptr) {
  bphy_err(drvr, "Failed to reserve space in commonring\n");
  brcmf_commonring_unlock(commonring);
  brcmf_msgbuf_remove_flowring(msgbuf, flowid);
  return BRCMF_FLOWRING_INVALID_ID;
 }

 create = (struct msgbuf_tx_flowring_create_req *)ret_ptr;
 create->msg.msgtype = MSGBUF_TYPE_FLOW_RING_CREATE;
 create->msg.ifidx = work->ifidx;
 create->msg.request_id = 0;
 create->tid = brcmf_flowring_tid(msgbuf->flow, flowid);
 create->flow_ring_id = cpu_to_le16(flowid +
        BRCMF_H2D_MSGRING_FLOWRING_IDSTART);
 memcpy(create->sa, work->sa, ETH_ALEN);
 memcpy(create->da, work->da, ETH_ALEN);
 address = (u64)msgbuf->flowring_dma_handle[flowid];
 create->flow_ring_addr.high_addr = cpu_to_le32(address >> 32);
 create->flow_ring_addr.low_addr = cpu_to_le32(address & 0xffffffff);
 create->max_items = cpu_to_le16(BRCMF_H2D_TXFLOWRING_MAX_ITEM);
 create->len_item = cpu_to_le16(BRCMF_H2D_TXFLOWRING_ITEMSIZE);

 brcmf_dbg(MSGBUF, "Send Flow Create Req flow ID %d for peer %pM prio %d ifindex %d\n",
    flowid, work->da, create->tid, work->ifidx);

 err = brcmf_commonring_write_complete(commonring);
 brcmf_commonring_unlock(commonring);
 if (err) {
  bphy_err(drvr, "Failed to write commonring\n");
  brcmf_msgbuf_remove_flowring(msgbuf, flowid);
  return BRCMF_FLOWRING_INVALID_ID;
 }

 return flowid;
}

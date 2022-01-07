
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct brcmf_pub {TYPE_2__* bus_if; TYPE_1__* proto; } ;
struct brcmf_msgbuf {int ioctbuf_phys_hi; int ioctbuf_phys_lo; scalar_t__ max_flowrings; scalar_t__ max_rxbufpost; scalar_t__ rxbufpost; scalar_t__ ioctbuf_handle; scalar_t__ ioctbuf; struct brcmf_msgbuf* flowring_dma_handle; struct brcmf_msgbuf* txstatus_done_map; struct brcmf_msgbuf* flow_map; int work_queue; int flowring_work_lock; int flowring_work; int max_ioctlrespbuf; int max_eventbuf; int flow; void* rx_pktids; void* tx_pktids; int rx_dataoffset; struct brcmf_commonring** flowrings; struct brcmf_commonring** commonrings; int ioctl_resp_wait; struct brcmf_pub* drvr; int txflow_work; int * txflow_wq; } ;
struct brcmf_commonring {int dummy; } ;
struct brcmf_bus_msgbuf {scalar_t__ max_flowrings; scalar_t__ max_rxbufpost; int rx_dataoffset; scalar_t__ flowrings; scalar_t__ commonrings; } ;
struct TYPE_4__ {int dev; struct brcmf_bus_msgbuf* msgbuf; } ;
struct TYPE_3__ {struct brcmf_msgbuf* pd; int debugfs_create; int rxreorder; int add_tdls_peer; int delete_peer; int configure_addr_mode; int tx_queue_data; int set_dcmd; int query_dcmd; int hdrpull; } ;


 int BITS_TO_LONGS (scalar_t__) ;
 scalar_t__ BRCMF_FLOWRING_HASHSIZE ;
 int BRCMF_MSGBUF_MAX_EVENTBUF_POST ;
 int BRCMF_MSGBUF_MAX_IOCTLRESPBUF_POST ;
 int BRCMF_TX_IOCTL_MAX_MSG_SIZE ;
 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int MSGBUF ;
 int NR_RX_PKTIDS ;
 int NR_TX_PKTIDS ;
 int bphy_err (struct brcmf_pub*,char*,...) ;
 int brcmf_dbg (int ,char*,scalar_t__,int ,int ) ;
 int brcmf_flowring_attach (int ,scalar_t__) ;
 int brcmf_msgbuf_add_tdls_peer ;
 int brcmf_msgbuf_configure_addr_mode ;
 int brcmf_msgbuf_debugfs_create ;
 int brcmf_msgbuf_delete_peer ;
 int brcmf_msgbuf_flowring_worker ;
 int brcmf_msgbuf_hdrpull ;
 void* brcmf_msgbuf_init_pktids (int ,int ) ;
 int brcmf_msgbuf_query_dcmd ;
 int brcmf_msgbuf_release_pktids (struct brcmf_msgbuf*) ;
 int brcmf_msgbuf_rxbuf_data_fill (struct brcmf_msgbuf*) ;
 int brcmf_msgbuf_rxbuf_event_post (struct brcmf_msgbuf*) ;
 int brcmf_msgbuf_rxbuf_ioctlresp_post (struct brcmf_msgbuf*) ;
 int brcmf_msgbuf_rxreorder ;
 int brcmf_msgbuf_set_dcmd ;
 int brcmf_msgbuf_tx_queue_data ;
 int brcmf_msgbuf_txflow_worker ;
 int * create_singlethread_workqueue (char*) ;
 scalar_t__ dma_alloc_coherent (int ,int ,scalar_t__*,int ) ;
 int dma_free_coherent (int ,int ,scalar_t__,scalar_t__) ;
 int init_waitqueue_head (int *) ;
 struct brcmf_msgbuf* kcalloc (scalar_t__,int,int ) ;
 int kfree (struct brcmf_msgbuf*) ;
 void* kzalloc (int,int ) ;
 int msleep (int) ;
 int spin_lock_init (int *) ;

int brcmf_proto_msgbuf_attach(struct brcmf_pub *drvr)
{
 struct brcmf_bus_msgbuf *if_msgbuf;
 struct brcmf_msgbuf *msgbuf;
 u64 address;
 u32 count;

 if_msgbuf = drvr->bus_if->msgbuf;

 if (if_msgbuf->max_flowrings >= BRCMF_FLOWRING_HASHSIZE) {
  bphy_err(drvr, "driver not configured for this many flowrings %d\n",
    if_msgbuf->max_flowrings);
  if_msgbuf->max_flowrings = BRCMF_FLOWRING_HASHSIZE - 1;
 }

 msgbuf = kzalloc(sizeof(*msgbuf), GFP_KERNEL);
 if (!msgbuf)
  goto fail;

 msgbuf->txflow_wq = create_singlethread_workqueue("msgbuf_txflow");
 if (msgbuf->txflow_wq == ((void*)0)) {
  bphy_err(drvr, "workqueue creation failed\n");
  goto fail;
 }
 INIT_WORK(&msgbuf->txflow_work, brcmf_msgbuf_txflow_worker);
 count = BITS_TO_LONGS(if_msgbuf->max_flowrings);
 count = count * sizeof(unsigned long);
 msgbuf->flow_map = kzalloc(count, GFP_KERNEL);
 if (!msgbuf->flow_map)
  goto fail;

 msgbuf->txstatus_done_map = kzalloc(count, GFP_KERNEL);
 if (!msgbuf->txstatus_done_map)
  goto fail;

 msgbuf->drvr = drvr;
 msgbuf->ioctbuf = dma_alloc_coherent(drvr->bus_if->dev,
          BRCMF_TX_IOCTL_MAX_MSG_SIZE,
          &msgbuf->ioctbuf_handle,
          GFP_KERNEL);
 if (!msgbuf->ioctbuf)
  goto fail;
 address = (u64)msgbuf->ioctbuf_handle;
 msgbuf->ioctbuf_phys_hi = address >> 32;
 msgbuf->ioctbuf_phys_lo = address & 0xffffffff;

 drvr->proto->hdrpull = brcmf_msgbuf_hdrpull;
 drvr->proto->query_dcmd = brcmf_msgbuf_query_dcmd;
 drvr->proto->set_dcmd = brcmf_msgbuf_set_dcmd;
 drvr->proto->tx_queue_data = brcmf_msgbuf_tx_queue_data;
 drvr->proto->configure_addr_mode = brcmf_msgbuf_configure_addr_mode;
 drvr->proto->delete_peer = brcmf_msgbuf_delete_peer;
 drvr->proto->add_tdls_peer = brcmf_msgbuf_add_tdls_peer;
 drvr->proto->rxreorder = brcmf_msgbuf_rxreorder;
 drvr->proto->debugfs_create = brcmf_msgbuf_debugfs_create;
 drvr->proto->pd = msgbuf;

 init_waitqueue_head(&msgbuf->ioctl_resp_wait);

 msgbuf->commonrings =
  (struct brcmf_commonring **)if_msgbuf->commonrings;
 msgbuf->flowrings = (struct brcmf_commonring **)if_msgbuf->flowrings;
 msgbuf->max_flowrings = if_msgbuf->max_flowrings;
 msgbuf->flowring_dma_handle =
  kcalloc(msgbuf->max_flowrings,
   sizeof(*msgbuf->flowring_dma_handle), GFP_KERNEL);
 if (!msgbuf->flowring_dma_handle)
  goto fail;

 msgbuf->rx_dataoffset = if_msgbuf->rx_dataoffset;
 msgbuf->max_rxbufpost = if_msgbuf->max_rxbufpost;

 msgbuf->max_ioctlrespbuf = BRCMF_MSGBUF_MAX_IOCTLRESPBUF_POST;
 msgbuf->max_eventbuf = BRCMF_MSGBUF_MAX_EVENTBUF_POST;

 msgbuf->tx_pktids = brcmf_msgbuf_init_pktids(NR_TX_PKTIDS,
           DMA_TO_DEVICE);
 if (!msgbuf->tx_pktids)
  goto fail;
 msgbuf->rx_pktids = brcmf_msgbuf_init_pktids(NR_RX_PKTIDS,
           DMA_FROM_DEVICE);
 if (!msgbuf->rx_pktids)
  goto fail;

 msgbuf->flow = brcmf_flowring_attach(drvr->bus_if->dev,
          if_msgbuf->max_flowrings);
 if (!msgbuf->flow)
  goto fail;


 brcmf_dbg(MSGBUF, "Feeding buffers, rx data %d, rx event %d, rx ioctl resp %d\n",
    msgbuf->max_rxbufpost, msgbuf->max_eventbuf,
    msgbuf->max_ioctlrespbuf);
 count = 0;
 do {
  brcmf_msgbuf_rxbuf_data_fill(msgbuf);
  if (msgbuf->max_rxbufpost != msgbuf->rxbufpost)
   msleep(10);
  else
   break;
  count++;
 } while (count < 10);
 brcmf_msgbuf_rxbuf_event_post(msgbuf);
 brcmf_msgbuf_rxbuf_ioctlresp_post(msgbuf);

 INIT_WORK(&msgbuf->flowring_work, brcmf_msgbuf_flowring_worker);
 spin_lock_init(&msgbuf->flowring_work_lock);
 INIT_LIST_HEAD(&msgbuf->work_queue);

 return 0;

fail:
 if (msgbuf) {
  kfree(msgbuf->flow_map);
  kfree(msgbuf->txstatus_done_map);
  brcmf_msgbuf_release_pktids(msgbuf);
  kfree(msgbuf->flowring_dma_handle);
  if (msgbuf->ioctbuf)
   dma_free_coherent(drvr->bus_if->dev,
       BRCMF_TX_IOCTL_MAX_MSG_SIZE,
       msgbuf->ioctbuf,
       msgbuf->ioctbuf_handle);
  kfree(msgbuf);
 }
 return -ENOMEM;
}

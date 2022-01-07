
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct brcmf_msgbuf {int flow; int * flowring_dma_handle; TYPE_3__* drvr; TYPE_1__** flowrings; } ;
struct TYPE_6__ {TYPE_2__* bus_if; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {void* buf_addr; } ;


 int BRCMF_H2D_TXFLOWRING_ITEMSIZE ;
 int BRCMF_H2D_TXFLOWRING_MAX_ITEM ;
 int MSGBUF ;
 int brcmf_dbg (int ,char*,size_t) ;
 int brcmf_flowring_delete (int ,size_t) ;
 int dma_free_coherent (int ,int,void*,int ) ;

__attribute__((used)) static void
brcmf_msgbuf_remove_flowring(struct brcmf_msgbuf *msgbuf, u16 flowid)
{
 u32 dma_sz;
 void *dma_buf;

 brcmf_dbg(MSGBUF, "Removing flowring %d\n", flowid);

 dma_sz = BRCMF_H2D_TXFLOWRING_MAX_ITEM * BRCMF_H2D_TXFLOWRING_ITEMSIZE;
 dma_buf = msgbuf->flowrings[flowid]->buf_addr;
 dma_free_coherent(msgbuf->drvr->bus_if->dev, dma_sz, dma_buf,
     msgbuf->flowring_dma_handle[flowid]);

 brcmf_flowring_delete(msgbuf->flow, flowid);
}

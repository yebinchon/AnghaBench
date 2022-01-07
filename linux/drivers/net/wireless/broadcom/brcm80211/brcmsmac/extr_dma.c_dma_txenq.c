
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int u32 ;
typedef int u16 ;
struct sk_buff {unsigned char* data; int len; } ;
struct dma_info {int txout; scalar_t__ txin; int ntxd; struct sk_buff** txp; int txd64; int dmadev; } ;
typedef int dma_addr_t ;


 int D64_CTRL1_EOF ;
 int D64_CTRL1_EOT ;
 int D64_CTRL1_IOC ;
 int D64_CTRL1_SOF ;
 int DMA_TO_DEVICE ;
 scalar_t__ WARN_ON (int) ;
 int brcmu_pkt_buf_free_skb (struct sk_buff*) ;
 int dma64_dd_upd (struct dma_info*,int ,int ,int,int*,int ) ;
 int dma_map_single (int ,unsigned char*,int ,int ) ;
 scalar_t__ dma_mapping_error (int ,int ) ;
 scalar_t__ nexttxd (struct dma_info*,int) ;
 size_t prevtxd (struct dma_info*,int) ;

__attribute__((used)) static void dma_txenq(struct dma_info *di, struct sk_buff *p)
{
 unsigned char *data;
 uint len;
 u16 txout;
 u32 flags = 0;
 dma_addr_t pa;

 txout = di->txout;

 if (WARN_ON(nexttxd(di, txout) == di->txin))
  return;




 data = p->data;
 len = p->len;


 pa = dma_map_single(di->dmadev, data, len, DMA_TO_DEVICE);

 if (dma_mapping_error(di->dmadev, pa)) {
  brcmu_pkt_buf_free_skb(p);
  return;
 }





 flags = D64_CTRL1_SOF | D64_CTRL1_IOC | D64_CTRL1_EOF;
 if (txout == (di->ntxd - 1))
  flags |= D64_CTRL1_EOT;

 dma64_dd_upd(di, di->txd64, pa, txout, &flags, len);

 txout = nexttxd(di, txout);


 di->txp[prevtxd(di, txout)] = p;


 di->txout = txout;
}

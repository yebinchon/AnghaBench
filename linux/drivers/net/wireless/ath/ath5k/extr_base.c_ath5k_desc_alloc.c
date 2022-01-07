
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath5k_hw {int desc_len; int desc_daddr; int txbuf_len; struct ath5k_desc* desc; int dev; int bcbuf; int txbuf; int rxbuf; struct ath5k_buf* bufptr; } ;
struct ath5k_desc {int dummy; } ;
struct ath5k_buf {int daddr; int list; struct ath5k_desc* desc; } ;
typedef int dma_addr_t ;


 int ATH5K_DBG (struct ath5k_hw*,int ,char*,struct ath5k_desc*,int,unsigned long long) ;
 int ATH5K_DEBUG_ANY ;
 int ATH5K_ERR (struct ath5k_hw*,char*) ;
 int ATH_BCBUF ;
 int ATH_RXBUF ;
 int ATH_TXBUF ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct ath5k_desc* dma_alloc_coherent (int ,int,int*,int ) ;
 int dma_free_coherent (int ,int,struct ath5k_desc*,int) ;
 struct ath5k_buf* kcalloc (int,int,int ) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static int
ath5k_desc_alloc(struct ath5k_hw *ah)
{
 struct ath5k_desc *ds;
 struct ath5k_buf *bf;
 dma_addr_t da;
 unsigned int i;
 int ret;


 ah->desc_len = sizeof(struct ath5k_desc) *
   (ATH_TXBUF + ATH_RXBUF + ATH_BCBUF + 1);

 ah->desc = dma_alloc_coherent(ah->dev, ah->desc_len,
    &ah->desc_daddr, GFP_KERNEL);
 if (ah->desc == ((void*)0)) {
  ATH5K_ERR(ah, "can't allocate descriptors\n");
  ret = -ENOMEM;
  goto err;
 }
 ds = ah->desc;
 da = ah->desc_daddr;
 ATH5K_DBG(ah, ATH5K_DEBUG_ANY, "DMA map: %p (%zu) -> %llx\n",
  ds, ah->desc_len, (unsigned long long)ah->desc_daddr);

 bf = kcalloc(1 + ATH_TXBUF + ATH_RXBUF + ATH_BCBUF,
   sizeof(struct ath5k_buf), GFP_KERNEL);
 if (bf == ((void*)0)) {
  ATH5K_ERR(ah, "can't allocate bufptr\n");
  ret = -ENOMEM;
  goto err_free;
 }
 ah->bufptr = bf;

 INIT_LIST_HEAD(&ah->rxbuf);
 for (i = 0; i < ATH_RXBUF; i++, bf++, ds++, da += sizeof(*ds)) {
  bf->desc = ds;
  bf->daddr = da;
  list_add_tail(&bf->list, &ah->rxbuf);
 }

 INIT_LIST_HEAD(&ah->txbuf);
 ah->txbuf_len = ATH_TXBUF;
 for (i = 0; i < ATH_TXBUF; i++, bf++, ds++, da += sizeof(*ds)) {
  bf->desc = ds;
  bf->daddr = da;
  list_add_tail(&bf->list, &ah->txbuf);
 }


 INIT_LIST_HEAD(&ah->bcbuf);
 for (i = 0; i < ATH_BCBUF; i++, bf++, ds++, da += sizeof(*ds)) {
  bf->desc = ds;
  bf->daddr = da;
  list_add_tail(&bf->list, &ah->bcbuf);
 }

 return 0;
err_free:
 dma_free_coherent(ah->dev, ah->desc_len, ah->desc, ah->desc_daddr);
err:
 ah->desc = ((void*)0);
 return ret;
}

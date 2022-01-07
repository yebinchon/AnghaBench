
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct idmac_desc_64addr {int des6; int des7; int des0; void* des3; scalar_t__ des1; scalar_t__ des2; } ;
struct idmac_desc {int des6; int des7; int des0; void* des3; scalar_t__ des1; scalar_t__ des2; } ;
struct dw_mci {int dma_64bit_address; int ring_size; int sg_dma; struct idmac_desc_64addr* sg_cpu; } ;


 int DBADDR ;
 int DBADDRL ;
 int DBADDRU ;
 int DESC_RING_BUF_SZ ;
 int IDINTEN ;
 int IDINTEN64 ;
 int IDMAC_DES0_ER ;
 int IDMAC_INT_CLR ;
 int IDSTS ;
 int IDSTS64 ;
 int SDMMC_IDMAC_INT_NI ;
 int SDMMC_IDMAC_INT_RI ;
 int SDMMC_IDMAC_INT_TI ;
 void* cpu_to_le32 (int) ;
 int dw_mci_idmac_reset (struct dw_mci*) ;
 int mci_writel (struct dw_mci*,int ,int) ;

__attribute__((used)) static int dw_mci_idmac_init(struct dw_mci *host)
{
 int i;

 if (host->dma_64bit_address == 1) {
  struct idmac_desc_64addr *p;

  host->ring_size =
   DESC_RING_BUF_SZ / sizeof(struct idmac_desc_64addr);


  for (i = 0, p = host->sg_cpu; i < host->ring_size - 1;
        i++, p++) {
   p->des6 = (host->sg_dma +
     (sizeof(struct idmac_desc_64addr) *
       (i + 1))) & 0xffffffff;

   p->des7 = (u64)(host->sg_dma +
     (sizeof(struct idmac_desc_64addr) *
       (i + 1))) >> 32;

   p->des0 = 0;
   p->des1 = 0;
   p->des2 = 0;
   p->des3 = 0;
  }


  p->des6 = host->sg_dma & 0xffffffff;
  p->des7 = (u64)host->sg_dma >> 32;
  p->des0 = IDMAC_DES0_ER;

 } else {
  struct idmac_desc *p;

  host->ring_size =
   DESC_RING_BUF_SZ / sizeof(struct idmac_desc);


  for (i = 0, p = host->sg_cpu;
       i < host->ring_size - 1;
       i++, p++) {
   p->des3 = cpu_to_le32(host->sg_dma +
     (sizeof(struct idmac_desc) * (i + 1)));
   p->des0 = 0;
   p->des1 = 0;
  }


  p->des3 = cpu_to_le32(host->sg_dma);
  p->des0 = cpu_to_le32(IDMAC_DES0_ER);
 }

 dw_mci_idmac_reset(host);

 if (host->dma_64bit_address == 1) {

  mci_writel(host, IDSTS64, IDMAC_INT_CLR);
  mci_writel(host, IDINTEN64, SDMMC_IDMAC_INT_NI |
    SDMMC_IDMAC_INT_RI | SDMMC_IDMAC_INT_TI);


  mci_writel(host, DBADDRL, host->sg_dma & 0xffffffff);
  mci_writel(host, DBADDRU, (u64)host->sg_dma >> 32);

 } else {

  mci_writel(host, IDSTS, IDMAC_INT_CLR);
  mci_writel(host, IDINTEN, SDMMC_IDMAC_INT_NI |
    SDMMC_IDMAC_INT_RI | SDMMC_IDMAC_INT_TI);


  mci_writel(host, DBADDR, host->sg_dma);
 }

 return 0;
}

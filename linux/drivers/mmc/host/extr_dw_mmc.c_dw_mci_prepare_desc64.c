
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct mmc_data {int * sg; } ;
struct idmac_desc_64addr {int des0; int des4; int des5; } ;
struct dw_mci {struct idmac_desc_64addr* sg_cpu; int dev; } ;


 int DESC_RING_BUF_SZ ;
 unsigned int DW_MCI_DESC_DATA_LENGTH ;
 int EINVAL ;
 int IDMAC_64ADDR_SET_BUFFER1_SIZE (struct idmac_desc_64addr*,unsigned int) ;
 int IDMAC_DES0_CH ;
 int IDMAC_DES0_DIC ;
 int IDMAC_DES0_FD ;
 int IDMAC_DES0_LD ;
 int IDMAC_DES0_OWN ;
 int USEC_PER_MSEC ;
 int dev_dbg (int ,char*) ;
 int dw_mci_idmac_init (struct dw_mci*) ;
 int memset (struct idmac_desc_64addr*,int ,int ) ;
 scalar_t__ readl_poll_timeout_atomic (int*,int,int,int,int) ;
 int sg_dma_address (int *) ;
 unsigned int sg_dma_len (int *) ;

__attribute__((used)) static inline int dw_mci_prepare_desc64(struct dw_mci *host,
      struct mmc_data *data,
      unsigned int sg_len)
{
 unsigned int desc_len;
 struct idmac_desc_64addr *desc_first, *desc_last, *desc;
 u32 val;
 int i;

 desc_first = desc_last = desc = host->sg_cpu;

 for (i = 0; i < sg_len; i++) {
  unsigned int length = sg_dma_len(&data->sg[i]);

  u64 mem_addr = sg_dma_address(&data->sg[i]);

  for ( ; length ; desc++) {
   desc_len = (length <= DW_MCI_DESC_DATA_LENGTH) ?
       length : DW_MCI_DESC_DATA_LENGTH;

   length -= desc_len;







   if (readl_poll_timeout_atomic(&desc->des0, val,
      !(val & IDMAC_DES0_OWN),
      10, 100 * USEC_PER_MSEC))
    goto err_own_bit;





   desc->des0 = IDMAC_DES0_OWN | IDMAC_DES0_DIC |
      IDMAC_DES0_CH;


   IDMAC_64ADDR_SET_BUFFER1_SIZE(desc, desc_len);


   desc->des4 = mem_addr & 0xffffffff;
   desc->des5 = mem_addr >> 32;


   mem_addr += desc_len;


   desc_last = desc;
  }
 }


 desc_first->des0 |= IDMAC_DES0_FD;


 desc_last->des0 &= ~(IDMAC_DES0_CH | IDMAC_DES0_DIC);
 desc_last->des0 |= IDMAC_DES0_LD;

 return 0;
err_own_bit:

 dev_dbg(host->dev, "descriptor is still owned by IDMAC.\n");
 memset(host->sg_cpu, 0, DESC_RING_BUF_SZ);
 dw_mci_idmac_init(host);
 return -EINVAL;
}

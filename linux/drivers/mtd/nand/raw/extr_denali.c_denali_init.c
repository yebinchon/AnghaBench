
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int * ops; } ;
struct denali_controller {int revision; int nbanks; int dma_avail; int caps; int oob_skip_bytes; int dev; int irq; scalar_t__ reg; int host_write; int host_read; int setup_dma; int active_bank; int chips; int irq_lock; int complete; TYPE_1__ controller; } ;


 scalar_t__ CHIP_ENABLE_DONT_CARE ;
 int CHIP_EN_DONT_CARE__FLAG ;
 int DENALI_CAP_DMA_64BIT ;
 int DENALI_DEFAULT_OOB_SKIP_BYTES ;
 int DENALI_INVALID_BANK ;
 int DENALI_NAND_NAME ;
 int DMA_BIT_MASK (int) ;
 scalar_t__ ECC_ENABLE ;
 int ECC_ENABLE__FLAG ;
 scalar_t__ FEATURES ;
 int FEATURES__DMA ;
 int FEATURES__INDEX_ADDR ;
 int FEATURES__N_BANKS ;
 int FIELD_GET (int ,int) ;
 int GENMASK (int,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int IRQF_SHARED ;
 scalar_t__ RB_PIN_ENABLED ;
 scalar_t__ REVISION ;
 scalar_t__ SPARE_AREA_MARKER ;
 scalar_t__ SPARE_AREA_SKIP_BYTES ;
 scalar_t__ TRANSFER_SPARE_REG ;
 int denali_clear_irq_all (struct denali_controller*) ;
 int denali_controller_ops ;
 int denali_direct_read ;
 int denali_direct_write ;
 int denali_enable_irq (struct denali_controller*) ;
 int denali_indexed_read ;
 int denali_indexed_write ;
 int denali_isr ;
 int denali_setup_dma32 ;
 int denali_setup_dma64 ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*) ;
 int devm_request_irq (int ,int ,int ,int ,int ,struct denali_controller*) ;
 int dma_set_mask (int ,int ) ;
 int init_completion (int *) ;
 void* ioread32 (scalar_t__) ;
 int iowrite32 (int,scalar_t__) ;
 int nand_controller_init (TYPE_1__*) ;
 int spin_lock_init (int *) ;
 int swab16 (void*) ;

int denali_init(struct denali_controller *denali)
{
 u32 features = ioread32(denali->reg + FEATURES);
 int ret;

 nand_controller_init(&denali->controller);
 denali->controller.ops = &denali_controller_ops;
 init_completion(&denali->complete);
 spin_lock_init(&denali->irq_lock);
 INIT_LIST_HEAD(&denali->chips);
 denali->active_bank = DENALI_INVALID_BANK;





 if (!denali->revision)
  denali->revision = swab16(ioread32(denali->reg + REVISION));

 denali->nbanks = 1 << FIELD_GET(FEATURES__N_BANKS, features);


 if (denali->revision < 0x0501)
  denali->nbanks <<= 1;

 if (features & FEATURES__DMA)
  denali->dma_avail = 1;

 if (denali->dma_avail) {
  int dma_bit = denali->caps & DENALI_CAP_DMA_64BIT ? 64 : 32;

  ret = dma_set_mask(denali->dev, DMA_BIT_MASK(dma_bit));
  if (ret) {
   dev_info(denali->dev,
     "Failed to set DMA mask. Disabling DMA.\n");
   denali->dma_avail = 0;
  }
 }

 if (denali->dma_avail) {
  if (denali->caps & DENALI_CAP_DMA_64BIT)
   denali->setup_dma = denali_setup_dma64;
  else
   denali->setup_dma = denali_setup_dma32;
 }

 if (features & FEATURES__INDEX_ADDR) {
  denali->host_read = denali_indexed_read;
  denali->host_write = denali_indexed_write;
 } else {
  denali->host_read = denali_direct_read;
  denali->host_write = denali_direct_write;
 }






 denali->oob_skip_bytes = ioread32(denali->reg + SPARE_AREA_SKIP_BYTES);
 if (!denali->oob_skip_bytes) {
  denali->oob_skip_bytes = DENALI_DEFAULT_OOB_SKIP_BYTES;
  iowrite32(denali->oob_skip_bytes,
     denali->reg + SPARE_AREA_SKIP_BYTES);
 }

 iowrite32(0, denali->reg + TRANSFER_SPARE_REG);
 iowrite32(GENMASK(denali->nbanks - 1, 0), denali->reg + RB_PIN_ENABLED);
 iowrite32(CHIP_EN_DONT_CARE__FLAG, denali->reg + CHIP_ENABLE_DONT_CARE);
 iowrite32(ECC_ENABLE__FLAG, denali->reg + ECC_ENABLE);
 iowrite32(0xffff, denali->reg + SPARE_AREA_MARKER);

 denali_clear_irq_all(denali);

 ret = devm_request_irq(denali->dev, denali->irq, denali_isr,
          IRQF_SHARED, DENALI_NAND_NAME, denali);
 if (ret) {
  dev_err(denali->dev, "Unable to request IRQ\n");
  return ret;
 }

 denali_enable_irq(denali);

 return 0;
}

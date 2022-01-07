
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct slic_upr {int dummy; } ;
struct slic_shmem_data {int isr; } ;
struct slic_shmem {int isr_paddr; struct slic_shmem_data* shmem_data; } ;
struct slic_oasis_eeprom {int eeprom_code_size; int * mac2; int * mac; } ;
struct slic_mojave_eeprom {int eeprom_code_size; int * mac2; int * mac; } ;
struct slic_device {scalar_t__ model; TYPE_2__* pdev; TYPE_1__* netdev; struct slic_shmem shmem; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {int dev; int devfn; } ;
struct TYPE_3__ {int dev_addr; } ;


 int EINVAL ;
 int ENOMEM ;
 int ETIMEDOUT ;
 int GFP_KERNEL ;
 unsigned int PCI_FUNC (int ) ;
 int SLIC_EEPROM_SIZE ;
 int SLIC_ICR_INT_OFF ;
 int SLIC_ISR_UPC ;
 scalar_t__ SLIC_MODEL_OASIS ;
 int SLIC_REG_ICR ;
 int SLIC_REG_ISP ;
 int SLIC_REG_ISR ;
 int SLIC_UPR_CONFIG ;
 int dev_err (int *,char*) ;
 unsigned char* dma_alloc_coherent (int *,int ,int *,int ) ;
 int dma_free_coherent (int *,int ,unsigned char*,int ) ;
 int ether_addr_copy (int ,int *) ;
 int kfree (struct slic_upr*) ;
 unsigned int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int lower_32_bits (int ) ;
 int mdelay (int) ;
 struct slic_upr* slic_dequeue_upr (struct slic_device*) ;
 int slic_eeprom_valid (unsigned char*,unsigned int) ;
 int slic_flush_write (struct slic_device*) ;
 int slic_new_upr (struct slic_device*,int ,int ) ;
 int slic_write (struct slic_device*,int ,int ) ;

__attribute__((used)) static int slic_read_eeprom(struct slic_device *sdev)
{
 unsigned int devfn = PCI_FUNC(sdev->pdev->devfn);
 struct slic_shmem *sm = &sdev->shmem;
 struct slic_shmem_data *sm_data = sm->shmem_data;
 const unsigned int MAX_LOOPS = 5000;
 unsigned int codesize;
 unsigned char *eeprom;
 struct slic_upr *upr;
 unsigned int i = 0;
 dma_addr_t paddr;
 int err = 0;
 u8 *mac[2];

 eeprom = dma_alloc_coherent(&sdev->pdev->dev, SLIC_EEPROM_SIZE,
        &paddr, GFP_KERNEL);
 if (!eeprom)
  return -ENOMEM;

 slic_write(sdev, SLIC_REG_ICR, SLIC_ICR_INT_OFF);

 slic_write(sdev, SLIC_REG_ISP, lower_32_bits(sm->isr_paddr));

 err = slic_new_upr(sdev, SLIC_UPR_CONFIG, paddr);
 if (!err) {
  for (i = 0; i < MAX_LOOPS; i++) {
   if (le32_to_cpu(sm_data->isr) & SLIC_ISR_UPC)
    break;
   mdelay(1);
  }
  if (i == MAX_LOOPS) {
   dev_err(&sdev->pdev->dev,
    "timed out while waiting for eeprom data\n");
   err = -ETIMEDOUT;
  }
  upr = slic_dequeue_upr(sdev);
  kfree(upr);
 }

 slic_write(sdev, SLIC_REG_ISP, 0);
 slic_write(sdev, SLIC_REG_ISR, 0);
 slic_flush_write(sdev);

 if (err)
  goto free_eeprom;

 if (sdev->model == SLIC_MODEL_OASIS) {
  struct slic_oasis_eeprom *oee;

  oee = (struct slic_oasis_eeprom *)eeprom;
  mac[0] = oee->mac;
  mac[1] = oee->mac2;
  codesize = le16_to_cpu(oee->eeprom_code_size);
 } else {
  struct slic_mojave_eeprom *mee;

  mee = (struct slic_mojave_eeprom *)eeprom;
  mac[0] = mee->mac;
  mac[1] = mee->mac2;
  codesize = le16_to_cpu(mee->eeprom_code_size);
 }

 if (!slic_eeprom_valid(eeprom, codesize)) {
  dev_err(&sdev->pdev->dev, "invalid checksum in eeprom\n");
  err = -EINVAL;
  goto free_eeprom;
 }

 ether_addr_copy(sdev->netdev->dev_addr, mac[devfn]);
free_eeprom:
 dma_free_coherent(&sdev->pdev->dev, SLIC_EEPROM_SIZE, eeprom, paddr);

 return err;
}

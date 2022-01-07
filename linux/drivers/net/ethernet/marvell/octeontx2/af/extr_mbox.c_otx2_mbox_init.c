
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct otx2_mbox_dev {int mbox_lock; void* mbase; } ;
struct otx2_mbox {int tr_shift; int ndevs; void* hwbase; struct otx2_mbox_dev* dev; struct pci_dev* pdev; void* reg_base; int trigger; void* rx_size; void* tx_size; void* rx_start; void* tx_start; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 void* MBOX_DOWN_RX_SIZE ;
 void* MBOX_DOWN_RX_START ;
 void* MBOX_DOWN_TX_SIZE ;
 void* MBOX_DOWN_TX_START ;
 int MBOX_SIZE ;
 void* MBOX_UP_RX_SIZE ;
 void* MBOX_UP_RX_START ;
 void* MBOX_UP_TX_SIZE ;
 void* MBOX_UP_TX_START ;
 int RVU_AF_AFPF_MBOX0 ;
 int RVU_PF_PFAF_MBOX1 ;
 int RVU_PF_VFX_PFVF_MBOX0 ;
 int RVU_VF_VFPF_MBOX1 ;
 struct otx2_mbox_dev* kcalloc (int,int,int ) ;
 int otx2_mbox_destroy (struct otx2_mbox*) ;
 int otx2_mbox_reset (struct otx2_mbox*,int) ;
 int spin_lock_init (int *) ;

int otx2_mbox_init(struct otx2_mbox *mbox, void *hwbase, struct pci_dev *pdev,
     void *reg_base, int direction, int ndevs)
{
 struct otx2_mbox_dev *mdev;
 int devid;

 switch (direction) {
 case 135:
 case 131:
  mbox->tx_start = MBOX_DOWN_TX_START;
  mbox->rx_start = MBOX_DOWN_RX_START;
  mbox->tx_size = MBOX_DOWN_TX_SIZE;
  mbox->rx_size = MBOX_DOWN_RX_SIZE;
  break;
 case 133:
 case 129:
  mbox->tx_start = MBOX_DOWN_RX_START;
  mbox->rx_start = MBOX_DOWN_TX_START;
  mbox->tx_size = MBOX_DOWN_RX_SIZE;
  mbox->rx_size = MBOX_DOWN_TX_SIZE;
  break;
 case 134:
 case 130:
  mbox->tx_start = MBOX_UP_TX_START;
  mbox->rx_start = MBOX_UP_RX_START;
  mbox->tx_size = MBOX_UP_TX_SIZE;
  mbox->rx_size = MBOX_UP_RX_SIZE;
  break;
 case 132:
 case 128:
  mbox->tx_start = MBOX_UP_RX_START;
  mbox->rx_start = MBOX_UP_TX_START;
  mbox->tx_size = MBOX_UP_RX_SIZE;
  mbox->rx_size = MBOX_UP_TX_SIZE;
  break;
 default:
  return -ENODEV;
 }

 switch (direction) {
 case 135:
 case 134:
  mbox->trigger = RVU_AF_AFPF_MBOX0;
  mbox->tr_shift = 4;
  break;
 case 133:
 case 132:
  mbox->trigger = RVU_PF_PFAF_MBOX1;
  mbox->tr_shift = 0;
  break;
 case 131:
 case 130:
  mbox->trigger = RVU_PF_VFX_PFVF_MBOX0;
  mbox->tr_shift = 12;
  break;
 case 129:
 case 128:
  mbox->trigger = RVU_VF_VFPF_MBOX1;
  mbox->tr_shift = 0;
  break;
 default:
  return -ENODEV;
 }

 mbox->reg_base = reg_base;
 mbox->hwbase = hwbase;
 mbox->pdev = pdev;

 mbox->dev = kcalloc(ndevs, sizeof(struct otx2_mbox_dev), GFP_KERNEL);
 if (!mbox->dev) {
  otx2_mbox_destroy(mbox);
  return -ENOMEM;
 }

 mbox->ndevs = ndevs;
 for (devid = 0; devid < ndevs; devid++) {
  mdev = &mbox->dev[devid];
  mdev->mbase = mbox->hwbase + (devid * MBOX_SIZE);
  spin_lock_init(&mdev->mbox_lock);

  otx2_mbox_reset(mbox, devid);
 }

 return 0;
}

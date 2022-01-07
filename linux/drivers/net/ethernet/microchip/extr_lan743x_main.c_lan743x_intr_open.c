
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct msix_entry {int entry; int vector; } ;
struct lan743x_intr {int number_of_vectors; int using_vectors; int flags; TYPE_1__* vector_list; int irq; } ;
struct TYPE_6__ {int flags; } ;
struct lan743x_adapter {struct lan743x_adapter* rx; TYPE_2__ csr; struct lan743x_adapter* tx; int netdev; TYPE_3__* pdev; struct lan743x_intr intr; } ;
struct TYPE_7__ {int irq; } ;
struct TYPE_5__ {int int_mask; int irq; } ;


 int ENODEV ;
 int INTR_FLAG_IRQ_REQUESTED (int) ;
 int INTR_FLAG_MSIX_ENABLED ;
 int INTR_FLAG_MSI_ENABLED ;
 int INT_BIT_ALL_OTHER_ ;
 int INT_BIT_ALL_RX_ ;
 int INT_BIT_ALL_TX_ ;
 int INT_BIT_DMA_RX_ (int) ;
 int INT_BIT_DMA_TX_ (int) ;
 int INT_BIT_MAS_ ;
 int INT_EN_SET ;
 int INT_MOD_CFG0 ;
 int INT_MOD_CFG1 ;
 int INT_MOD_CFG2 ;
 int INT_MOD_CFG3 ;
 int INT_MOD_CFG4 ;
 int INT_MOD_CFG5 ;
 int INT_MOD_CFG6 ;
 int INT_MOD_CFG7 ;
 int INT_MOD_MAP0 ;
 int INT_MOD_MAP1 ;
 int INT_MOD_MAP2 ;
 int INT_VEC_EN_ (int) ;
 int INT_VEC_EN_AUTO_CLR ;
 int INT_VEC_EN_CLR ;
 int INT_VEC_EN_SET ;
 int INT_VEC_MAP0 ;
 int INT_VEC_MAP0_RX_VEC_ (int,int) ;
 int INT_VEC_MAP1 ;
 int INT_VEC_MAP1_TX_VEC_ (int,int) ;
 int INT_VEC_MAP2 ;
 int LAN743X_CSR_FLAG_IS_A0 ;
 int LAN743X_CSR_FLAG_SUPPORTS_INTR_AUTO_SET_CLR ;
 int LAN743X_INT_MOD ;
 int LAN743X_MAX_VECTOR_COUNT ;
 int LAN743X_USED_RX_CHANNELS ;
 int LAN743X_USED_TX_CHANNELS ;
 int LAN743X_VECTOR_FLAG_IRQ_SHARED ;
 int LAN743X_VECTOR_FLAG_MASTER_ENABLE_CLEAR ;
 int LAN743X_VECTOR_FLAG_MASTER_ENABLE_SET ;
 int LAN743X_VECTOR_FLAG_SOURCE_ENABLE_AUTO_CLEAR ;
 int LAN743X_VECTOR_FLAG_SOURCE_ENABLE_AUTO_SET ;
 int LAN743X_VECTOR_FLAG_SOURCE_ENABLE_CHECK ;
 int LAN743X_VECTOR_FLAG_SOURCE_ENABLE_CLEAR ;
 int LAN743X_VECTOR_FLAG_SOURCE_ENABLE_R2C ;
 int LAN743X_VECTOR_FLAG_SOURCE_STATUS_AUTO_CLEAR ;
 int LAN743X_VECTOR_FLAG_SOURCE_STATUS_R2C ;
 int LAN743X_VECTOR_FLAG_SOURCE_STATUS_READ ;
 int LAN743X_VECTOR_FLAG_SOURCE_STATUS_W2C ;
 int LAN743X_VECTOR_FLAG_VECTOR_ENABLE_AUTO_CLEAR ;
 int LAN743X_VECTOR_FLAG_VECTOR_ENABLE_AUTO_SET ;
 int LAN743X_VECTOR_FLAG_VECTOR_ENABLE_ISR_CLEAR ;
 int LAN743X_VECTOR_FLAG_VECTOR_ENABLE_ISR_SET ;
 int ifup ;
 int lan743x_csr_write (struct lan743x_adapter*,int ,int) ;
 int lan743x_intr_close (struct lan743x_adapter*) ;
 int lan743x_intr_register_isr (struct lan743x_adapter*,int,int,int,int ,struct lan743x_adapter*) ;
 int lan743x_intr_shared_isr ;
 int lan743x_intr_test_isr (struct lan743x_adapter*) ;
 int lan743x_rx_isr ;
 int lan743x_tx_isr ;
 int memset (struct msix_entry*,int ,int) ;
 int netif_info (struct lan743x_adapter*,int ,int ,char*,...) ;
 int pci_enable_msi (TYPE_3__*) ;
 int pci_enable_msix_range (TYPE_3__*,struct msix_entry*,int,int) ;

__attribute__((used)) static int lan743x_intr_open(struct lan743x_adapter *adapter)
{
 struct msix_entry msix_entries[LAN743X_MAX_VECTOR_COUNT];
 struct lan743x_intr *intr = &adapter->intr;
 u32 int_vec_en_auto_clr = 0;
 u32 int_vec_map0 = 0;
 u32 int_vec_map1 = 0;
 int ret = -ENODEV;
 int index = 0;
 u32 flags = 0;

 intr->number_of_vectors = 0;


 memset(&msix_entries[0], 0,
        sizeof(struct msix_entry) * LAN743X_MAX_VECTOR_COUNT);
 for (index = 0; index < LAN743X_MAX_VECTOR_COUNT; index++)
  msix_entries[index].entry = index;
 ret = pci_enable_msix_range(adapter->pdev,
        msix_entries, 1,
        1 + LAN743X_USED_TX_CHANNELS +
        LAN743X_USED_RX_CHANNELS);

 if (ret > 0) {
  intr->flags |= INTR_FLAG_MSIX_ENABLED;
  intr->number_of_vectors = ret;
  intr->using_vectors = 1;
  for (index = 0; index < intr->number_of_vectors; index++)
   intr->vector_list[index].irq = msix_entries
             [index].vector;
  netif_info(adapter, ifup, adapter->netdev,
      "using MSIX interrupts, number of vectors = %d\n",
      intr->number_of_vectors);
 }


 if (!intr->number_of_vectors) {
  if (!(adapter->csr.flags & LAN743X_CSR_FLAG_IS_A0)) {
   if (!pci_enable_msi(adapter->pdev)) {
    intr->flags |= INTR_FLAG_MSI_ENABLED;
    intr->number_of_vectors = 1;
    intr->using_vectors = 1;
    intr->vector_list[0].irq =
     adapter->pdev->irq;
    netif_info(adapter, ifup, adapter->netdev,
        "using MSI interrupts, number of vectors = %d\n",
        intr->number_of_vectors);
   }
  }
 }


 if (!intr->number_of_vectors) {
  intr->number_of_vectors = 1;
  intr->using_vectors = 0;
  intr->vector_list[0].irq = intr->irq;
  netif_info(adapter, ifup, adapter->netdev,
      "using legacy interrupts\n");
 }


 lan743x_csr_write(adapter, INT_VEC_EN_CLR, 0xFFFFFFFF);


 lan743x_csr_write(adapter, INT_VEC_MAP0, 0x00000000);
 lan743x_csr_write(adapter, INT_VEC_MAP1, 0x00000000);
 lan743x_csr_write(adapter, INT_VEC_MAP2, 0x00000000);
 flags = LAN743X_VECTOR_FLAG_SOURCE_STATUS_READ |
  LAN743X_VECTOR_FLAG_SOURCE_STATUS_W2C |
  LAN743X_VECTOR_FLAG_SOURCE_ENABLE_CHECK |
  LAN743X_VECTOR_FLAG_SOURCE_ENABLE_CLEAR;

 if (intr->using_vectors) {
  flags |= LAN743X_VECTOR_FLAG_VECTOR_ENABLE_ISR_CLEAR |
    LAN743X_VECTOR_FLAG_VECTOR_ENABLE_ISR_SET;
 } else {
  flags |= LAN743X_VECTOR_FLAG_MASTER_ENABLE_CLEAR |
    LAN743X_VECTOR_FLAG_MASTER_ENABLE_SET |
    LAN743X_VECTOR_FLAG_IRQ_SHARED;
 }

 if (adapter->csr.flags & LAN743X_CSR_FLAG_SUPPORTS_INTR_AUTO_SET_CLR) {
  flags &= ~LAN743X_VECTOR_FLAG_SOURCE_STATUS_READ;
  flags &= ~LAN743X_VECTOR_FLAG_SOURCE_STATUS_W2C;
  flags &= ~LAN743X_VECTOR_FLAG_SOURCE_ENABLE_CLEAR;
  flags &= ~LAN743X_VECTOR_FLAG_SOURCE_ENABLE_CHECK;
  flags |= LAN743X_VECTOR_FLAG_SOURCE_STATUS_R2C;
  flags |= LAN743X_VECTOR_FLAG_SOURCE_ENABLE_R2C;
 }

 ret = lan743x_intr_register_isr(adapter, 0, flags,
     INT_BIT_ALL_RX_ | INT_BIT_ALL_TX_ |
     INT_BIT_ALL_OTHER_,
     lan743x_intr_shared_isr, adapter);
 if (ret)
  goto clean_up;
 intr->flags |= INTR_FLAG_IRQ_REQUESTED(0);

 if (intr->using_vectors)
  lan743x_csr_write(adapter, INT_VEC_EN_SET,
      INT_VEC_EN_(0));

 if (!(adapter->csr.flags & LAN743X_CSR_FLAG_IS_A0)) {
  lan743x_csr_write(adapter, INT_MOD_CFG0, LAN743X_INT_MOD);
  lan743x_csr_write(adapter, INT_MOD_CFG1, LAN743X_INT_MOD);
  lan743x_csr_write(adapter, INT_MOD_CFG2, LAN743X_INT_MOD);
  lan743x_csr_write(adapter, INT_MOD_CFG3, LAN743X_INT_MOD);
  lan743x_csr_write(adapter, INT_MOD_CFG4, LAN743X_INT_MOD);
  lan743x_csr_write(adapter, INT_MOD_CFG5, LAN743X_INT_MOD);
  lan743x_csr_write(adapter, INT_MOD_CFG6, LAN743X_INT_MOD);
  lan743x_csr_write(adapter, INT_MOD_CFG7, LAN743X_INT_MOD);
  lan743x_csr_write(adapter, INT_MOD_MAP0, 0x00005432);
  lan743x_csr_write(adapter, INT_MOD_MAP1, 0x00000001);
  lan743x_csr_write(adapter, INT_MOD_MAP2, 0x00FFFFFF);
 }


 lan743x_csr_write(adapter, INT_EN_SET, INT_BIT_MAS_);
 ret = lan743x_intr_test_isr(adapter);
 if (ret)
  goto clean_up;

 if (intr->number_of_vectors > 1) {
  int number_of_tx_vectors = intr->number_of_vectors - 1;

  if (number_of_tx_vectors > LAN743X_USED_TX_CHANNELS)
   number_of_tx_vectors = LAN743X_USED_TX_CHANNELS;
  flags = LAN743X_VECTOR_FLAG_SOURCE_STATUS_READ |
   LAN743X_VECTOR_FLAG_SOURCE_STATUS_W2C |
   LAN743X_VECTOR_FLAG_SOURCE_ENABLE_CHECK |
   LAN743X_VECTOR_FLAG_SOURCE_ENABLE_CLEAR |
   LAN743X_VECTOR_FLAG_VECTOR_ENABLE_ISR_CLEAR |
   LAN743X_VECTOR_FLAG_VECTOR_ENABLE_ISR_SET;

  if (adapter->csr.flags &
     LAN743X_CSR_FLAG_SUPPORTS_INTR_AUTO_SET_CLR) {
   flags = LAN743X_VECTOR_FLAG_VECTOR_ENABLE_AUTO_SET |
    LAN743X_VECTOR_FLAG_SOURCE_ENABLE_AUTO_SET |
    LAN743X_VECTOR_FLAG_SOURCE_ENABLE_AUTO_CLEAR |
    LAN743X_VECTOR_FLAG_SOURCE_STATUS_AUTO_CLEAR;
  }

  for (index = 0; index < number_of_tx_vectors; index++) {
   u32 int_bit = INT_BIT_DMA_TX_(index);
   int vector = index + 1;


   int_vec_map1 |= INT_VEC_MAP1_TX_VEC_(index, vector);
   lan743x_csr_write(adapter, INT_VEC_MAP1, int_vec_map1);


   intr->vector_list[0].int_mask &= ~int_bit;
   ret = lan743x_intr_register_isr(adapter, vector, flags,
       int_bit, lan743x_tx_isr,
       &adapter->tx[index]);
   if (ret)
    goto clean_up;
   intr->flags |= INTR_FLAG_IRQ_REQUESTED(vector);
   if (!(flags &
       LAN743X_VECTOR_FLAG_VECTOR_ENABLE_AUTO_SET))
    lan743x_csr_write(adapter, INT_VEC_EN_SET,
        INT_VEC_EN_(vector));
  }
 }
 if ((intr->number_of_vectors - LAN743X_USED_TX_CHANNELS) > 1) {
  int number_of_rx_vectors = intr->number_of_vectors -
        LAN743X_USED_TX_CHANNELS - 1;

  if (number_of_rx_vectors > LAN743X_USED_RX_CHANNELS)
   number_of_rx_vectors = LAN743X_USED_RX_CHANNELS;

  flags = LAN743X_VECTOR_FLAG_SOURCE_STATUS_READ |
   LAN743X_VECTOR_FLAG_SOURCE_STATUS_W2C |
   LAN743X_VECTOR_FLAG_SOURCE_ENABLE_CHECK |
   LAN743X_VECTOR_FLAG_SOURCE_ENABLE_CLEAR |
   LAN743X_VECTOR_FLAG_VECTOR_ENABLE_ISR_CLEAR |
   LAN743X_VECTOR_FLAG_VECTOR_ENABLE_ISR_SET;

  if (adapter->csr.flags &
      LAN743X_CSR_FLAG_SUPPORTS_INTR_AUTO_SET_CLR) {
   flags = LAN743X_VECTOR_FLAG_VECTOR_ENABLE_AUTO_CLEAR |
    LAN743X_VECTOR_FLAG_VECTOR_ENABLE_AUTO_SET |
    LAN743X_VECTOR_FLAG_SOURCE_ENABLE_AUTO_SET |
    LAN743X_VECTOR_FLAG_SOURCE_ENABLE_AUTO_CLEAR |
    LAN743X_VECTOR_FLAG_SOURCE_STATUS_AUTO_CLEAR;
  }
  for (index = 0; index < number_of_rx_vectors; index++) {
   int vector = index + 1 + LAN743X_USED_TX_CHANNELS;
   u32 int_bit = INT_BIT_DMA_RX_(index);


   int_vec_map0 |= INT_VEC_MAP0_RX_VEC_(index, vector);
   lan743x_csr_write(adapter, INT_VEC_MAP0, int_vec_map0);
   if (flags &
       LAN743X_VECTOR_FLAG_VECTOR_ENABLE_AUTO_CLEAR) {
    int_vec_en_auto_clr |= INT_VEC_EN_(vector);
    lan743x_csr_write(adapter, INT_VEC_EN_AUTO_CLR,
        int_vec_en_auto_clr);
   }


   intr->vector_list[0].int_mask &= ~int_bit;
   ret = lan743x_intr_register_isr(adapter, vector, flags,
       int_bit, lan743x_rx_isr,
       &adapter->rx[index]);
   if (ret)
    goto clean_up;
   intr->flags |= INTR_FLAG_IRQ_REQUESTED(vector);

   lan743x_csr_write(adapter, INT_VEC_EN_SET,
       INT_VEC_EN_(vector));
  }
 }
 return 0;

clean_up:
 lan743x_intr_close(adapter);
 return ret;
}

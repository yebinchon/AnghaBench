
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct net_device {int dummy; } ;
struct mace_frame {int dummy; } ;
struct mace_data {int rx_slot; int rx_tail; int tx_sloti; int tx_count; scalar_t__ rx_ring; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int MACE_BUFF_SIZE ;
 int N_RX_RING ;
 scalar_t__ PSC_ENETRD_CMD ;
 int PSC_ENETRD_CTL ;
 scalar_t__ PSC_ENETRD_LEN ;
 scalar_t__ PSC_ENETWR_CMD ;
 int PSC_ENETWR_CTL ;
 scalar_t__ PSC_MYSTERY ;
 int mace_dma_rx_frame (struct net_device*,struct mace_frame*) ;
 int mace_load_rxdma_base (struct net_device*,int) ;
 int mace_rxdma_reset (struct net_device*) ;
 int mace_txdma_reset (struct net_device*) ;
 struct mace_data* netdev_priv (struct net_device*) ;
 int psc_read_long (scalar_t__) ;
 int psc_read_word (int ) ;
 int psc_write_word (scalar_t__,int) ;

__attribute__((used)) static irqreturn_t mace_dma_intr(int irq, void *dev_id)
{
 struct net_device *dev = (struct net_device *) dev_id;
 struct mace_data *mp = netdev_priv(dev);
 int left, head;
 u16 status;
 u32 baka;



 while ((baka = psc_read_long(PSC_MYSTERY)) != psc_read_long(PSC_MYSTERY));
 if (!(baka & 0x60000000)) return IRQ_NONE;





 status = psc_read_word(PSC_ENETRD_CTL);

 if (status & 0x2000) {
  mace_rxdma_reset(dev);
 } else if (status & 0x0100) {
  psc_write_word(PSC_ENETRD_CMD + mp->rx_slot, 0x1100);

  left = psc_read_long(PSC_ENETRD_LEN + mp->rx_slot);
  head = N_RX_RING - left;



  while (mp->rx_tail < head) {
   mace_dma_rx_frame(dev, (struct mace_frame*) (mp->rx_ring
    + (mp->rx_tail * MACE_BUFF_SIZE)));
   mp->rx_tail++;
  }




  if (!left) {
   mace_load_rxdma_base(dev, mp->rx_slot);
   mp->rx_slot ^= 0x10;
  } else {
   psc_write_word(PSC_ENETRD_CMD + mp->rx_slot, 0x9800);
  }
 }





 status = psc_read_word(PSC_ENETWR_CTL);

 if (status & 0x2000) {
  mace_txdma_reset(dev);
 } else if (status & 0x0100) {
  psc_write_word(PSC_ENETWR_CMD + mp->tx_sloti, 0x0100);
  mp->tx_sloti ^= 0x10;
  mp->tx_count++;
 }
 return IRQ_HANDLED;
}

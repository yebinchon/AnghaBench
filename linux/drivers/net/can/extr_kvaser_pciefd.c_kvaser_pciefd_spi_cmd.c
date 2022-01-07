
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct kvaser_pciefd {TYPE_1__* pci; scalar_t__ reg_base; } ;
struct TYPE_2__ {int dev; } ;


 int BIT (int) ;
 int EIO ;
 scalar_t__ KVASER_PCIEFD_SPI_CTRL_REG ;
 int KVASER_PCIEFD_SPI_RRDY ;
 scalar_t__ KVASER_PCIEFD_SPI_RX_REG ;
 scalar_t__ KVASER_PCIEFD_SPI_SSEL_REG ;
 int KVASER_PCIEFD_SPI_TMT ;
 int KVASER_PCIEFD_SPI_TRDY ;
 scalar_t__ KVASER_PCIEFD_SPI_TX_REG ;
 int dev_err (int *,char*) ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int ,scalar_t__) ;
 scalar_t__ kvaser_pciefd_spi_wait_loop (struct kvaser_pciefd*,int ) ;

__attribute__((used)) static int kvaser_pciefd_spi_cmd(struct kvaser_pciefd *pcie, const u8 *tx,
     u32 tx_len, u8 *rx, u32 rx_len)
{
 int c;

 iowrite32(BIT(0), pcie->reg_base + KVASER_PCIEFD_SPI_SSEL_REG);
 iowrite32(BIT(10), pcie->reg_base + KVASER_PCIEFD_SPI_CTRL_REG);
 ioread32(pcie->reg_base + KVASER_PCIEFD_SPI_RX_REG);

 c = tx_len;
 while (c--) {
  if (kvaser_pciefd_spi_wait_loop(pcie, KVASER_PCIEFD_SPI_TRDY))
   return -EIO;

  iowrite32(*tx++, pcie->reg_base + KVASER_PCIEFD_SPI_TX_REG);

  if (kvaser_pciefd_spi_wait_loop(pcie, KVASER_PCIEFD_SPI_RRDY))
   return -EIO;

  ioread32(pcie->reg_base + KVASER_PCIEFD_SPI_RX_REG);
 }

 c = rx_len;
 while (c-- > 0) {
  if (kvaser_pciefd_spi_wait_loop(pcie, KVASER_PCIEFD_SPI_TRDY))
   return -EIO;

  iowrite32(0, pcie->reg_base + KVASER_PCIEFD_SPI_TX_REG);

  if (kvaser_pciefd_spi_wait_loop(pcie, KVASER_PCIEFD_SPI_RRDY))
   return -EIO;

  *rx++ = ioread32(pcie->reg_base + KVASER_PCIEFD_SPI_RX_REG);
 }

 if (kvaser_pciefd_spi_wait_loop(pcie, KVASER_PCIEFD_SPI_TMT))
  return -EIO;

 iowrite32(0, pcie->reg_base + KVASER_PCIEFD_SPI_CTRL_REG);

 if (c != -1) {
  dev_err(&pcie->pci->dev, "Flash SPI transfer failed\n");
  return -EIO;
 }

 return 0;
}

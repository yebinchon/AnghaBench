
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int irq; } ;
struct net_device {int irq; } ;
struct device {int dummy; } ;
struct TYPE_8__ {unsigned long base_addr; } ;
struct TYPE_7__ {int interrupt; } ;
struct TYPE_6__ {struct net_device* dev; struct device* bus_dev; } ;
typedef TYPE_1__ DFX_board_t ;


 int DBG_printk (char*) ;
 int DFX_BUS_EISA (struct device*) ;
 int DFX_BUS_TC (struct device*) ;
 scalar_t__ DFX_MMIO ;
 int PCI_LATENCY_TIMER ;
 int PFI_K_LAT_TIMER_DEF ;
 int PFI_K_LAT_TIMER_MIN ;
 int PFI_K_REG_MODE_CTRL ;
 int PFI_MODE_M_DMA_ENB ;
 int PFI_MODE_M_PDQ_INT_ENB ;
 int PI_BURST_HOLDOFF_M_MEM_MAP ;




 int PI_CONFIG_STAT_0_M_INT_ENB ;
 int PI_CONFIG_STAT_0_M_IRQ ;
 int PI_CONFIG_STAT_0_V_IRQ ;
 unsigned long PI_DEFEA_K_BURST_HOLDOFF ;
 int PI_DEFEA_K_CSR_IO ;
 int PI_ESIC_K_BURST_HOLDOFF_LEN ;
 int PI_ESIC_K_CSR_IO_LEN ;
 unsigned long PI_ESIC_K_FUNCTION_CNTRL ;
 unsigned long PI_ESIC_K_IO_ADD_CMP_0_0 ;
 unsigned long PI_ESIC_K_IO_ADD_CMP_0_1 ;
 unsigned long PI_ESIC_K_IO_ADD_CMP_1_0 ;
 unsigned long PI_ESIC_K_IO_ADD_CMP_1_1 ;
 unsigned long PI_ESIC_K_IO_ADD_MASK_0_0 ;
 unsigned long PI_ESIC_K_IO_ADD_MASK_0_1 ;
 unsigned long PI_ESIC_K_IO_ADD_MASK_1_0 ;
 unsigned long PI_ESIC_K_IO_ADD_MASK_1_1 ;
 unsigned long PI_ESIC_K_IO_CONFIG_STAT_0 ;
 unsigned long PI_ESIC_K_SLOT_CNTRL ;
 int PI_FUNCTION_CNTRL_M_IOCS0 ;
 int PI_FUNCTION_CNTRL_M_IOCS1 ;
 int PI_FUNCTION_CNTRL_M_MEMCS1 ;
 int PI_IO_CMP_M_SLOT ;
 int PI_SLOT_CNTRL_M_ENB ;
 int dev_is_pci (struct device*) ;
 int dfx_port_write_long (TYPE_1__*,int ,int) ;
 int inb (unsigned long) ;
 TYPE_1__* netdev_priv (struct net_device*) ;
 int outb (int,unsigned long) ;
 int pci_read_config_byte (struct pci_dev*,int ,int*) ;
 int pci_write_config_byte (struct pci_dev*,int ,int) ;
 TYPE_3__* to_eisa_device (struct device*) ;
 struct pci_dev* to_pci_dev (struct device*) ;
 TYPE_2__* to_tc_dev (struct device*) ;

__attribute__((used)) static void dfx_bus_init(struct net_device *dev)
{
 DFX_board_t *bp = netdev_priv(dev);
 struct device *bdev = bp->bus_dev;
 int dfx_bus_pci = dev_is_pci(bdev);
 int dfx_bus_eisa = DFX_BUS_EISA(bdev);
 int dfx_bus_tc = DFX_BUS_TC(bdev);
 int dfx_use_mmio = DFX_MMIO || dfx_bus_tc;
 u8 val;

 DBG_printk("In dfx_bus_init...\n");


 bp->dev = dev;



 if (dfx_bus_tc)
  dev->irq = to_tc_dev(bdev)->interrupt;
 if (dfx_bus_eisa) {
  unsigned long base_addr = to_eisa_device(bdev)->base_addr;


  outb(0, base_addr + PI_ESIC_K_SLOT_CNTRL);


  val = inb(base_addr + PI_ESIC_K_IO_CONFIG_STAT_0);
  val &= PI_CONFIG_STAT_0_M_IRQ;
  val >>= PI_CONFIG_STAT_0_V_IRQ;

  switch (val) {
  case 128:
   dev->irq = 9;
   break;

  case 131:
   dev->irq = 10;
   break;

  case 130:
   dev->irq = 11;
   break;

  case 129:
   dev->irq = 15;
   break;
  }
  val = 0;
  outb(val, base_addr + PI_ESIC_K_IO_ADD_CMP_0_1);
  val = PI_DEFEA_K_CSR_IO;
  outb(val, base_addr + PI_ESIC_K_IO_ADD_CMP_0_0);

  val = PI_IO_CMP_M_SLOT;
  outb(val, base_addr + PI_ESIC_K_IO_ADD_MASK_0_1);
  val = (PI_ESIC_K_CSR_IO_LEN - 1) & ~3;
  outb(val, base_addr + PI_ESIC_K_IO_ADD_MASK_0_0);

  val = 0;
  outb(val, base_addr + PI_ESIC_K_IO_ADD_CMP_1_1);
  val = PI_DEFEA_K_BURST_HOLDOFF;
  outb(val, base_addr + PI_ESIC_K_IO_ADD_CMP_1_0);

  val = PI_IO_CMP_M_SLOT;
  outb(val, base_addr + PI_ESIC_K_IO_ADD_MASK_1_1);
  val = (PI_ESIC_K_BURST_HOLDOFF_LEN - 1) & ~3;
  outb(val, base_addr + PI_ESIC_K_IO_ADD_MASK_1_0);


  val = PI_FUNCTION_CNTRL_M_IOCS1;
  if (dfx_use_mmio)
   val |= PI_FUNCTION_CNTRL_M_MEMCS1;
  else
   val |= PI_FUNCTION_CNTRL_M_IOCS0;
  outb(val, base_addr + PI_ESIC_K_FUNCTION_CNTRL);





  val = PI_SLOT_CNTRL_M_ENB;
  outb(val, base_addr + PI_ESIC_K_SLOT_CNTRL);





  val = inb(base_addr + PI_DEFEA_K_BURST_HOLDOFF);
  if (dfx_use_mmio)
   val |= PI_BURST_HOLDOFF_M_MEM_MAP;
  else
   val &= ~PI_BURST_HOLDOFF_M_MEM_MAP;
  outb(val, base_addr + PI_DEFEA_K_BURST_HOLDOFF);


  val = inb(base_addr + PI_ESIC_K_IO_CONFIG_STAT_0);
  val |= PI_CONFIG_STAT_0_M_INT_ENB;
  outb(val, base_addr + PI_ESIC_K_IO_CONFIG_STAT_0);
 }
 if (dfx_bus_pci) {
  struct pci_dev *pdev = to_pci_dev(bdev);



  dev->irq = pdev->irq;



  pci_read_config_byte(pdev, PCI_LATENCY_TIMER, &val);
  if (val < PFI_K_LAT_TIMER_MIN) {
   val = PFI_K_LAT_TIMER_DEF;
   pci_write_config_byte(pdev, PCI_LATENCY_TIMER, val);
  }


  val = PFI_MODE_M_PDQ_INT_ENB | PFI_MODE_M_DMA_ENB;
  dfx_port_write_long(bp, PFI_K_REG_MODE_CTRL, val);
 }
}

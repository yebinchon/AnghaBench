
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_6__ {unsigned long base_addr; } ;
struct TYPE_5__ {struct device* bus_dev; } ;
typedef TYPE_1__ DFX_board_t ;


 int DBG_printk (char*) ;
 int DFX_BUS_EISA (struct device*) ;
 int PFI_K_REG_MODE_CTRL ;
 int PI_CONFIG_STAT_0_M_INT_ENB ;
 scalar_t__ PI_ESIC_K_FUNCTION_CNTRL ;
 scalar_t__ PI_ESIC_K_IO_CONFIG_STAT_0 ;
 scalar_t__ PI_ESIC_K_SLOT_CNTRL ;
 int dev_is_pci (struct device*) ;
 int dfx_port_write_long (TYPE_1__*,int ,int ) ;
 int inb (scalar_t__) ;
 TYPE_1__* netdev_priv (struct net_device*) ;
 int outb (int ,scalar_t__) ;
 TYPE_2__* to_eisa_device (struct device*) ;

__attribute__((used)) static void dfx_bus_uninit(struct net_device *dev)
{
 DFX_board_t *bp = netdev_priv(dev);
 struct device *bdev = bp->bus_dev;
 int dfx_bus_pci = dev_is_pci(bdev);
 int dfx_bus_eisa = DFX_BUS_EISA(bdev);
 u8 val;

 DBG_printk("In dfx_bus_uninit...\n");



 if (dfx_bus_eisa) {
  unsigned long base_addr = to_eisa_device(bdev)->base_addr;


  val = inb(base_addr + PI_ESIC_K_IO_CONFIG_STAT_0);
  val &= ~PI_CONFIG_STAT_0_M_INT_ENB;
  outb(val, base_addr + PI_ESIC_K_IO_CONFIG_STAT_0);


  outb(0, base_addr + PI_ESIC_K_SLOT_CNTRL);


  outb(0, base_addr + PI_ESIC_K_FUNCTION_CNTRL);
 }
 if (dfx_bus_pci) {

  dfx_port_write_long(bp, PFI_K_REG_MODE_CTRL, 0);
 }
}

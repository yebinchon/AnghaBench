
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nubus_board {int dev; int name; } ;
struct net_device {int mem_start; int mem_end; int irq; int dev_addr; int * netdev_ops; } ;
typedef enum mac8390_type { ____Placeholder_mac8390_type } mac8390_type ;
struct TYPE_2__ {int stop_page; int rmem_start; int rmem_end; int* reg_offset; void* get_8390_hdr; void* block_output; void* block_input; void* reset_8390; void* rx_start_page; void* tx_start_page; int word16; int name; } ;





 void* CABLETRON_RX_START_PG ;
 int CABLETRON_RX_STOP_PG ;
 void* CABLETRON_TX_START_PG ;
 int ENODEV ;







 int TX_PAGES ;
 void* WD_START_PG ;
 int __NS8390_init (struct net_device*,int ) ;
 int * cardname ;
 void* dayna_block_input ;
 void* dayna_block_output ;
 void* dayna_get_8390_hdr ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,int ,int ,...) ;
 TYPE_1__ ei_status ;
 void* interlan_reset ;
 int mac8390_netdev_ops ;
 void* mac8390_no_reset ;
 int mac8390_testio (int) ;
 void* sane_block_input ;
 void* sane_block_output ;
 void* sane_get_8390_hdr ;
 void* slow_sane_block_input ;
 void* slow_sane_block_output ;
 void* slow_sane_get_8390_hdr ;
 int * word16 ;

__attribute__((used)) static int mac8390_initdev(struct net_device *dev, struct nubus_board *board,
      enum mac8390_type type)
{
 static u32 fwrd4_offsets[16] = {
  0, 4, 8, 12,
  16, 20, 24, 28,
  32, 36, 40, 44,
  48, 52, 56, 60
 };
 static u32 back4_offsets[16] = {
  60, 56, 52, 48,
  44, 40, 36, 32,
  28, 24, 20, 16,
  12, 8, 4, 0
 };
 static u32 fwrd2_offsets[16] = {
  0, 2, 4, 6,
  8, 10, 12, 14,
  16, 18, 20, 22,
  24, 26, 28, 30
 };

 int access_bitmode = 0;


 dev->netdev_ops = &mac8390_netdev_ops;


 ei_status.name = cardname[type];
 ei_status.word16 = word16[type];


 if (type == 132) {
  ei_status.tx_start_page = CABLETRON_TX_START_PG;
  ei_status.rx_start_page = CABLETRON_RX_START_PG;
  ei_status.stop_page = CABLETRON_RX_STOP_PG;
  ei_status.rmem_start = dev->mem_start;
  ei_status.rmem_end = dev->mem_start + CABLETRON_RX_STOP_PG*256;
 } else {
  ei_status.tx_start_page = WD_START_PG;
  ei_status.rx_start_page = WD_START_PG + TX_PAGES;
  ei_status.stop_page = (dev->mem_end - dev->mem_start)/256;
  ei_status.rmem_start = dev->mem_start + TX_PAGES*256;
  ei_status.rmem_end = dev->mem_end;
 }


 switch (type) {
 case 130:
 case 134:
  switch (mac8390_testio(dev->mem_start)) {
  case 135:
   dev_err(&board->dev,
    "Don't know how to access card memory\n");
   return -ENODEV;

  case 137:

   ei_status.reset_8390 = mac8390_no_reset;
   ei_status.block_input = slow_sane_block_input;
   ei_status.block_output = slow_sane_block_output;
   ei_status.get_8390_hdr = slow_sane_get_8390_hdr;
   ei_status.reg_offset = back4_offsets;
   break;

  case 136:

   ei_status.reset_8390 = mac8390_no_reset;
   ei_status.block_input = sane_block_input;
   ei_status.block_output = sane_block_output;
   ei_status.get_8390_hdr = sane_get_8390_hdr;
   ei_status.reg_offset = back4_offsets;
   access_bitmode = 1;
   break;
  }
  break;

 case 133:




  ei_status.reset_8390 = mac8390_no_reset;
  ei_status.block_input = slow_sane_block_input;
  ei_status.block_output = slow_sane_block_output;
  ei_status.get_8390_hdr = slow_sane_get_8390_hdr;
  ei_status.reg_offset = back4_offsets;
  break;

 case 132:

  ei_status.reset_8390 = mac8390_no_reset;
  ei_status.block_input = slow_sane_block_input;
  ei_status.block_output = slow_sane_block_output;
  ei_status.get_8390_hdr = slow_sane_get_8390_hdr;
  ei_status.reg_offset = fwrd2_offsets;
  break;

 case 131:
 case 128:


  ei_status.reset_8390 = mac8390_no_reset;
  ei_status.block_input = dayna_block_input;
  ei_status.block_output = dayna_block_output;
  ei_status.get_8390_hdr = dayna_get_8390_hdr;
  ei_status.reg_offset = fwrd4_offsets;
  break;

 case 129:

  ei_status.reset_8390 = interlan_reset;
  ei_status.block_input = slow_sane_block_input;
  ei_status.block_output = slow_sane_block_output;
  ei_status.get_8390_hdr = slow_sane_get_8390_hdr;
  ei_status.reg_offset = fwrd4_offsets;
  break;

 default:
  dev_err(&board->dev, "Unsupported card type\n");
  return -ENODEV;
 }

 __NS8390_init(dev, 0);


 dev_info(&board->dev, "%s (type %s)\n", board->name, cardname[type]);
 dev_info(&board->dev, "MAC %pM, IRQ %d, %d KB shared memory at %#lx, %d-bit access.\n",
   dev->dev_addr, dev->irq,
   (unsigned int)(dev->mem_end - dev->mem_start) >> 10,
   dev->mem_start, access_bitmode ? 32 : 16);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int options; } ;
struct hinfc_host {int mmio; scalar_t__ chipselect; int * cache_addr_value; scalar_t__* addr_value; scalar_t__ addr_cycle; int version; struct nand_chip chip; } ;


 int HINFC504_BUFFER_BASE_ADDRESS_LEN ;
 int HINFC504_CON ;
 int HINFC504_CON_BUS_WIDTH ;
 int HINFC504_CON_ECCTYPE_MASK ;
 int HINFC504_CON_ECCTYPE_SHIFT ;
 int HINFC504_CON_OP_MODE_NORMAL ;
 int HINFC504_CON_PAGEISZE_SHIFT ;
 int HINFC504_CON_PAGESIZE_MASK ;
 int HINFC504_CON_READY_BUSY_SEL ;
 int HINFC504_INTEN ;
 unsigned int HINFC504_INTEN_DMA ;
 int HINFC504_PWIDTH ;
 int HINFC504_RW_LATCH ;
 int HINFC504_R_LATCH ;
 int HINFC504_W_LATCH ;
 int HINFC_VERSION ;
 int NAND_BUSWIDTH_16 ;
 unsigned int SET_HINFC504_PWIDTH (int ,int ,int ) ;
 int hinfc_read (struct hinfc_host*,int ) ;
 int hinfc_write (struct hinfc_host*,unsigned int,int ) ;
 int memset (int ,int,int ) ;

__attribute__((used)) static void hisi_nfc_host_init(struct hinfc_host *host)
{
 struct nand_chip *chip = &host->chip;
 unsigned int flag = 0;

 host->version = hinfc_read(host, HINFC_VERSION);
 host->addr_cycle = 0;
 host->addr_value[0] = 0;
 host->addr_value[1] = 0;
 host->cache_addr_value[0] = ~0;
 host->cache_addr_value[1] = ~0;
 host->chipselect = 0;


 flag = HINFC504_CON_OP_MODE_NORMAL | HINFC504_CON_READY_BUSY_SEL
  | ((0x001 & HINFC504_CON_PAGESIZE_MASK)
   << HINFC504_CON_PAGEISZE_SHIFT)
  | ((0x0 & HINFC504_CON_ECCTYPE_MASK)
   << HINFC504_CON_ECCTYPE_SHIFT)
  | ((chip->options & NAND_BUSWIDTH_16) ?
   HINFC504_CON_BUS_WIDTH : 0);
 hinfc_write(host, flag, HINFC504_CON);

 memset(host->mmio, 0xff, HINFC504_BUFFER_BASE_ADDRESS_LEN);

 hinfc_write(host, SET_HINFC504_PWIDTH(HINFC504_W_LATCH,
      HINFC504_R_LATCH, HINFC504_RW_LATCH), HINFC504_PWIDTH);


 hinfc_write(host, HINFC504_INTEN_DMA, HINFC504_INTEN);
}

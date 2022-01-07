
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct nand_chip {int dummy; } ;
struct mtd_info {int writesize; int size; int oobsize; } ;
struct cafe_priv {int ctl2; int ctl1; int data_pos; int datalen; TYPE_1__* pdev; scalar_t__ mmio; scalar_t__ usedma; int nr_data; } ;
struct TYPE_2__ {int dev; } ;


 int CTRL1_CHIPSELECT ;
 int NAND_ADDR1 ;
 int NAND_ADDR2 ;




 unsigned int NAND_CMD_READ0 ;
 unsigned int NAND_CMD_READ1 ;
 unsigned int NAND_CMD_READID ;
 unsigned int NAND_CMD_READOOB ;
 int NAND_CMD_READSTART ;


 int NAND_CMD_RNDOUTSTART ;


 int NAND_CTRL1 ;
 int NAND_CTRL2 ;
 int NAND_DATA_LEN ;
 int NAND_DMA_CTRL ;
 int NAND_IRQ ;
 int WARN_ON (int) ;
 int cafe_dev_dbg (int *,char*,unsigned int,...) ;
 int cafe_readl (struct cafe_priv*,int ) ;
 int cafe_writel (struct cafe_priv*,int,int ) ;
 int cpu_relax () ;
 struct cafe_priv* nand_get_controller_data (struct nand_chip*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int nand_wait_ready (struct nand_chip*) ;
 int ndelay (int) ;
 int printk (char*,int,...) ;
 int readl (scalar_t__) ;
 int regdebug ;
 int udelay (int) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void cafe_nand_cmdfunc(struct nand_chip *chip, unsigned command,
         int column, int page_addr)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct cafe_priv *cafe = nand_get_controller_data(chip);
 int adrbytes = 0;
 uint32_t ctl1;
 uint32_t doneint = 0x80000000;

 cafe_dev_dbg(&cafe->pdev->dev, "cmdfunc %02x, 0x%x, 0x%x\n",
  command, column, page_addr);

 if (command == 133 || command == 132) {

  cafe_writel(cafe, cafe->ctl2 | 0x100 | command, NAND_CTRL2);
  ctl1 = cafe->ctl1;
  cafe->ctl2 &= ~(1<<30);
  cafe_dev_dbg(&cafe->pdev->dev, "Continue command, ctl1 %08x, #data %d\n",
     cafe->ctl1, cafe->nr_data);
  goto do_command;
 }

 cafe_writel(cafe, 0, NAND_CTRL2);


 if (mtd->writesize > 512 &&
     command == NAND_CMD_READOOB) {
  column += mtd->writesize;
  command = NAND_CMD_READ0;
 }




 if (column != -1) {
  cafe_writel(cafe, column, NAND_ADDR1);
  adrbytes = 2;
  if (page_addr != -1)
   goto write_adr2;
 } else if (page_addr != -1) {
  cafe_writel(cafe, page_addr & 0xffff, NAND_ADDR1);
  page_addr >>= 16;
 write_adr2:
  cafe_writel(cafe, page_addr, NAND_ADDR2);
  adrbytes += 2;
  if (mtd->size > mtd->writesize << 16)
   adrbytes++;
 }

 cafe->data_pos = cafe->datalen = 0;


 ctl1 = 0x80000000 | command | (cafe->ctl1 & CTRL1_CHIPSELECT);


 if (command == NAND_CMD_READID || command == 128) {
  ctl1 |= (1<<26);

  cafe->datalen = 4;

  adrbytes = 1;
 } else if (command == NAND_CMD_READ0 || command == NAND_CMD_READ1 ||
     command == NAND_CMD_READOOB || command == 130) {
  ctl1 |= 1<<26;

  cafe->datalen = mtd->writesize + mtd->oobsize - column;
 } else if (command == 129)
  ctl1 |= 1<<25;


 if (adrbytes)
  ctl1 |= ((adrbytes-1)|8) << 27;

 if (command == 129 || command == 134) {


  cafe->ctl1 = ctl1;
  cafe_dev_dbg(&cafe->pdev->dev, "Setup for delayed command, ctl1 %08x, dlen %x\n",
     cafe->ctl1, cafe->datalen);
  return;
 }

 if (command == 130)
  cafe_writel(cafe, cafe->ctl2 | 0x100 | NAND_CMD_RNDOUTSTART, NAND_CTRL2);
 else if (command == NAND_CMD_READ0 && mtd->writesize > 512)
  cafe_writel(cafe, cafe->ctl2 | 0x100 | NAND_CMD_READSTART, NAND_CTRL2);

 do_command:
 cafe_dev_dbg(&cafe->pdev->dev, "dlen %x, ctl1 %x, ctl2 %x\n",
  cafe->datalen, ctl1, cafe_readl(cafe, NAND_CTRL2));


 cafe_writel(cafe, cafe->datalen, NAND_DATA_LEN);
 cafe_writel(cafe, 0x90000000, NAND_IRQ);
 if (cafe->usedma && (ctl1 & (3<<25))) {
  uint32_t dmactl = 0xc0000000 + cafe->datalen;

  if (ctl1 & (1<<26)) {

   dmactl |= (1<<29);


   doneint = 0x10000000;
  }
  cafe_writel(cafe, dmactl, NAND_DMA_CTRL);
 }
 cafe->datalen = 0;

 if (unlikely(regdebug)) {
  int i;
  printk("About to write command %08x to register 0\n", ctl1);
  for (i=4; i< 0x5c; i+=4)
   printk("Register %x: %08x\n", i, readl(cafe->mmio + i));
 }

 cafe_writel(cafe, ctl1, NAND_CTRL1);


 ndelay(100);

 if (1) {
  int c;
  uint32_t irqs;

  for (c = 500000; c != 0; c--) {
   irqs = cafe_readl(cafe, NAND_IRQ);
   if (irqs & doneint)
    break;
   udelay(1);
   if (!(c % 100000))
    cafe_dev_dbg(&cafe->pdev->dev, "Wait for ready, IRQ %x\n", irqs);
   cpu_relax();
  }
  cafe_writel(cafe, doneint, NAND_IRQ);
  cafe_dev_dbg(&cafe->pdev->dev, "Command %x completed after %d usec, irqs %x (%x)\n",
        command, 500000-c, irqs, cafe_readl(cafe, NAND_IRQ));
 }

 WARN_ON(cafe->ctl2 & (1<<30));

 switch (command) {

 case 135:
 case 132:
 case 134:
 case 133:
 case 129:
 case 131:
 case 128:
 case 130:
  cafe_writel(cafe, cafe->ctl2, NAND_CTRL2);
  return;
 }
 nand_wait_ready(chip);
 cafe_writel(cafe, cafe->ctl2, NAND_CTRL2);
}

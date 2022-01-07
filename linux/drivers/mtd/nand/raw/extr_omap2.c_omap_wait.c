
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int gpmc_nand_data; int gpmc_nand_command; } ;
struct omap_nand_info {TYPE_1__ reg; } ;
struct nand_chip {int dummy; } ;


 int NAND_CMD_STATUS ;
 int NAND_STATUS_READY ;
 int cond_resched () ;
 unsigned long jiffies ;
 scalar_t__ msecs_to_jiffies (int) ;
 struct omap_nand_info* mtd_to_omap (int ) ;
 int nand_to_mtd (struct nand_chip*) ;
 int readb (int ) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int writeb (int,int ) ;

__attribute__((used)) static int omap_wait(struct nand_chip *this)
{
 struct omap_nand_info *info = mtd_to_omap(nand_to_mtd(this));
 unsigned long timeo = jiffies;
 int status;

 timeo += msecs_to_jiffies(400);

 writeb(NAND_CMD_STATUS & 0xFF, info->reg.gpmc_nand_command);
 while (time_before(jiffies, timeo)) {
  status = readb(info->reg.gpmc_nand_data);
  if (status & NAND_STATUS_READY)
   break;
  cond_resched();
 }

 status = readb(info->reg.gpmc_nand_data);
 return status;
}

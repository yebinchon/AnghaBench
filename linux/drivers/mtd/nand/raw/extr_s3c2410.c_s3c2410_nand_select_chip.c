
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct s3c2410_nand_mtd {TYPE_2__* set; struct s3c2410_nand_info* info; } ;
struct s3c2410_nand_info {unsigned long sel_bit; int sel_reg; TYPE_1__* platform; int device; } ;
struct nand_chip {int dummy; } ;
struct TYPE_4__ {int nr_chips; } ;
struct TYPE_3__ {int (* select_chip ) (TYPE_2__*,int) ;} ;


 int CLOCK_ENABLE ;
 int CLOCK_SUSPEND ;
 int dev_err (int ,char*,int) ;
 struct s3c2410_nand_mtd* nand_get_controller_data (struct nand_chip*) ;
 unsigned long readl (int ) ;
 int s3c2410_nand_clk_set_state (struct s3c2410_nand_info*,int ) ;
 int stub1 (TYPE_2__*,int) ;
 int writel (unsigned long,int ) ;

__attribute__((used)) static void s3c2410_nand_select_chip(struct nand_chip *this, int chip)
{
 struct s3c2410_nand_info *info;
 struct s3c2410_nand_mtd *nmtd;
 unsigned long cur;

 nmtd = nand_get_controller_data(this);
 info = nmtd->info;

 if (chip != -1)
  s3c2410_nand_clk_set_state(info, CLOCK_ENABLE);

 cur = readl(info->sel_reg);

 if (chip == -1) {
  cur |= info->sel_bit;
 } else {
  if (nmtd->set != ((void*)0) && chip > nmtd->set->nr_chips) {
   dev_err(info->device, "invalid chip %d\n", chip);
   return;
  }

  if (info->platform != ((void*)0)) {
   if (info->platform->select_chip != ((void*)0))
    (info->platform->select_chip) (nmtd->set, chip);
  }

  cur &= ~info->sel_bit;
 }

 writel(cur, info->sel_reg);

 if (chip == -1)
  s3c2410_nand_clk_set_state(info, CLOCK_SUSPEND);
}

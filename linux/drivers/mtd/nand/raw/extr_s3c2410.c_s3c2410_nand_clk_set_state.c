
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c2410_nand_info {scalar_t__ clk_state; int clk; } ;
typedef enum s3c_nand_clk_state { ____Placeholder_s3c_nand_clk_state } s3c_nand_clk_state ;


 scalar_t__ CLOCK_ENABLE ;
 int CLOCK_SUSPEND ;
 int allow_clk_suspend (struct s3c2410_nand_info*) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;

__attribute__((used)) static void s3c2410_nand_clk_set_state(struct s3c2410_nand_info *info,
  enum s3c_nand_clk_state new_state)
{
 if (!allow_clk_suspend(info) && new_state == CLOCK_SUSPEND)
  return;

 if (info->clk_state == CLOCK_ENABLE) {
  if (new_state != CLOCK_ENABLE)
   clk_disable_unprepare(info->clk);
 } else {
  if (new_state == CLOCK_ENABLE)
   clk_prepare_enable(info->clk);
 }

 info->clk_state = new_state;
}

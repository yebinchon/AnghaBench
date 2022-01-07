
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;
struct amba_device {int dummy; } ;


 unsigned long PL353_NAND_ECC_BUSY_TIMEOUT ;
 int PL353_NAND_ECC_CMD1 ;
 int PL353_NAND_ECC_CMD2 ;
 int PL353_SMC_CFG_CLR_INT_CLR_1 ;
 scalar_t__ PL353_SMC_CFG_CLR_OFFS ;
 int PL353_SMC_DC_UPT_NAND_REGS ;
 scalar_t__ PL353_SMC_DIRECT_CMD_OFFS ;
 scalar_t__ PL353_SMC_ECC_MEMCMD1_OFFS ;
 scalar_t__ PL353_SMC_ECC_MEMCMD2_OFFS ;
 int PL353_SMC_MEM_WIDTH_8 ;
 int cpu_relax () ;
 unsigned long jiffies ;
 scalar_t__ pl353_smc_base ;
 scalar_t__ pl353_smc_ecc_is_busy () ;
 int pl353_smc_set_buswidth (int ) ;
 scalar_t__ time_after_eq (unsigned long,unsigned long) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void pl353_smc_init_nand_interface(struct amba_device *adev,
       struct device_node *nand_node)
{
 unsigned long timeout;

 pl353_smc_set_buswidth(PL353_SMC_MEM_WIDTH_8);
 writel(PL353_SMC_CFG_CLR_INT_CLR_1,
        pl353_smc_base + PL353_SMC_CFG_CLR_OFFS);
 writel(PL353_SMC_DC_UPT_NAND_REGS, pl353_smc_base +
        PL353_SMC_DIRECT_CMD_OFFS);

 timeout = jiffies + PL353_NAND_ECC_BUSY_TIMEOUT;

 do {
  if (pl353_smc_ecc_is_busy())
   cpu_relax();
  else
   break;
 } while (!time_after_eq(jiffies, timeout));

 if (time_after_eq(jiffies, timeout))
  return;

 writel(PL353_NAND_ECC_CMD1,
        pl353_smc_base + PL353_SMC_ECC_MEMCMD1_OFFS);
 writel(PL353_NAND_ECC_CMD2,
        pl353_smc_base + PL353_SMC_ECC_MEMCMD2_OFFS);
}

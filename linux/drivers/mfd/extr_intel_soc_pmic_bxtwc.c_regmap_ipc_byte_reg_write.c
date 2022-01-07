
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct intel_soc_pmic {int dev; } ;
typedef int ipc_in ;


 int BXTWC_DEVICE1_ADDR ;
 int EINVAL ;
 int PMC_IPC_PMIC_ACCESS ;
 int PMC_IPC_PMIC_ACCESS_WRITE ;
 unsigned int REG_ADDR_MASK ;
 unsigned int REG_ADDR_SHIFT ;
 unsigned int REG_OFFSET_MASK ;
 int dev_err (int ,char*) ;
 int intel_pmc_ipc_command (int ,int ,int*,int,int *,int ) ;

__attribute__((used)) static int regmap_ipc_byte_reg_write(void *context, unsigned int reg,
           unsigned int val)
{
 int ret;
 int i2c_addr;
 u8 ipc_in[3];
 struct intel_soc_pmic *pmic = context;

 if (!pmic)
  return -EINVAL;

 if (reg & REG_ADDR_MASK)
  i2c_addr = (reg & REG_ADDR_MASK) >> REG_ADDR_SHIFT;
 else
  i2c_addr = BXTWC_DEVICE1_ADDR;

 reg &= REG_OFFSET_MASK;

 ipc_in[0] = reg;
 ipc_in[1] = i2c_addr;
 ipc_in[2] = val;
 ret = intel_pmc_ipc_command(PMC_IPC_PMIC_ACCESS,
   PMC_IPC_PMIC_ACCESS_WRITE,
   ipc_in, sizeof(ipc_in), ((void*)0), 0);
 if (ret) {
  dev_err(pmic->dev, "Failed to write to PMIC\n");
  return ret;
 }

 return 0;
}

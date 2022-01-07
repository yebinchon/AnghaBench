
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arm_smccc_res {scalar_t__ a0; scalar_t__ a1; } ;


 int INTEL_SIP_SMC_REG_READ ;
 int arm_smccc_smc (int ,unsigned long,int ,int ,int ,int ,int ,int ,struct arm_smccc_res*) ;

__attribute__((used)) static int s10_protected_reg_read(void *base,
      unsigned int reg, unsigned int *val)
{
 struct arm_smccc_res result;
 unsigned long sysmgr_base = (unsigned long)base;

 arm_smccc_smc(INTEL_SIP_SMC_REG_READ, sysmgr_base + reg,
        0, 0, 0, 0, 0, 0, &result);

 *val = (unsigned int)result.a1;

 return (int)result.a0;
}

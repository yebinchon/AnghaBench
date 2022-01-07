
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int SMI_REG_ADDR_MASK ;
 int SMI_REG_ADDR_SHIFT ;

__attribute__((used)) static inline u32 smi_reg_addr(int x)
{
 return (x << SMI_REG_ADDR_SHIFT) & SMI_REG_ADDR_MASK;
}

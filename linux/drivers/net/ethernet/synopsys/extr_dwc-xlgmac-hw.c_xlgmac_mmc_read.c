
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct xlgmac_pdata {scalar_t__ mac_regs; } ;






 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static u64 xlgmac_mmc_read(struct xlgmac_pdata *pdata, unsigned int reg_lo)
{
 bool read_hi;
 u64 val;

 switch (reg_lo) {

 case 129:
 case 128:
 case 131:
 case 130:
  read_hi = 1;
  break;

 default:
  read_hi = 0;
 }

 val = (u64)readl(pdata->mac_regs + reg_lo);

 if (read_hi)
  val |= ((u64)readl(pdata->mac_regs + reg_lo + 4) << 32);

 return val;
}

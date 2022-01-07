
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct rtsx_pcr {int dummy; } ;


 int EIO ;
 int ETIMEDOUT ;
 int HAIMR_TRANS_END ;
 int HAIMR_WRITE_START ;
 int MAX_RW_REG_CNT ;
 int RTSX_HAIMR ;
 int rtsx_pci_readl (struct rtsx_pcr*,int ) ;
 int rtsx_pci_writel (struct rtsx_pcr*,int ,int) ;

int rtsx_pci_write_register(struct rtsx_pcr *pcr, u16 addr, u8 mask, u8 data)
{
 int i;
 u32 val = HAIMR_WRITE_START;

 val |= (u32)(addr & 0x3FFF) << 16;
 val |= (u32)mask << 8;
 val |= (u32)data;

 rtsx_pci_writel(pcr, RTSX_HAIMR, val);

 for (i = 0; i < MAX_RW_REG_CNT; i++) {
  val = rtsx_pci_readl(pcr, RTSX_HAIMR);
  if ((val & HAIMR_TRANS_END) == 0) {
   if (data != (u8)val)
    return -EIO;
   return 0;
  }
 }

 return -ETIMEDOUT;
}

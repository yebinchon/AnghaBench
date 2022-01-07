
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mxc_nand_host {int dummy; } ;


 int NFC_V3_CONFIG2 ;
 int NFC_V3_CONFIG2_INT_MSK ;
 int readl (int ) ;
 int writel (int ,int ) ;

__attribute__((used)) static void irq_control_v3(struct mxc_nand_host *host, int activate)
{
 uint32_t tmp;

 tmp = readl(NFC_V3_CONFIG2);

 if (activate)
  tmp &= ~NFC_V3_CONFIG2_INT_MSK;
 else
  tmp |= NFC_V3_CONFIG2_INT_MSK;

 writel(tmp, NFC_V3_CONFIG2);
}

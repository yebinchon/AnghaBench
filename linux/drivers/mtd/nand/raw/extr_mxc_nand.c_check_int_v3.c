
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mxc_nand_host {int dummy; } ;


 int NFC_V3_IPC ;
 int NFC_V3_IPC_INT ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static int check_int_v3(struct mxc_nand_host *host)
{
 uint32_t tmp;

 tmp = readl(NFC_V3_IPC);
 if (!(tmp & NFC_V3_IPC_INT))
  return 0;

 tmp &= ~NFC_V3_IPC_INT;
 writel(tmp, NFC_V3_IPC);

 return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mxc_nand_host {int dummy; } ;


 int NFC_V1_V2_ECC_STATUS_RESULT ;
 int readl (int ) ;

__attribute__((used)) static u32 get_ecc_status_v2(struct mxc_nand_host *host)
{
 return readl(NFC_V1_V2_ECC_STATUS_RESULT);
}

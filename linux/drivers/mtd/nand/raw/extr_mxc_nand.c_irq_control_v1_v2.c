
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct mxc_nand_host {int dummy; } ;


 int NFC_V1_V2_CONFIG1 ;
 int NFC_V1_V2_CONFIG1_INT_MSK ;
 int readw (int ) ;
 int writew (int ,int ) ;

__attribute__((used)) static void irq_control_v1_v2(struct mxc_nand_host *host, int activate)
{
 uint16_t tmp;

 tmp = readw(NFC_V1_V2_CONFIG1);

 if (activate)
  tmp &= ~NFC_V1_V2_CONFIG1_INT_MSK;
 else
  tmp |= NFC_V1_V2_CONFIG1_INT_MSK;

 writew(tmp, NFC_V1_V2_CONFIG1);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct mxc_nand_host {TYPE_1__* devtype_data; } ;
struct TYPE_2__ {int irqpending_quirk; } ;


 int NFC_V1_V2_CONFIG2 ;
 int NFC_V1_V2_CONFIG2_INT ;
 int readw (int ) ;
 int writew (int,int ) ;

__attribute__((used)) static int check_int_v1_v2(struct mxc_nand_host *host)
{
 uint32_t tmp;

 tmp = readw(NFC_V1_V2_CONFIG2);
 if (!(tmp & NFC_V1_V2_CONFIG2_INT))
  return 0;

 if (!host->devtype_data->irqpending_quirk)
  writew(tmp & ~NFC_V1_V2_CONFIG2_INT, NFC_V1_V2_CONFIG2);

 return 1;
}

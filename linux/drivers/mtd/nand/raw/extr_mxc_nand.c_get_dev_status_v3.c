
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct mxc_nand_host {int dummy; } ;


 int NFC_STATUS ;
 int NFC_V3_CONFIG1 ;
 int NFC_V3_LAUNCH ;
 int readl (int ) ;
 int wait_op_done (struct mxc_nand_host*,int) ;
 int writew (int ,int ) ;

__attribute__((used)) static uint16_t get_dev_status_v3(struct mxc_nand_host *host)
{
 writew(NFC_STATUS, NFC_V3_LAUNCH);
 wait_op_done(host, 1);

 return readl(NFC_V3_CONFIG1) >> 16;
}

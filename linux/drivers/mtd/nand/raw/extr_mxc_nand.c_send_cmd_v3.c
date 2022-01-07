
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct mxc_nand_host {int dummy; } ;


 int NFC_CMD ;
 int NFC_V3_FLASH_CMD ;
 int NFC_V3_LAUNCH ;
 int wait_op_done (struct mxc_nand_host*,int) ;
 int writel (int ,int ) ;

__attribute__((used)) static void send_cmd_v3(struct mxc_nand_host *host, uint16_t cmd, int useirq)
{

 writel(cmd, NFC_V3_FLASH_CMD);


 writel(NFC_CMD, NFC_V3_LAUNCH);


 wait_op_done(host, useirq);
}

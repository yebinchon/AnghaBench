
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxc_nand_host {int main_area0; int data_buf; } ;


 int NFC_ID ;
 int NFC_V3_LAUNCH ;
 int memcpy32_fromio (int ,int ,int) ;
 int wait_op_done (struct mxc_nand_host*,int) ;
 int writel (int ,int ) ;

__attribute__((used)) static void send_read_id_v3(struct mxc_nand_host *host)
{

 writel(NFC_ID, NFC_V3_LAUNCH);

 wait_op_done(host, 1);

 memcpy32_fromio(host->data_buf, host->main_area0, 16);
}

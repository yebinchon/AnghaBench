
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxc_nand_host {int active_cs; int main_area0; int data_buf; } ;


 int NFC_ID ;
 int NFC_V1_V2_BUF_ADDR ;
 int NFC_V1_V2_CONFIG2 ;
 int memcpy32_fromio (int ,int ,int) ;
 int wait_op_done (struct mxc_nand_host*,int) ;
 int writew (int,int ) ;

__attribute__((used)) static void send_read_id_v1_v2(struct mxc_nand_host *host)
{

 writew(host->active_cs << 4, NFC_V1_V2_BUF_ADDR);

 writew(NFC_ID, NFC_V1_V2_CONFIG2);


 wait_op_done(host, 1);

 memcpy32_fromio(host->data_buf, host->main_area0, 16);
}

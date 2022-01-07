
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct mxc_nand_host {int dev; } ;


 int NFC_ADDR ;
 int NFC_V1_V2_CONFIG2 ;
 int NFC_V1_V2_FLASH_ADDR ;
 int dev_dbg (int ,char*,int ,int) ;
 int wait_op_done (struct mxc_nand_host*,int) ;
 int writew (int ,int ) ;

__attribute__((used)) static void send_addr_v1_v2(struct mxc_nand_host *host, uint16_t addr, int islast)
{
 dev_dbg(host->dev, "send_addr(host, 0x%x %d)\n", addr, islast);

 writew(addr, NFC_V1_V2_FLASH_ADDR);
 writew(NFC_ADDR, NFC_V1_V2_CONFIG2);


 wait_op_done(host, islast);
}

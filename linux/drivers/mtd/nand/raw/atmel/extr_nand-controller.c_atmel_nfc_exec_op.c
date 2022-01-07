
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_4__ {int* addrs; int ncmds; scalar_t__ naddrs; scalar_t__ data; int wait; int cs; int * cmds; } ;
struct TYPE_3__ {int dev; int smc; } ;
struct atmel_hsmc_nand_controller {TYPE_2__ op; TYPE_1__ base; int io; } ;


 unsigned int ATMEL_HSMC_NFC_ADDR ;
 int ATMEL_HSMC_NFC_SR ;
 int ATMEL_HSMC_NFC_SR_CMDDONE ;
 int ATMEL_HSMC_NFC_SR_XFRDONE ;
 unsigned int ATMEL_NFC_ACYCLE (scalar_t__) ;
 unsigned int ATMEL_NFC_CMD (int,int ) ;
 unsigned int ATMEL_NFC_CSID (int ) ;
 unsigned int ATMEL_NFC_DATAEN ;
 scalar_t__ ATMEL_NFC_MAX_ADDR_CYCLES ;
 unsigned int ATMEL_NFC_NFCWR ;
 scalar_t__ ATMEL_NFC_NO_DATA ;
 unsigned int ATMEL_NFC_VCMD2 ;
 scalar_t__ ATMEL_NFC_WRITE_DATA ;
 int atmel_nfc_wait (struct atmel_hsmc_nand_controller*,int,int ) ;
 int dev_err (int ,char*,int) ;
 int memset (TYPE_2__*,int ,int) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_write (int ,unsigned int,int) ;

__attribute__((used)) static int atmel_nfc_exec_op(struct atmel_hsmc_nand_controller *nc, bool poll)
{
 u8 *addrs = nc->op.addrs;
 unsigned int op = 0;
 u32 addr, val;
 int i, ret;

 nc->op.wait = ATMEL_HSMC_NFC_SR_CMDDONE;

 for (i = 0; i < nc->op.ncmds; i++)
  op |= ATMEL_NFC_CMD(i, nc->op.cmds[i]);

 if (nc->op.naddrs == ATMEL_NFC_MAX_ADDR_CYCLES)
  regmap_write(nc->base.smc, ATMEL_HSMC_NFC_ADDR, *addrs++);

 op |= ATMEL_NFC_CSID(nc->op.cs) |
       ATMEL_NFC_ACYCLE(nc->op.naddrs);

 if (nc->op.ncmds > 1)
  op |= ATMEL_NFC_VCMD2;

 addr = addrs[0] | (addrs[1] << 8) | (addrs[2] << 16) |
        (addrs[3] << 24);

 if (nc->op.data != ATMEL_NFC_NO_DATA) {
  op |= ATMEL_NFC_DATAEN;
  nc->op.wait |= ATMEL_HSMC_NFC_SR_XFRDONE;

  if (nc->op.data == ATMEL_NFC_WRITE_DATA)
   op |= ATMEL_NFC_NFCWR;
 }


 regmap_read(nc->base.smc, ATMEL_HSMC_NFC_SR, &val);


 regmap_write(nc->io, op, addr);

 ret = atmel_nfc_wait(nc, poll, 0);
 if (ret)
  dev_err(nc->base.dev,
   "Failed to send NAND command (err = %d)!",
   ret);


 memset(&nc->op, 0, sizeof(nc->op));

 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sunxi_nfc {int dev; scalar_t__ regs; } ;


 int NFC_CMD_FIFO_STATUS ;
 int NFC_DEFAULT_TIMEOUT_MS ;
 scalar_t__ NFC_REG_ST ;
 int dev_err (int ,char*) ;
 int readl_poll_timeout (scalar_t__,int,int,int,int) ;

__attribute__((used)) static int sunxi_nfc_wait_cmd_fifo_empty(struct sunxi_nfc *nfc)
{
 u32 status;
 int ret;

 ret = readl_poll_timeout(nfc->regs + NFC_REG_ST, status,
     !(status & NFC_CMD_FIFO_STATUS), 1,
     NFC_DEFAULT_TIMEOUT_MS * 1000);
 if (ret)
  dev_err(nfc->dev, "wait for empty cmd FIFO timedout\n");

 return ret;
}

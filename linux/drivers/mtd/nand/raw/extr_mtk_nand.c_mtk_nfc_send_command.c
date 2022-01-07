
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mtk_nfc {scalar_t__ regs; struct device* dev; } ;
struct device {int dummy; } ;


 int EIO ;
 int MTK_TIMEOUT ;
 int NFI_CMD ;
 scalar_t__ NFI_STA ;
 int STA_CMD ;
 int dev_warn (struct device*,char*) ;
 int nfi_writel (struct mtk_nfc*,int ,int ) ;
 int readl_poll_timeout_atomic (scalar_t__,int,int,int,int ) ;

__attribute__((used)) static int mtk_nfc_send_command(struct mtk_nfc *nfc, u8 command)
{
 struct device *dev = nfc->dev;
 u32 val;
 int ret;

 nfi_writel(nfc, command, NFI_CMD);

 ret = readl_poll_timeout_atomic(nfc->regs + NFI_STA, val,
     !(val & STA_CMD), 10, MTK_TIMEOUT);
 if (ret) {
  dev_warn(dev, "nfi core timed out entering command mode\n");
  return -EIO;
 }

 return 0;
}

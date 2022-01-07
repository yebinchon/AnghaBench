
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_nfc {scalar_t__ regs; struct device* dev; } ;
struct device {int dummy; } ;


 int CON_FIFO_FLUSH ;
 int CON_NFI_RST ;
 int MASTER_STA_MASK ;
 int MTK_RESET_TIMEOUT ;
 int NFI_CON ;
 scalar_t__ NFI_MASTER_STA ;
 int NFI_STRDATA ;
 int STAR_DE ;
 int dev_warn (struct device*,char*,scalar_t__,int) ;
 int nfi_writel (struct mtk_nfc*,int,int ) ;
 int nfi_writew (struct mtk_nfc*,int ,int ) ;
 int readl_poll_timeout (scalar_t__,int,int,int,int ) ;

__attribute__((used)) static void mtk_nfc_hw_reset(struct mtk_nfc *nfc)
{
 struct device *dev = nfc->dev;
 u32 val;
 int ret;


 nfi_writel(nfc, CON_FIFO_FLUSH | CON_NFI_RST, NFI_CON);


 ret = readl_poll_timeout(nfc->regs + NFI_MASTER_STA, val,
     !(val & MASTER_STA_MASK), 50,
     MTK_RESET_TIMEOUT);
 if (ret)
  dev_warn(dev, "master active in reset [0x%x] = 0x%x\n",
    NFI_MASTER_STA, val);


 nfi_writel(nfc, CON_FIFO_FLUSH | CON_NFI_RST, NFI_CON);
 nfi_writew(nfc, STAR_DE, NFI_STRDATA);
}

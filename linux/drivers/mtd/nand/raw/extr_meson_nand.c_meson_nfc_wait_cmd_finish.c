
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct meson_nfc {int dev; scalar_t__ reg_base; } ;


 int NFC_CMD_GET_SIZE (int ) ;
 scalar_t__ NFC_REG_CMD ;
 int dev_err (int ,char*) ;
 int readl_relaxed_poll_timeout (scalar_t__,int ,int,int,unsigned int) ;

__attribute__((used)) static int meson_nfc_wait_cmd_finish(struct meson_nfc *nfc,
         unsigned int timeout_ms)
{
 u32 cmd_size = 0;
 int ret;


 ret = readl_relaxed_poll_timeout(nfc->reg_base + NFC_REG_CMD, cmd_size,
      !NFC_CMD_GET_SIZE(cmd_size),
      10, timeout_ms * 1000);
 if (ret)
  dev_err(nfc->dev, "wait for empty CMD FIFO time out\n");

 return ret;
}

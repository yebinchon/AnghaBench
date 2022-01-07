
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct meson_host {scalar_t__ regs; } ;


 int CFG_BLK_LEN_MASK ;
 int CFG_ERR_ABORT ;
 int CFG_RC_CC_MASK ;
 int CFG_RESP_TIMEOUT_MASK ;
 int FIELD_PREP (int ,int ) ;
 scalar_t__ SD_EMMC_CFG ;
 int SD_EMMC_CFG_BLK_SIZE ;
 int SD_EMMC_CFG_CMD_GAP ;
 int SD_EMMC_CFG_RESP_TIMEOUT ;
 int ilog2 (int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void meson_mmc_cfg_init(struct meson_host *host)
{
 u32 cfg = 0;

 cfg |= FIELD_PREP(CFG_RESP_TIMEOUT_MASK,
     ilog2(SD_EMMC_CFG_RESP_TIMEOUT));
 cfg |= FIELD_PREP(CFG_RC_CC_MASK, ilog2(SD_EMMC_CFG_CMD_GAP));
 cfg |= FIELD_PREP(CFG_BLK_LEN_MASK, ilog2(SD_EMMC_CFG_BLK_SIZE));


 cfg |= CFG_ERR_ABORT;

 writel(cfg, host->regs + SD_EMMC_CFG);
}

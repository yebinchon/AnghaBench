
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mmc_ios {int dummy; } ;
struct dw_mci {int dummy; } ;


 int BLUEFIELD_UHS_REG_EXT_DRIVE ;
 int BLUEFIELD_UHS_REG_EXT_SAMPLE ;
 int FIELD_PREP (int ,int ) ;
 int UHS_REG_EXT ;
 int UHS_REG_EXT_DRIVE_MASK ;
 int UHS_REG_EXT_SAMPLE_MASK ;
 int mci_readl (struct dw_mci*,int ) ;
 int mci_writel (struct dw_mci*,int ,int ) ;

__attribute__((used)) static void dw_mci_bluefield_set_ios(struct dw_mci *host, struct mmc_ios *ios)
{
 u32 reg;


 reg = mci_readl(host, UHS_REG_EXT);
 reg &= ~UHS_REG_EXT_SAMPLE_MASK;
 reg |= FIELD_PREP(UHS_REG_EXT_SAMPLE_MASK,
     BLUEFIELD_UHS_REG_EXT_SAMPLE);
 reg &= ~UHS_REG_EXT_DRIVE_MASK;
 reg |= FIELD_PREP(UHS_REG_EXT_DRIVE_MASK, BLUEFIELD_UHS_REG_EXT_DRIVE);
 mci_writel(host, UHS_REG_EXT, reg);
}

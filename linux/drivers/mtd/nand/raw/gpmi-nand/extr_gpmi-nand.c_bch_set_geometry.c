
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resources {scalar_t__ bch_regs; } ;
struct gpmi_nand_data {int dev; struct resources resources; } ;


 int GPMI_IS_MXS (struct gpmi_nand_data*) ;
 scalar_t__ HW_BCH_LAYOUTSELECT ;
 int common_nfc_set_geometry (struct gpmi_nand_data*) ;
 int gpmi_reset_block (scalar_t__,int ) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int bch_set_geometry(struct gpmi_nand_data *this)
{
 struct resources *r = &this->resources;
 int ret;

 ret = common_nfc_set_geometry(this);
 if (ret)
  return ret;

 ret = pm_runtime_get_sync(this->dev);
 if (ret < 0)
  return ret;






 ret = gpmi_reset_block(r->bch_regs, GPMI_IS_MXS(this));
 if (ret)
  goto err_out;


 writel(0, r->bch_regs + HW_BCH_LAYOUTSELECT);

 ret = 0;
err_out:
 pm_runtime_mark_last_busy(this->dev);
 pm_runtime_put_autosuspend(this->dev);

 return ret;
}

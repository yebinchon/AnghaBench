
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resources {scalar_t__ gpmi_regs; scalar_t__ bch_regs; } ;
struct gpmi_nand_data {struct resources resources; } ;


 int BM_GPMI_CTRL1_ATA_IRQRDY_POLARITY ;
 int BM_GPMI_CTRL1_BCH_MODE ;
 int BM_GPMI_CTRL1_DECOUPLE_CS ;
 int BM_GPMI_CTRL1_DEV_RESET ;
 int BM_GPMI_CTRL1_GPMI_MODE ;
 int GPMI_IS_MXS (struct gpmi_nand_data*) ;
 scalar_t__ HW_GPMI_CTRL1_CLR ;
 scalar_t__ HW_GPMI_CTRL1_SET ;
 int gpmi_reset_block (scalar_t__,int) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int gpmi_init(struct gpmi_nand_data *this)
{
 struct resources *r = &this->resources;
 int ret;

 ret = gpmi_reset_block(r->gpmi_regs, 0);
 if (ret)
  goto err_out;





 ret = gpmi_reset_block(r->bch_regs, GPMI_IS_MXS(this));
 if (ret)
  goto err_out;


 writel(BM_GPMI_CTRL1_GPMI_MODE, r->gpmi_regs + HW_GPMI_CTRL1_CLR);


 writel(BM_GPMI_CTRL1_ATA_IRQRDY_POLARITY,
    r->gpmi_regs + HW_GPMI_CTRL1_SET);


 writel(BM_GPMI_CTRL1_DEV_RESET, r->gpmi_regs + HW_GPMI_CTRL1_SET);


 writel(BM_GPMI_CTRL1_BCH_MODE, r->gpmi_regs + HW_GPMI_CTRL1_SET);





 writel(BM_GPMI_CTRL1_DECOUPLE_CS, r->gpmi_regs + HW_GPMI_CTRL1_SET);

 return 0;
err_out:
 return ret;
}

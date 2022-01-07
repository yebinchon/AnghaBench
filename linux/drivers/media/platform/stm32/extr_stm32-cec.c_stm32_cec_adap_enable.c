
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_cec {int regmap; int clk_hdmi_cec; int clk_cec; int dev; } ;
struct cec_adapter {struct stm32_cec* priv; } ;


 int CECEN ;
 int CEC_CR ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int dev_err (int ,char*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int stm32_cec_adap_enable(struct cec_adapter *adap, bool enable)
{
 struct stm32_cec *cec = adap->priv;
 int ret = 0;

 if (enable) {
  ret = clk_enable(cec->clk_cec);
  if (ret)
   dev_err(cec->dev, "fail to enable cec clock\n");

  clk_enable(cec->clk_hdmi_cec);
  regmap_update_bits(cec->regmap, CEC_CR, CECEN, CECEN);
 } else {
  clk_disable(cec->clk_cec);
  clk_disable(cec->clk_hdmi_cec);
  regmap_update_bits(cec->regmap, CEC_CR, CECEN, 0);
 }

 return ret;
}

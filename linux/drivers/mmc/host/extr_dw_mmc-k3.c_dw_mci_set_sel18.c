
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct k3_priv {int reg; } ;
struct dw_mci {int dev; struct k3_priv* priv; } ;


 unsigned int SDCARD_IO_SEL18 ;
 int SOC_SCTRL_SCPERCTRL5 ;
 int dev_err (int ,char*,unsigned int) ;
 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;

__attribute__((used)) static int dw_mci_set_sel18(struct dw_mci *host, bool set)
{
 int ret;
 unsigned int val;
 struct k3_priv *priv;

 priv = host->priv;

 val = set ? SDCARD_IO_SEL18 : 0;
 ret = regmap_update_bits(priv->reg, SOC_SCTRL_SCPERCTRL5,
     SDCARD_IO_SEL18, val);
 if (ret) {
  dev_err(host->dev, "sel18 %u error\n", val);
  return ret;
 }

 return 0;
}

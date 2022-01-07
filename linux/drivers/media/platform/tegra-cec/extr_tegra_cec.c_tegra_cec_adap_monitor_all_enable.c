
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_cec {int dummy; } ;
struct cec_adapter {struct tegra_cec* priv; } ;


 int TEGRA_CEC_HWCTRL_RX_SNOOP ;
 int TEGRA_CEC_HW_CONTROL ;
 int cec_read (struct tegra_cec*,int ) ;
 int cec_write (struct tegra_cec*,int ,int ) ;

__attribute__((used)) static int tegra_cec_adap_monitor_all_enable(struct cec_adapter *adap,
          bool enable)
{
 struct tegra_cec *cec = adap->priv;
 u32 reg = cec_read(cec, TEGRA_CEC_HW_CONTROL);

 if (enable)
  reg |= TEGRA_CEC_HWCTRL_RX_SNOOP;
 else
  reg &= ~TEGRA_CEC_HWCTRL_RX_SNOOP;
 cec_write(cec, TEGRA_CEC_HW_CONTROL, reg);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct tegra_cec {int dummy; } ;
struct cec_adapter {struct tegra_cec* priv; } ;


 int CEC_LOG_ADDR_INVALID ;
 int TEGRA_CEC_HWCTRL_RX_LADDR (int) ;
 int TEGRA_CEC_HWCTRL_RX_LADDR_MASK ;
 int TEGRA_CEC_HW_CONTROL ;
 int cec_read (struct tegra_cec*,int ) ;
 int cec_write (struct tegra_cec*,int ,int ) ;

__attribute__((used)) static int tegra_cec_adap_log_addr(struct cec_adapter *adap, u8 logical_addr)
{
 struct tegra_cec *cec = adap->priv;
 u32 state = cec_read(cec, TEGRA_CEC_HW_CONTROL);

 if (logical_addr == CEC_LOG_ADDR_INVALID)
  state &= ~TEGRA_CEC_HWCTRL_RX_LADDR_MASK;
 else
  state |= TEGRA_CEC_HWCTRL_RX_LADDR((1 << logical_addr));

 cec_write(cec, TEGRA_CEC_HW_CONTROL, state);
 return 0;
}

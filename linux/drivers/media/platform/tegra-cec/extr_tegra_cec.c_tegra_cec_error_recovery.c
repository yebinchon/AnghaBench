
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_cec {int dummy; } ;


 int TEGRA_CEC_HW_CONTROL ;
 int TEGRA_CEC_INT_STAT ;
 int cec_read (struct tegra_cec*,int ) ;
 int cec_write (struct tegra_cec*,int ,int) ;

__attribute__((used)) static void tegra_cec_error_recovery(struct tegra_cec *cec)
{
 u32 hw_ctrl;

 hw_ctrl = cec_read(cec, TEGRA_CEC_HW_CONTROL);
 cec_write(cec, TEGRA_CEC_HW_CONTROL, 0);
 cec_write(cec, TEGRA_CEC_INT_STAT, 0xffffffff);
 cec_write(cec, TEGRA_CEC_HW_CONTROL, hw_ctrl);
}

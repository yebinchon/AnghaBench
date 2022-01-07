
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct r8152 {int dummy; } ;


 int MCU_TYPE_USB ;
 int PCUT_STATUS ;
 int PHASE2_EN ;
 int PWR_EN ;
 int USB_MISC_0 ;
 int USB_POWER_CUT ;
 int ocp_read_word (struct r8152*,int ,int ) ;
 int ocp_write_word (struct r8152*,int ,int ,int) ;

__attribute__((used)) static void r8153b_power_cut_en(struct r8152 *tp, bool enable)
{
 u32 ocp_data;

 ocp_data = ocp_read_word(tp, MCU_TYPE_USB, USB_POWER_CUT);
 if (enable)
  ocp_data |= PWR_EN | PHASE2_EN;
 else
  ocp_data &= ~PWR_EN;
 ocp_write_word(tp, MCU_TYPE_USB, USB_POWER_CUT, ocp_data);

 ocp_data = ocp_read_word(tp, MCU_TYPE_USB, USB_MISC_0);
 ocp_data &= ~PCUT_STATUS;
 ocp_write_word(tp, MCU_TYPE_USB, USB_MISC_0, ocp_data);
}

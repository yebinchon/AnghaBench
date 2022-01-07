
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct r8152 {int dummy; } ;


 int MCU_TYPE_USB ;
 int POWER_CUT ;
 int RESUME_INDICATE ;
 int USB_PM_CTRL_STATUS ;
 int USB_UPS_CTRL ;
 int ocp_read_word (struct r8152*,int ,int ) ;
 int ocp_write_word (struct r8152*,int ,int ,int ) ;

__attribute__((used)) static void r8152_power_cut_en(struct r8152 *tp, bool enable)
{
 u32 ocp_data;

 ocp_data = ocp_read_word(tp, MCU_TYPE_USB, USB_UPS_CTRL);
 if (enable)
  ocp_data |= POWER_CUT;
 else
  ocp_data &= ~POWER_CUT;
 ocp_write_word(tp, MCU_TYPE_USB, USB_UPS_CTRL, ocp_data);

 ocp_data = ocp_read_word(tp, MCU_TYPE_USB, USB_PM_CTRL_STATUS);
 ocp_data &= ~RESUME_INDICATE;
 ocp_write_word(tp, MCU_TYPE_USB, USB_PM_CTRL_STATUS, ocp_data);
}

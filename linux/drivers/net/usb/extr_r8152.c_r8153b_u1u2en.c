
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct r8152 {int dummy; } ;


 int LPM_U1U2_EN ;
 int MCU_TYPE_USB ;
 int USB_LPM_CONFIG ;
 int ocp_read_word (struct r8152*,int ,int ) ;
 int ocp_write_word (struct r8152*,int ,int ,int ) ;

__attribute__((used)) static void r8153b_u1u2en(struct r8152 *tp, bool enable)
{
 u32 ocp_data;

 ocp_data = ocp_read_word(tp, MCU_TYPE_USB, USB_LPM_CONFIG);
 if (enable)
  ocp_data |= LPM_U1U2_EN;
 else
  ocp_data &= ~LPM_U1U2_EN;

 ocp_write_word(tp, MCU_TYPE_USB, USB_LPM_CONFIG, ocp_data);
}

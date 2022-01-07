
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct r8152 {int dummy; } ;


 int MCU_TYPE_USB ;
 int U2P3_ENABLE ;
 int USB_U2P3_CTRL ;
 int ocp_read_word (struct r8152*,int ,int ) ;
 int ocp_write_word (struct r8152*,int ,int ,int ) ;

__attribute__((used)) static void r8153_u2p3en(struct r8152 *tp, bool enable)
{
 u32 ocp_data;

 ocp_data = ocp_read_word(tp, MCU_TYPE_USB, USB_U2P3_CTRL);
 if (enable)
  ocp_data |= U2P3_ENABLE;
 else
  ocp_data &= ~U2P3_ENABLE;
 ocp_write_word(tp, MCU_TYPE_USB, USB_U2P3_CTRL, ocp_data);
}

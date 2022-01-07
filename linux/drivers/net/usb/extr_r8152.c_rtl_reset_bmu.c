
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct r8152 {int dummy; } ;


 int BMU_RESET_EP_IN ;
 int BMU_RESET_EP_OUT ;
 int MCU_TYPE_USB ;
 int USB_BMU_RESET ;
 int ocp_read_byte (struct r8152*,int ,int ) ;
 int ocp_write_byte (struct r8152*,int ,int ,int) ;

__attribute__((used)) static void rtl_reset_bmu(struct r8152 *tp)
{
 u32 ocp_data;

 ocp_data = ocp_read_byte(tp, MCU_TYPE_USB, USB_BMU_RESET);
 ocp_data &= ~(BMU_RESET_EP_IN | BMU_RESET_EP_OUT);
 ocp_write_byte(tp, MCU_TYPE_USB, USB_BMU_RESET, ocp_data);
 ocp_data |= BMU_RESET_EP_IN | BMU_RESET_EP_OUT;
 ocp_write_byte(tp, MCU_TYPE_USB, USB_BMU_RESET, ocp_data);
}

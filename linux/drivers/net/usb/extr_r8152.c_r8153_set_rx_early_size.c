
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct r8152 {int rx_buf_sz; int version; TYPE_1__* netdev; } ;
struct TYPE_2__ {int mtu; } ;


 int MCU_TYPE_USB ;






 int USB_RX_EARLY_SIZE ;
 int WARN_ON_ONCE (int) ;
 int ocp_write_word (struct r8152*,int ,int ,int) ;
 int rx_reserved_size (int ) ;

__attribute__((used)) static void r8153_set_rx_early_size(struct r8152 *tp)
{
 u32 ocp_data = tp->rx_buf_sz - rx_reserved_size(tp->netdev->mtu);

 switch (tp->version) {
 case 133:
 case 132:
 case 131:
 case 130:
  ocp_write_word(tp, MCU_TYPE_USB, USB_RX_EARLY_SIZE,
          ocp_data / 4);
  break;
 case 129:
 case 128:
  ocp_write_word(tp, MCU_TYPE_USB, USB_RX_EARLY_SIZE,
          ocp_data / 8);
  break;
 default:
  WARN_ON_ONCE(1);
  break;
 }
}

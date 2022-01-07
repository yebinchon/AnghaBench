
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8152 {int dummy; } ;


 int MCU_TYPE_USB ;
 int OWN_CLEAR ;
 int OWN_UPDATE ;
 int USB_UPT_RXDMA_OWN ;
 int ocp_write_byte (struct r8152*,int ,int ,int) ;

__attribute__((used)) static inline void r8153b_rx_agg_chg_indicate(struct r8152 *tp)
{
 ocp_write_byte(tp, MCU_TYPE_USB, USB_UPT_RXDMA_OWN,
         OWN_UPDATE | OWN_CLEAR);
}

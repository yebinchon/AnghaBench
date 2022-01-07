
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wil_rx_status_compressed {int d0; } ;


 int WIL_GET_BITS (int,int,int) ;
 int WIL_RX_EDMA_MID_VALID_BIT ;

__attribute__((used)) static inline int wil_rx_status_get_mid(void *msg)
{
 if (!(((struct wil_rx_status_compressed *)msg)->d0 &
     WIL_RX_EDMA_MID_VALID_BIT))
  return 0;

 return WIL_GET_BITS(((struct wil_rx_status_compressed *)msg)->d0,
       20, 21);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wil_rx_status_compressed {int d0; } ;


 int WIL_GET_BITS (int ,int,int) ;

__attribute__((used)) static inline u8 wil_rx_status_get_mcast(void *msg)
{
 return WIL_GET_BITS(((struct wil_rx_status_compressed *)msg)->d0,
       26, 26);
}

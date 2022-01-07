
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wil_rx_status_compressed {int d0; } ;


 int WIL_GET_BITS (int ,int,int) ;

__attribute__((used)) static inline u16 wil_rx_status_get_flow_id(void *msg)
{
 return WIL_GET_BITS(((struct wil_rx_status_compressed *)msg)->d0,
       8, 19);
}

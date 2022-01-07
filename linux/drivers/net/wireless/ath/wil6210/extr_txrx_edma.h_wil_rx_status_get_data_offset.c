
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wil_rx_status_compressed {int d1; } ;


 int WIL_GET_BITS (int ,int,int) ;

__attribute__((used)) static inline u8 wil_rx_status_get_data_offset(void *msg)
{
 u8 val = WIL_GET_BITS(((struct wil_rx_status_compressed *)msg)->d1,
         24, 27);

 switch (val) {
 case 0: return 0;
 case 3: return 2;
 default: return 0xFF;
 }
}

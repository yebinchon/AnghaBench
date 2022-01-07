
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wil_ring_tx_status {int d2; } ;


 int WIL_GET_BITS (int ,int ,int) ;

__attribute__((used)) static inline u8 wil_tx_status_get_mcs(struct wil_ring_tx_status *msg)
{
 return WIL_GET_BITS(msg->d2, 0, 4);
}

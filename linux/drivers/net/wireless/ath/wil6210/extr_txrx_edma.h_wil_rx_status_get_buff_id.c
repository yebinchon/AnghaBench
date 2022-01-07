
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wil_rx_status_compressed {int buff_id; } ;
typedef int __le16 ;



__attribute__((used)) static inline __le16 wil_rx_status_get_buff_id(void *msg)
{
 return ((struct wil_rx_status_compressed *)msg)->buff_id;
}

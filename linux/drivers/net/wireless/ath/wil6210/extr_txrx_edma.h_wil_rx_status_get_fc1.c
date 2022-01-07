
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int d1; } ;
struct wil_rx_status_extended {TYPE_1__ ext; } ;
struct wil6210_priv {scalar_t__ use_compressed_rx_status; } ;


 int WIL_GET_BITS (int ,int ,int) ;

__attribute__((used)) static inline int wil_rx_status_get_fc1(struct wil6210_priv *wil, void *msg)
{
 if (wil->use_compressed_rx_status)
  return 0;

 return WIL_GET_BITS(((struct wil_rx_status_extended *)msg)->ext.d1,
       0, 5) << 2;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int seq_num; } ;
struct wil_rx_status_extended {TYPE_1__ ext; } ;
struct wil6210_priv {scalar_t__ use_compressed_rx_status; } ;
typedef int __le16 ;



__attribute__((used)) static inline __le16 wil_rx_status_get_seq(struct wil6210_priv *wil, void *msg)
{
 if (wil->use_compressed_rx_status)
  return 0;

 return ((struct wil_rx_status_extended *)msg)->ext.seq_num;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wil_net_stats {int rx_csum_err; } ;


 int CHECKSUM_NONE ;
 int CHECKSUM_UNNECESSARY ;
 int wil_rx_status_get_l3_rx_status (void*) ;
 int wil_rx_status_get_l4_rx_status (void*) ;

__attribute__((used)) static inline int wil_rx_status_get_checksum(void *msg,
          struct wil_net_stats *stats)
{
 int l3_rx_status = wil_rx_status_get_l3_rx_status(msg);
 int l4_rx_status = wil_rx_status_get_l4_rx_status(msg);

 if (l4_rx_status == 1)
  return CHECKSUM_UNNECESSARY;

 if (l4_rx_status == 0 && l3_rx_status == 1)
  return CHECKSUM_UNNECESSARY;

 if (l3_rx_status == 0 && l4_rx_status == 0)

  return CHECKSUM_NONE;






 stats->rx_csum_err++;
 return CHECKSUM_NONE;
}

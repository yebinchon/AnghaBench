
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device_stats {int rx_over_errors; int rx_crc_errors; int rx_frame_errors; int rx_length_errors; } ;
struct net_device {struct net_device_stats stats; } ;
struct gfar_extra_stats {int rx_overrun; int rx_crcerr; int rx_nonoctet; int rx_short; int rx_large; int rx_trunc; } ;
struct gfar_private {struct gfar_extra_stats extra_stats; } ;


 int BD_LFLAG (int) ;
 int RXBD_CRCERR ;
 int RXBD_LARGE ;
 int RXBD_NONOCTET ;
 int RXBD_OVERRUN ;
 int RXBD_SHORT ;
 int RXBD_TRUNCATED ;
 int atomic64_inc (int *) ;
 struct gfar_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void count_errors(u32 lstatus, struct net_device *ndev)
{
 struct gfar_private *priv = netdev_priv(ndev);
 struct net_device_stats *stats = &ndev->stats;
 struct gfar_extra_stats *estats = &priv->extra_stats;


 if (lstatus & BD_LFLAG(RXBD_TRUNCATED)) {
  stats->rx_length_errors++;

  atomic64_inc(&estats->rx_trunc);

  return;
 }

 if (lstatus & BD_LFLAG(RXBD_LARGE | RXBD_SHORT)) {
  stats->rx_length_errors++;

  if (lstatus & BD_LFLAG(RXBD_LARGE))
   atomic64_inc(&estats->rx_large);
  else
   atomic64_inc(&estats->rx_short);
 }
 if (lstatus & BD_LFLAG(RXBD_NONOCTET)) {
  stats->rx_frame_errors++;
  atomic64_inc(&estats->rx_nonoctet);
 }
 if (lstatus & BD_LFLAG(RXBD_CRCERR)) {
  atomic64_inc(&estats->rx_crcerr);
  stats->rx_crc_errors++;
 }
 if (lstatus & BD_LFLAG(RXBD_OVERRUN)) {
  atomic64_inc(&estats->rx_overrun);
  stats->rx_over_errors++;
 }
}

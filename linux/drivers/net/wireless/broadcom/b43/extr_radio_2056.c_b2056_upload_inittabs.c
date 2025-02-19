
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_wldev {int dummy; } ;
struct b2056_inittabs_pts {int rx_length; int rx; int tx_length; int tx; int syn_length; int syn; } ;


 int B2056_RX0 ;
 int B2056_RX1 ;
 int B2056_SYN ;
 int B2056_TX0 ;
 int B2056_TX1 ;
 int B43_WARN_ON (int) ;
 int b2056_upload_inittab (struct b43_wldev*,int,int,int ,int ,int ) ;
 struct b2056_inittabs_pts* b43_nphy_get_inittabs_rev3 (struct b43_wldev*) ;

void b2056_upload_inittabs(struct b43_wldev *dev,
      bool ghz5, bool ignore_uploadflag)
{
 const struct b2056_inittabs_pts *pts;

 pts = b43_nphy_get_inittabs_rev3(dev);
 if (!pts) {
  B43_WARN_ON(1);
  return;
 }

 b2056_upload_inittab(dev, ghz5, ignore_uploadflag,
    B2056_SYN, pts->syn, pts->syn_length);
 b2056_upload_inittab(dev, ghz5, ignore_uploadflag,
    B2056_TX0, pts->tx, pts->tx_length);
 b2056_upload_inittab(dev, ghz5, ignore_uploadflag,
    B2056_TX1, pts->tx, pts->tx_length);
 b2056_upload_inittab(dev, ghz5, ignore_uploadflag,
    B2056_RX0, pts->rx, pts->rx_length);
 b2056_upload_inittab(dev, ghz5, ignore_uploadflag,
    B2056_RX1, pts->rx, pts->rx_length);
}

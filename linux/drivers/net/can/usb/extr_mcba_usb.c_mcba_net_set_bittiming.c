
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int bitrate; } ;
struct TYPE_4__ {TYPE_1__ bittiming; } ;
struct mcba_priv {TYPE_2__ can; } ;


 int mcba_usb_xmit_change_bitrate (struct mcba_priv*,int const) ;
 struct mcba_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mcba_net_set_bittiming(struct net_device *netdev)
{
 struct mcba_priv *priv = netdev_priv(netdev);
 const u16 bitrate_kbps = priv->can.bittiming.bitrate / 1000;

 mcba_usb_xmit_change_bitrate(priv, bitrate_kbps);

 return 0;
}

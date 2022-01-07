
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usbnet {int net; int mii; } ;
struct ethtool_cmd {scalar_t__ duplex; int cmd; } ;


 int AX88172_MEDIUM_DEFAULT ;
 int AX88172_MEDIUM_FD ;
 scalar_t__ DUPLEX_FULL ;
 int ETHTOOL_GSET ;
 int asix_write_medium_mode (struct usbnet*,int ,int ) ;
 int ethtool_cmd_speed (struct ethtool_cmd*) ;
 int mii_check_media (int *,int,int) ;
 int mii_ethtool_gset (int *,struct ethtool_cmd*) ;
 int netdev_dbg (int ,char*,int ,scalar_t__,int ) ;

__attribute__((used)) static int ax88172_link_reset(struct usbnet *dev)
{
 u8 mode;
 struct ethtool_cmd ecmd = { .cmd = ETHTOOL_GSET };

 mii_check_media(&dev->mii, 1, 1);
 mii_ethtool_gset(&dev->mii, &ecmd);
 mode = AX88172_MEDIUM_DEFAULT;

 if (ecmd.duplex != DUPLEX_FULL)
  mode |= ~AX88172_MEDIUM_FD;

 netdev_dbg(dev->net, "ax88172_link_reset() speed: %u duplex: %d setting mode to 0x%04x\n",
     ethtool_cmd_speed(&ecmd), ecmd.duplex, mode);

 asix_write_medium_mode(dev, mode, 0);

 return 0;
}

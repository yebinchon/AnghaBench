
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct usbnet {int net; int mii; int data; } ;
struct ethtool_cmd {scalar_t__ duplex; int cmd; } ;
struct asix_data {scalar_t__ phymode; scalar_t__ ledmode; } ;


 int AX88178_MEDIUM_DEFAULT ;
 int AX_MEDIUM_ENCK ;
 int AX_MEDIUM_FD ;
 int AX_MEDIUM_GM ;
 int AX_MEDIUM_PS ;
 scalar_t__ DUPLEX_FULL ;
 int ETHTOOL_GSET ;
 scalar_t__ PHY_MODE_MARVELL ;
 scalar_t__ SPEED_100 ;
 scalar_t__ SPEED_1000 ;
 int asix_write_medium_mode (struct usbnet*,int,int ) ;
 scalar_t__ ethtool_cmd_speed (struct ethtool_cmd*) ;
 int marvell_led_status (struct usbnet*,scalar_t__) ;
 int mii_check_media (int *,int,int) ;
 int mii_ethtool_gset (int *,struct ethtool_cmd*) ;
 int netdev_dbg (int ,char*,...) ;

__attribute__((used)) static int ax88178_link_reset(struct usbnet *dev)
{
 u16 mode;
 struct ethtool_cmd ecmd = { .cmd = ETHTOOL_GSET };
 struct asix_data *data = (struct asix_data *)&dev->data;
 u32 speed;

 netdev_dbg(dev->net, "ax88178_link_reset()\n");

 mii_check_media(&dev->mii, 1, 1);
 mii_ethtool_gset(&dev->mii, &ecmd);
 mode = AX88178_MEDIUM_DEFAULT;
 speed = ethtool_cmd_speed(&ecmd);

 if (speed == SPEED_1000)
  mode |= AX_MEDIUM_GM;
 else if (speed == SPEED_100)
  mode |= AX_MEDIUM_PS;
 else
  mode &= ~(AX_MEDIUM_PS | AX_MEDIUM_GM);

 mode |= AX_MEDIUM_ENCK;

 if (ecmd.duplex == DUPLEX_FULL)
  mode |= AX_MEDIUM_FD;
 else
  mode &= ~AX_MEDIUM_FD;

 netdev_dbg(dev->net, "ax88178_link_reset() speed: %u duplex: %d setting mode to 0x%04x\n",
     speed, ecmd.duplex, mode);

 asix_write_medium_mode(dev, mode, 0);

 if (data->phymode == PHY_MODE_MARVELL && data->ledmode)
  marvell_led_status(dev, speed);

 return 0;
}

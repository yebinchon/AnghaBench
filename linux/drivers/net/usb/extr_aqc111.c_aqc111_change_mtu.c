
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct usbnet {TYPE_1__* net; scalar_t__ hard_mtu; } ;
struct net_device {int mtu; scalar_t__ hard_header_len; } ;
struct TYPE_2__ {int mtu; } ;


 int * AQC111_BULKIN_SIZE ;
 int AQ_ACCESS_MAC ;
 int SFR_MEDIUM_JUMBO_EN ;
 int SFR_MEDIUM_STATUS_MODE ;
 int SFR_PAUSE_WATERLVL_LOW ;
 int SFR_RX_BULKIN_QCTRL ;
 int aqc111_read16_cmd (struct usbnet*,int ,int ,int,int*) ;
 int aqc111_write16_cmd (struct usbnet*,int ,int ,int,int*) ;
 int aqc111_write_cmd (struct usbnet*,int ,int ,int,int,int *) ;
 int memcpy (int *,int *,int) ;
 struct usbnet* netdev_priv (struct net_device*) ;

__attribute__((used)) static int aqc111_change_mtu(struct net_device *net, int new_mtu)
{
 struct usbnet *dev = netdev_priv(net);
 u16 reg16 = 0;
 u8 buf[5];

 net->mtu = new_mtu;
 dev->hard_mtu = net->mtu + net->hard_header_len;

 aqc111_read16_cmd(dev, AQ_ACCESS_MAC, SFR_MEDIUM_STATUS_MODE,
     2, &reg16);
 if (net->mtu > 1500)
  reg16 |= SFR_MEDIUM_JUMBO_EN;
 else
  reg16 &= ~SFR_MEDIUM_JUMBO_EN;

 aqc111_write16_cmd(dev, AQ_ACCESS_MAC, SFR_MEDIUM_STATUS_MODE,
      2, &reg16);

 if (dev->net->mtu > 12500) {
  memcpy(buf, &AQC111_BULKIN_SIZE[2], 5);

  aqc111_write_cmd(dev, AQ_ACCESS_MAC, SFR_RX_BULKIN_QCTRL,
     5, 5, buf);
 }


 if (dev->net->mtu <= 4500)
  reg16 = 0x0810;
 else if (dev->net->mtu <= 9500)
  reg16 = 0x1020;
 else if (dev->net->mtu <= 12500)
  reg16 = 0x1420;
 else
  reg16 = 0x1A20;

 aqc111_write16_cmd(dev, AQ_ACCESS_MAC, SFR_PAUSE_WATERLVL_LOW,
      2, &reg16);

 return 0;
}

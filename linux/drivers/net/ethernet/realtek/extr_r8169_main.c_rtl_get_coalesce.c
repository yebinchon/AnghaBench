
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct rtl_coalesce_scale {int* nsecs; } ;
struct rtl_coalesce_info {struct rtl_coalesce_scale* scalev; } ;
struct rtl8169_private {size_t cp_cmd; } ;
struct net_device {int dummy; } ;
struct ethtool_coalesce {int tx_coalesce_usecs; int tx_max_coalesced_frames; int rx_coalesce_usecs; int rx_max_coalesced_frames; } ;


 int EOPNOTSUPP ;
 size_t INTT_MASK ;
 scalar_t__ IS_ERR (struct rtl_coalesce_info const*) ;
 int IntrMitigate ;
 int PTR_ERR (struct rtl_coalesce_info const*) ;
 int RTL_COALESCE_MASK ;
 int RTL_COALESCE_SHIFT ;
 int RTL_R16 (struct rtl8169_private*,int ) ;
 int memset (struct ethtool_coalesce*,int ,int) ;
 struct rtl8169_private* netdev_priv (struct net_device*) ;
 struct rtl_coalesce_info* rtl_coalesce_info (struct net_device*) ;
 scalar_t__ rtl_is_8125 (struct rtl8169_private*) ;

__attribute__((used)) static int rtl_get_coalesce(struct net_device *dev, struct ethtool_coalesce *ec)
{
 struct rtl8169_private *tp = netdev_priv(dev);
 const struct rtl_coalesce_info *ci;
 const struct rtl_coalesce_scale *scale;
 struct {
  u32 *max_frames;
  u32 *usecs;
 } coal_settings [] = {
  { &ec->rx_max_coalesced_frames, &ec->rx_coalesce_usecs },
  { &ec->tx_max_coalesced_frames, &ec->tx_coalesce_usecs }
 }, *p = coal_settings;
 int i;
 u16 w;

 if (rtl_is_8125(tp))
  return -EOPNOTSUPP;

 memset(ec, 0, sizeof(*ec));


 ci = rtl_coalesce_info(dev);
 if (IS_ERR(ci))
  return PTR_ERR(ci);

 scale = &ci->scalev[tp->cp_cmd & INTT_MASK];


 for (w = RTL_R16(tp, IntrMitigate); w; w >>= RTL_COALESCE_SHIFT, p++) {
  *p->max_frames = (w & RTL_COALESCE_MASK) << 2;
  w >>= RTL_COALESCE_SHIFT;
  *p->usecs = w & RTL_COALESCE_MASK;
 }

 for (i = 0; i < 2; i++) {
  p = coal_settings + i;
  *p->usecs = (*p->usecs * scale->nsecs[i]) / 1000;





  if (!*p->usecs && !*p->max_frames)
   *p->max_frames = 1;
 }

 return 0;
}

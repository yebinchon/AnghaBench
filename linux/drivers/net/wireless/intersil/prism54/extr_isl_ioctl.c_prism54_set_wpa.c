
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int name; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_5__ {int wpa; int mib_sem; } ;
typedef TYPE_1__ islpci_private ;
typedef int __u32 ;


 int DOT11_AUTH_OS ;
 int DOT11_MLME_AUTO ;
 int DOT11_MLME_EXTENDED ;
 int DOT11_OID_AUTHENABLE ;
 int DOT11_OID_DOT1XENABLE ;
 int DOT11_OID_EXUNENCRYPTED ;
 int DOT11_OID_MLMEAUTOLEVEL ;
 int DOT11_OID_PRIVACYINVOKED ;
 scalar_t__ PRV_STATE_INIT ;
 int down_write (int *) ;
 scalar_t__ islpci_get_state (TYPE_1__*) ;
 int mgt_set_request (TYPE_1__*,int ,int ,int*) ;
 TYPE_1__* netdev_priv (struct net_device*) ;
 int printk (char*,int ) ;
 int up_write (int *) ;

__attribute__((used)) static int
prism54_set_wpa(struct net_device *ndev, struct iw_request_info *info,
  __u32 * uwrq, char *extra)
{
 islpci_private *priv = netdev_priv(ndev);
 u32 mlme, authen, dot1x, filter, wep;

 if (islpci_get_state(priv) < PRV_STATE_INIT)
  return 0;

 wep = 1;
 filter = 1;
 dot1x = 0x01;
 mlme = DOT11_MLME_EXTENDED;
 authen = DOT11_AUTH_OS;

 down_write(&priv->mib_sem);
 priv->wpa = *uwrq;

 switch (priv->wpa) {
  default:
  case 0:
   wep = 0;
   filter = 0;
   dot1x = 0;
   mlme = DOT11_MLME_AUTO;
   printk("%s: Disabling WPA\n", ndev->name);
   break;
  case 2:
  case 1:
   printk("%s: Enabling WPA\n", ndev->name);
   break;
 }
 up_write(&priv->mib_sem);

 mgt_set_request(priv, DOT11_OID_AUTHENABLE, 0, &authen);
 mgt_set_request(priv, DOT11_OID_PRIVACYINVOKED, 0, &wep);
 mgt_set_request(priv, DOT11_OID_EXUNENCRYPTED, 0, &filter);
 mgt_set_request(priv, DOT11_OID_DOT1XENABLE, 0, &dot1x);
 mgt_set_request(priv, DOT11_OID_MLMEAUTOLEVEL, 0, &mlme);

 return 0;
}

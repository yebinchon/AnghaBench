
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int name; TYPE_1__* ieee80211_ptr; } ;
struct TYPE_4__ {TYPE_2__* wiphy; int iftype; } ;
struct libipw_device {int open_wep; int host_encrypt; int host_decrypt; int host_mc_decrypt; int host_open_frag; int ieee802_1x; TYPE_1__ wdev; scalar_t__ privacy_invoked; scalar_t__ drop_unencrypted; scalar_t__ wpa_enabled; int lock; int crypt_info; int scan_age; void* rts; void* fts; struct net_device* dev; } ;
struct TYPE_5__ {int max_scan_ssids; int interface_modes; scalar_t__ max_scan_ie_len; int privid; } ;


 int BIT (int ) ;
 void* DEFAULT_FTS ;
 int DEFAULT_MAX_SCAN_AGE ;
 int LIBIPW_DEBUG_INFO (char*) ;
 int LIBIPW_ERROR (char*,...) ;
 int NL80211_IFTYPE_ADHOC ;
 int NL80211_IFTYPE_STATION ;
 struct net_device* alloc_etherdev (int) ;
 int free_netdev (struct net_device*) ;
 int lib80211_crypt_info_init (int *,int ,int *) ;
 int libipw_config_ops ;
 int libipw_networks_allocate (struct libipw_device*) ;
 int libipw_networks_initialize (struct libipw_device*) ;
 int libipw_wiphy_privid ;
 struct libipw_device* netdev_priv (struct net_device*) ;
 int spin_lock_init (int *) ;
 int wiphy_free (TYPE_2__*) ;
 TYPE_2__* wiphy_new (int *,int ) ;

struct net_device *alloc_libipw(int sizeof_priv, int monitor)
{
 struct libipw_device *ieee;
 struct net_device *dev;
 int err;

 LIBIPW_DEBUG_INFO("Initializing...\n");

 dev = alloc_etherdev(sizeof(struct libipw_device) + sizeof_priv);
 if (!dev)
  goto failed;

 ieee = netdev_priv(dev);

 ieee->dev = dev;

 if (!monitor) {
  ieee->wdev.wiphy = wiphy_new(&libipw_config_ops, 0);
  if (!ieee->wdev.wiphy) {
   LIBIPW_ERROR("Unable to allocate wiphy.\n");
   goto failed_free_netdev;
  }

  ieee->dev->ieee80211_ptr = &ieee->wdev;
  ieee->wdev.iftype = NL80211_IFTYPE_STATION;




  ieee->wdev.wiphy->privid = libipw_wiphy_privid;

  ieee->wdev.wiphy->max_scan_ssids = 1;
  ieee->wdev.wiphy->max_scan_ie_len = 0;
  ieee->wdev.wiphy->interface_modes = BIT(NL80211_IFTYPE_STATION)
      | BIT(NL80211_IFTYPE_ADHOC);
 }

 err = libipw_networks_allocate(ieee);
 if (err) {
  LIBIPW_ERROR("Unable to allocate beacon storage: %d\n", err);
  goto failed_free_wiphy;
 }
 libipw_networks_initialize(ieee);


 ieee->fts = DEFAULT_FTS;
 ieee->rts = DEFAULT_FTS;
 ieee->scan_age = DEFAULT_MAX_SCAN_AGE;
 ieee->open_wep = 1;


 ieee->host_encrypt = 1;
 ieee->host_decrypt = 1;
 ieee->host_mc_decrypt = 1;






 ieee->host_open_frag = 1;
 ieee->ieee802_1x = 1;

 spin_lock_init(&ieee->lock);

 lib80211_crypt_info_init(&ieee->crypt_info, dev->name, &ieee->lock);

 ieee->wpa_enabled = 0;
 ieee->drop_unencrypted = 0;
 ieee->privacy_invoked = 0;

 return dev;

failed_free_wiphy:
 if (!monitor)
  wiphy_free(ieee->wdev.wiphy);
failed_free_netdev:
 free_netdev(dev);
failed:
 return ((void*)0);
}

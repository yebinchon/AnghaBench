
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wl3501_card {int dummy; } ;
struct wl3501_assoc_confirm {scalar_t__ status; } ;
struct net_device {int dummy; } ;
typedef int sig ;


 scalar_t__ WL3501_STATUS_SUCCESS ;
 struct wl3501_card* netdev_priv (struct net_device*) ;
 int pr_debug (char*) ;
 int wl3501_get_from_wla (struct wl3501_card*,int ,struct wl3501_assoc_confirm*,int) ;
 int wl3501_online (struct net_device*) ;

__attribute__((used)) static inline void wl3501_assoc_confirm_interrupt(struct net_device *dev,
        u16 addr)
{
 struct wl3501_card *this = netdev_priv(dev);
 struct wl3501_assoc_confirm sig;

 pr_debug("entry");
 wl3501_get_from_wla(this, addr, &sig, sizeof(sig));

 if (sig.status == WL3501_STATUS_SUCCESS)
  wl3501_online(dev);
}

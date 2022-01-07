
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wl3501_start_confirm {scalar_t__ status; } ;
struct wl3501_card {int dummy; } ;
struct net_device {int dummy; } ;
typedef int sig ;


 scalar_t__ WL3501_STATUS_SUCCESS ;
 int netif_wake_queue (struct net_device*) ;
 int pr_debug (char*) ;
 int wl3501_get_from_wla (struct wl3501_card*,int ,struct wl3501_start_confirm*,int) ;

__attribute__((used)) static inline void wl3501_start_confirm_interrupt(struct net_device *dev,
        struct wl3501_card *this,
        u16 addr)
{
 struct wl3501_start_confirm sig;

 pr_debug("entry");
 wl3501_get_from_wla(this, addr, &sig, sizeof(sig));
 if (sig.status == WL3501_STATUS_SUCCESS)
  netif_wake_queue(dev);
}

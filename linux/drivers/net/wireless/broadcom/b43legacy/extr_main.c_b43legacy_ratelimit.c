
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43legacy_wl {int current_dev; } ;


 scalar_t__ B43legacy_STAT_STARTED ;
 scalar_t__ b43legacy_status (int ) ;
 int net_ratelimit () ;

__attribute__((used)) static int b43legacy_ratelimit(struct b43legacy_wl *wl)
{
 if (!wl || !wl->current_dev)
  return 1;
 if (b43legacy_status(wl->current_dev) < B43legacy_STAT_STARTED)
  return 1;


 return net_ratelimit();
}

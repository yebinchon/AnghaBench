
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_wl {int current_dev; } ;


 scalar_t__ B43_STAT_STARTED ;
 scalar_t__ b43_status (int ) ;
 int net_ratelimit () ;

__attribute__((used)) static int b43_ratelimit(struct b43_wl *wl)
{
 if (!wl || !wl->current_dev)
  return 1;
 if (b43_status(wl->current_dev) < B43_STAT_STARTED)
  return 1;


 return net_ratelimit();
}

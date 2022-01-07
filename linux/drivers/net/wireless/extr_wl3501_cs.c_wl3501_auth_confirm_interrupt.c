
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wl3501_card {int dummy; } ;
struct wl3501_auth_confirm {scalar_t__ status; } ;
typedef int sig ;


 scalar_t__ WL3501_STATUS_SUCCESS ;
 int pr_debug (char*) ;
 int wl3501_get_from_wla (struct wl3501_card*,int ,struct wl3501_auth_confirm*,int) ;
 int wl3501_mgmt_association (struct wl3501_card*) ;
 int wl3501_mgmt_resync (struct wl3501_card*) ;

__attribute__((used)) static inline void wl3501_auth_confirm_interrupt(struct wl3501_card *this,
       u16 addr)
{
 struct wl3501_auth_confirm sig;

 pr_debug("entry");
 wl3501_get_from_wla(this, addr, &sig, sizeof(sig));

 if (sig.status == WL3501_STATUS_SUCCESS)
  wl3501_mgmt_association(this);
 else
  wl3501_mgmt_resync(this);
}

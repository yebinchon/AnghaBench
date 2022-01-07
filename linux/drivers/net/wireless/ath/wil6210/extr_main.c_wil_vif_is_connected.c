
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct wil6210_priv {int max_assoc_sta; TYPE_1__* sta; } ;
struct TYPE_2__ {scalar_t__ mid; scalar_t__ status; } ;


 scalar_t__ wil_sta_connected ;

__attribute__((used)) static bool wil_vif_is_connected(struct wil6210_priv *wil, u8 mid)
{
 int i;

 for (i = 0; i < wil->max_assoc_sta; i++) {
  if (wil->sta[i].mid == mid &&
      wil->sta[i].status == wil_sta_connected)
   return 1;
 }

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wil6210_priv {int dummy; } ;


 int wil_has_other_active_ifaces (struct wil6210_priv*,int *,int,int) ;

bool wil_has_active_ifaces(struct wil6210_priv *wil, bool up, bool ok)
{

 return wil_has_other_active_ifaces(wil, ((void*)0), up, ok);
}

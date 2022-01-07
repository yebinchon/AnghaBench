
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wil6210_priv {int dummy; } ;
struct device {int dummy; } ;


 int pm_runtime_forbid (struct device*) ;
 int pm_runtime_get_noresume (struct device*) ;
 struct device* wil_to_dev (struct wil6210_priv*) ;

void wil_pm_runtime_forbid(struct wil6210_priv *wil)
{
 struct device *dev = wil_to_dev(wil);

 pm_runtime_forbid(dev);
 pm_runtime_get_noresume(dev);
}

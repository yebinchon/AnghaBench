
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wil6210_priv {int dummy; } ;
struct device {int dummy; } ;


 int WIL6210_AUTOSUSPEND_DELAY_MS ;
 int pm_runtime_allow (struct device*) ;
 int pm_runtime_put_noidle (struct device*) ;
 int pm_runtime_set_autosuspend_delay (struct device*,int ) ;
 int pm_runtime_use_autosuspend (struct device*) ;
 struct device* wil_to_dev (struct wil6210_priv*) ;

void wil_pm_runtime_allow(struct wil6210_priv *wil)
{
 struct device *dev = wil_to_dev(wil);

 pm_runtime_put_noidle(dev);
 pm_runtime_set_autosuspend_delay(dev, WIL6210_AUTOSUSPEND_DELAY_MS);
 pm_runtime_use_autosuspend(dev);
 pm_runtime_allow(dev);
}

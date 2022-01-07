
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vpbe_device {scalar_t__ initialized; int encoders; int amp; int dac_clk; TYPE_1__* cfg; int v4l2_dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int module_name; } ;


 int VPSS_VPBE_CLOCK ;
 int clk_disable_unprepare (int ) ;
 int clk_put (int ) ;
 int kfree (int ) ;
 scalar_t__ strcmp (int ,char*) ;
 int v4l2_device_unregister (int *) ;
 int vpss_enable_clock (int ,int ) ;

__attribute__((used)) static void vpbe_deinitialize(struct device *dev, struct vpbe_device *vpbe_dev)
{
 v4l2_device_unregister(&vpbe_dev->v4l2_dev);
 if (strcmp(vpbe_dev->cfg->module_name, "dm644x-vpbe-display") != 0) {
  clk_disable_unprepare(vpbe_dev->dac_clk);
  clk_put(vpbe_dev->dac_clk);
 }

 kfree(vpbe_dev->amp);
 kfree(vpbe_dev->encoders);
 vpbe_dev->initialized = 0;

 vpss_enable_clock(VPSS_VPBE_CLOCK, 0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shark_device {int v4l2_dev; } ;
struct device {int dummy; } ;


 int v4l2_warn (int *,char*) ;

__attribute__((used)) static int shark_register_leds(struct shark_device *shark, struct device *dev)
{
 v4l2_warn(&shark->v4l2_dev,
    "CONFIG_LEDS_CLASS not enabled, LED support disabled\n");
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device_node {int dummy; } ;
struct devbus {int tick_ps; int dev; } ;


 int dev_dbg (int ,char*,char const*,int,int) ;
 int dev_err (int ,char*,struct device_node*,char const*) ;
 int of_property_read_u32 (struct device_node*,char const*,int*) ;

__attribute__((used)) static int get_timing_param_ps(struct devbus *devbus,
          struct device_node *node,
          const char *name,
          u32 *ticks)
{
 u32 time_ps;
 int err;

 err = of_property_read_u32(node, name, &time_ps);
 if (err < 0) {
  dev_err(devbus->dev, "%pOF has no '%s' property\n",
   node, name);
  return err;
 }

 *ticks = (time_ps + devbus->tick_ps - 1) / devbus->tick_ps;

 dev_dbg(devbus->dev, "%s: %u ps -> 0x%x\n",
  name, time_ps, *ticks);
 return 0;
}

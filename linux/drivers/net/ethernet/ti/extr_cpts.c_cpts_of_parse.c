
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct device_node {int dummy; } ;
struct TYPE_2__ {void* shift; void* mult; } ;
struct cpts {int dev; TYPE_1__ cc; } ;


 int EINVAL ;
 int cpts_of_mux_clk_setup (struct cpts*,struct device_node*) ;
 int dev_err (int ,char*) ;
 int of_property_read_u32 (struct device_node*,char*,void**) ;

__attribute__((used)) static int cpts_of_parse(struct cpts *cpts, struct device_node *node)
{
 int ret = -EINVAL;
 u32 prop;

 if (!of_property_read_u32(node, "cpts_clock_mult", &prop))
  cpts->cc.mult = prop;

 if (!of_property_read_u32(node, "cpts_clock_shift", &prop))
  cpts->cc.shift = prop;

 if ((cpts->cc.mult && !cpts->cc.shift) ||
     (!cpts->cc.mult && cpts->cc.shift))
  goto of_error;

 return cpts_of_mux_clk_setup(cpts, node);

of_error:
 dev_err(cpts->dev, "CPTS: Missing property in the DT.\n");
 return ret;
}

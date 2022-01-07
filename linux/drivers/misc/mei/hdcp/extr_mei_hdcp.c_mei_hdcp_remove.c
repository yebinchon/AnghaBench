
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_cl_device {int dev; } ;
struct i915_hdcp_comp_master {int dummy; } ;


 int component_master_del (int *,int *) ;
 int kfree (struct i915_hdcp_comp_master*) ;
 int mei_cldev_disable (struct mei_cl_device*) ;
 struct i915_hdcp_comp_master* mei_cldev_get_drvdata (struct mei_cl_device*) ;
 int mei_cldev_set_drvdata (struct mei_cl_device*,int *) ;
 int mei_component_master_ops ;

__attribute__((used)) static int mei_hdcp_remove(struct mei_cl_device *cldev)
{
 struct i915_hdcp_comp_master *comp_master =
      mei_cldev_get_drvdata(cldev);

 component_master_del(&cldev->dev, &mei_component_master_ops);
 kfree(comp_master);
 mei_cldev_set_drvdata(cldev, ((void*)0));

 return mei_cldev_disable(cldev);
}

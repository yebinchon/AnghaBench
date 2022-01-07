
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_cl_device_id {int dummy; } ;
struct mei_cl_device {int dev; } ;
struct i915_hdcp_comp_master {int dummy; } ;
struct component_match {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR_OR_NULL (struct component_match*) ;
 int component_master_add_with_match (int *,int *,struct component_match*) ;
 int component_match_add_typed (int *,struct component_match**,int ,struct i915_hdcp_comp_master*) ;
 int dev_err (int *,char*,int) ;
 int kfree (struct i915_hdcp_comp_master*) ;
 struct i915_hdcp_comp_master* kzalloc (int,int ) ;
 int mei_cldev_disable (struct mei_cl_device*) ;
 int mei_cldev_enable (struct mei_cl_device*) ;
 int mei_cldev_set_drvdata (struct mei_cl_device*,struct i915_hdcp_comp_master*) ;
 int mei_component_master_ops ;
 int mei_hdcp_component_match ;

__attribute__((used)) static int mei_hdcp_probe(struct mei_cl_device *cldev,
     const struct mei_cl_device_id *id)
{
 struct i915_hdcp_comp_master *comp_master;
 struct component_match *master_match;
 int ret;

 ret = mei_cldev_enable(cldev);
 if (ret < 0) {
  dev_err(&cldev->dev, "mei_cldev_enable Failed. %d\n", ret);
  goto enable_err_exit;
 }

 comp_master = kzalloc(sizeof(*comp_master), GFP_KERNEL);
 if (!comp_master) {
  ret = -ENOMEM;
  goto err_exit;
 }

 master_match = ((void*)0);
 component_match_add_typed(&cldev->dev, &master_match,
      mei_hdcp_component_match, comp_master);
 if (IS_ERR_OR_NULL(master_match)) {
  ret = -ENOMEM;
  goto err_exit;
 }

 mei_cldev_set_drvdata(cldev, comp_master);
 ret = component_master_add_with_match(&cldev->dev,
           &mei_component_master_ops,
           master_match);
 if (ret < 0) {
  dev_err(&cldev->dev, "Master comp add failed %d\n", ret);
  goto err_exit;
 }

 return 0;

err_exit:
 mei_cldev_set_drvdata(cldev, ((void*)0));
 kfree(comp_master);
 mei_cldev_disable(cldev);
enable_err_exit:
 return ret;
}

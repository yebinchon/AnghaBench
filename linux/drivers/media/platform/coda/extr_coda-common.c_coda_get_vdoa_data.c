
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vdoa_data {int dummy; } ;
struct platform_device {int dummy; } ;
struct device_node {int dummy; } ;


 int EPROBE_DEFER ;
 struct vdoa_data* ERR_PTR (int ) ;
 struct device_node* of_find_compatible_node (int *,int *,char*) ;
 struct platform_device* of_find_device_by_node (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 struct vdoa_data* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static struct vdoa_data *coda_get_vdoa_data(void)
{
 struct device_node *vdoa_node;
 struct platform_device *vdoa_pdev;
 struct vdoa_data *vdoa_data = ((void*)0);

 vdoa_node = of_find_compatible_node(((void*)0), ((void*)0), "fsl,imx6q-vdoa");
 if (!vdoa_node)
  return ((void*)0);

 vdoa_pdev = of_find_device_by_node(vdoa_node);
 if (!vdoa_pdev)
  goto out;

 vdoa_data = platform_get_drvdata(vdoa_pdev);
 if (!vdoa_data)
  vdoa_data = ERR_PTR(-EPROBE_DEFER);

out:
 of_node_put(vdoa_node);

 return vdoa_data;
}

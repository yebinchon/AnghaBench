
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct device_node {int dummy; } ;
struct cxl_guest {int dummy; } ;
struct TYPE_4__ {int release; int * parent; } ;
struct cxl {int psl_timebase_synced; TYPE_2__ dev; TYPE_1__* guest; scalar_t__ slices; } ;
struct TYPE_3__ {struct platform_device* pdev; } ;


 int ENOMEM ;
 struct cxl* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int cxl_adapter_context_unlock (struct cxl*) ;
 struct cxl* cxl_alloc_adapter () ;
 int cxl_guest_add_chardev (struct cxl*) ;
 int cxl_guest_remove_chardev (struct cxl*) ;
 int cxl_of_read_adapter_handle (struct cxl*,struct device_node*) ;
 int cxl_of_read_adapter_properties (struct cxl*,struct device_node*) ;
 int cxl_register_adapter (struct cxl*) ;
 int cxl_sysfs_adapter_add (struct cxl*) ;
 int dev_set_drvdata (int *,struct cxl*) ;
 int device_unregister (TYPE_2__*) ;
 int free_adapter (struct cxl*) ;
 TYPE_1__* kzalloc (int,int ) ;
 int properties_look_ok (struct cxl*) ;
 int release_adapter ;

struct cxl *cxl_guest_init_adapter(struct device_node *np, struct platform_device *pdev)
{
 struct cxl *adapter;
 bool free = 1;
 int rc;

 if (!(adapter = cxl_alloc_adapter()))
  return ERR_PTR(-ENOMEM);

 if (!(adapter->guest = kzalloc(sizeof(struct cxl_guest), GFP_KERNEL))) {
  free_adapter(adapter);
  return ERR_PTR(-ENOMEM);
 }

 adapter->slices = 0;
 adapter->guest->pdev = pdev;
 adapter->dev.parent = &pdev->dev;
 adapter->dev.release = release_adapter;
 dev_set_drvdata(&pdev->dev, adapter);





 adapter->psl_timebase_synced = 1;

 if ((rc = cxl_of_read_adapter_handle(adapter, np)))
  goto err1;

 if ((rc = cxl_of_read_adapter_properties(adapter, np)))
  goto err1;

 if ((rc = properties_look_ok(adapter)))
  goto err1;

 if ((rc = cxl_guest_add_chardev(adapter)))
  goto err1;





 if ((rc = cxl_register_adapter(adapter)))
  goto err_put1;

 if ((rc = cxl_sysfs_adapter_add(adapter)))
  goto err_put1;


 cxl_adapter_context_unlock(adapter);

 return adapter;

err_put1:
 device_unregister(&adapter->dev);
 free = 0;
 cxl_guest_remove_chardev(adapter);
err1:
 if (free)
  free_adapter(adapter);
 return ERR_PTR(rc);
}

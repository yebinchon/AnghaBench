
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct cxl {struct cxl* native; } ;


 int cxl_remove_adapter_nr (struct cxl*) ;
 int kfree (struct cxl*) ;
 int pr_devel (char*) ;
 struct cxl* to_cxl_adapter (struct device*) ;

__attribute__((used)) static void cxl_release_adapter(struct device *dev)
{
 struct cxl *adapter = to_cxl_adapter(dev);

 pr_devel("cxl_release_adapter\n");

 cxl_remove_adapter_nr(adapter);

 kfree(adapter->native);
 kfree(adapter);
}

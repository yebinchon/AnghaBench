
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_node {int dummy; } ;
struct cxl {TYPE_1__* guest; } ;
struct TYPE_2__ {int handle; } ;


 int EINVAL ;
 int pr_devel (char*,int ) ;
 scalar_t__ read_handle (struct device_node*,int *) ;

int cxl_of_read_adapter_handle(struct cxl *adapter, struct device_node *np)
{
 if (read_handle(np, &adapter->guest->handle))
  return -EINVAL;
 pr_devel("Adapter handle: 0x%.16llx\n", adapter->guest->handle);

 return 0;
}

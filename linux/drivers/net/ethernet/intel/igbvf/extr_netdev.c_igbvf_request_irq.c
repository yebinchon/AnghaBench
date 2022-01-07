
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct igbvf_adapter {TYPE_1__* pdev; scalar_t__ msix_entries; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*,int) ;
 int igbvf_request_msix (struct igbvf_adapter*) ;

__attribute__((used)) static int igbvf_request_irq(struct igbvf_adapter *adapter)
{
 int err = -1;


 if (adapter->msix_entries)
  err = igbvf_request_msix(adapter);

 if (!err)
  return err;

 dev_err(&adapter->pdev->dev,
  "Unable to allocate interrupt, Error: %d\n", err);

 return err;
}

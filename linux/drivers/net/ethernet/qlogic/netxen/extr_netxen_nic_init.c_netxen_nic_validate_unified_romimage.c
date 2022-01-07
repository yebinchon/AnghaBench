
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netxen_adapter {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int dev_err (int *,char*) ;
 scalar_t__ netxen_nic_validate_bootld (struct netxen_adapter*) ;
 scalar_t__ netxen_nic_validate_fw (struct netxen_adapter*) ;
 scalar_t__ netxen_nic_validate_header (struct netxen_adapter*) ;
 scalar_t__ netxen_nic_validate_product_offs (struct netxen_adapter*) ;

__attribute__((used)) static int
netxen_nic_validate_unified_romimage(struct netxen_adapter *adapter)
{
 if (netxen_nic_validate_header(adapter)) {
  dev_err(&adapter->pdev->dev,
    "unified image: header validation failed\n");
  return -EINVAL;
 }

 if (netxen_nic_validate_product_offs(adapter)) {
  dev_err(&adapter->pdev->dev,
    "unified image: product validation failed\n");
  return -EINVAL;
 }

 if (netxen_nic_validate_bootld(adapter)) {
  dev_err(&adapter->pdev->dev,
    "unified image: bootld validation failed\n");
  return -EINVAL;
 }

 if (netxen_nic_validate_fw(adapter)) {
  dev_err(&adapter->pdev->dev,
    "unified image: firmware validation failed\n");
  return -EINVAL;
 }

 return 0;
}

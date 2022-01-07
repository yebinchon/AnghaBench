
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlcnic_adapter {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int dev_err (int *,char*) ;
 scalar_t__ qlcnic_validate_bootld (struct qlcnic_adapter*) ;
 scalar_t__ qlcnic_validate_fw (struct qlcnic_adapter*) ;
 scalar_t__ qlcnic_validate_header (struct qlcnic_adapter*) ;
 scalar_t__ qlcnic_validate_product_offs (struct qlcnic_adapter*) ;

__attribute__((used)) static int
qlcnic_validate_unified_romimage(struct qlcnic_adapter *adapter)
{
 if (qlcnic_validate_header(adapter)) {
  dev_err(&adapter->pdev->dev,
    "unified image: header validation failed\n");
  return -EINVAL;
 }

 if (qlcnic_validate_product_offs(adapter)) {
  dev_err(&adapter->pdev->dev,
    "unified image: product validation failed\n");
  return -EINVAL;
 }

 if (qlcnic_validate_bootld(adapter)) {
  dev_err(&adapter->pdev->dev,
    "unified image: bootld validation failed\n");
  return -EINVAL;
 }

 if (qlcnic_validate_fw(adapter)) {
  dev_err(&adapter->pdev->dev,
    "unified image: firmware validation failed\n");
  return -EINVAL;
 }

 return 0;
}

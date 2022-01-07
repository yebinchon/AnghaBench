
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct be_adapter {scalar_t__ pcicfg; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ SLIPORT_SOFTRESET_OFFSET ;
 int SLIPORT_SOFTRESET_SR_MASK ;
 int dev_info (int *,char*) ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static void be_soft_reset(struct be_adapter *adapter)
{
 u32 val;

 dev_info(&adapter->pdev->dev, "Initiating chip soft reset\n");
 val = ioread32(adapter->pcicfg + SLIPORT_SOFTRESET_OFFSET);
 val |= SLIPORT_SOFTRESET_SR_MASK;
 iowrite32(val, adapter->pcicfg + SLIPORT_SOFTRESET_OFFSET);
}

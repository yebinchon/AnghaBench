
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct venus_hfi_device {TYPE_1__* core; } ;
struct TYPE_2__ {scalar_t__ base; } ;


 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static u32 venus_readl(struct venus_hfi_device *hdev, u32 reg)
{
 return readl(hdev->core->base + reg);
}

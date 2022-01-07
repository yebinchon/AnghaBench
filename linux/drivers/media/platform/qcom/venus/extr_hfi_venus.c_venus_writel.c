
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct venus_hfi_device {TYPE_1__* core; } ;
struct TYPE_2__ {scalar_t__ base; } ;


 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static void venus_writel(struct venus_hfi_device *hdev, u32 reg, u32 value)
{
 writel(value, hdev->core->base + reg);
}

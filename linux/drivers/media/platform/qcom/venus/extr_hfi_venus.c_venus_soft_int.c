
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venus_hfi_device {int dummy; } ;


 int BIT (int ) ;
 int CPU_IC_SOFTINT ;
 int CPU_IC_SOFTINT_H2A_SHIFT ;
 int venus_writel (struct venus_hfi_device*,int ,int ) ;

__attribute__((used)) static void venus_soft_int(struct venus_hfi_device *hdev)
{
 venus_writel(hdev, CPU_IC_SOFTINT, BIT(CPU_IC_SOFTINT_H2A_SHIFT));
}

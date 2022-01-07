; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccp2.c_ccp2_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccp2.c_ccp2_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_ccp2_device = type { i32 }
%struct.isp_device = type { i32 }

@OMAP3_ISP_IOMEM_CCP2 = common dso_local global i32 0, align 4
@ISPCCP2_SYSCONFIG = common dso_local global i32 0, align 4
@ISPCCP2_SYSCONFIG_SOFT_RESET = common dso_local global i32 0, align 4
@ISPCCP2_SYSSTATUS = common dso_local global i32 0, align 4
@ISPCCP2_SYSSTATUS_RESET_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"omap3_isp: timeout waiting for ccp2 reset\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_ccp2_device*)* @ccp2_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccp2_reset(%struct.isp_ccp2_device* %0) #0 {
  %2 = alloca %struct.isp_ccp2_device*, align 8
  %3 = alloca %struct.isp_device*, align 8
  %4 = alloca i32, align 4
  store %struct.isp_ccp2_device* %0, %struct.isp_ccp2_device** %2, align 8
  %5 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %2, align 8
  %6 = call %struct.isp_device* @to_isp_device(%struct.isp_ccp2_device* %5)
  store %struct.isp_device* %6, %struct.isp_device** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %8 = load i32, i32* @OMAP3_ISP_IOMEM_CCP2, align 4
  %9 = load i32, i32* @ISPCCP2_SYSCONFIG, align 4
  %10 = load i32, i32* @ISPCCP2_SYSCONFIG_SOFT_RESET, align 4
  %11 = call i32 @isp_reg_set(%struct.isp_device* %7, i32 %8, i32 %9, i32 %10)
  br label %12

12:                                               ; preds = %31, %1
  %13 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %14 = load i32, i32* @OMAP3_ISP_IOMEM_CCP2, align 4
  %15 = load i32, i32* @ISPCCP2_SYSSTATUS, align 4
  %16 = call i32 @isp_reg_readl(%struct.isp_device* %13, i32 %14, i32 %15)
  %17 = load i32, i32* @ISPCCP2_SYSSTATUS_RESET_DONE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br i1 %20, label %21, label %32

21:                                               ; preds = %12
  %22 = call i32 @udelay(i32 10)
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4
  %25 = icmp sgt i32 %23, 10
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %28 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_warn(i32 %29, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %32

31:                                               ; preds = %21
  br label %12

32:                                               ; preds = %26, %12
  ret void
}

declare dso_local %struct.isp_device* @to_isp_device(%struct.isp_ccp2_device*) #1

declare dso_local i32 @isp_reg_set(%struct.isp_device*, i32, i32, i32) #1

declare dso_local i32 @isp_reg_readl(%struct.isp_device*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

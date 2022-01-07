; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccp2.c_ccp2_pwr_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccp2.c_ccp2_pwr_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_ccp2_device = type { i32 }
%struct.isp_device = type { i64, i64 }

@ISPCCP2_SYSCONFIG_MSTANDBY_MODE_SMART = common dso_local global i32 0, align 4
@ISP_REVISION_15_0 = common dso_local global i64 0, align 8
@ISPCCP2_SYSCONFIG_AUTO_IDLE = common dso_local global i32 0, align 4
@OMAP3_ISP_IOMEM_CCP2 = common dso_local global i32 0, align 4
@ISPCCP2_SYSCONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_ccp2_device*)* @ccp2_pwr_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccp2_pwr_cfg(%struct.isp_ccp2_device* %0) #0 {
  %2 = alloca %struct.isp_ccp2_device*, align 8
  %3 = alloca %struct.isp_device*, align 8
  store %struct.isp_ccp2_device* %0, %struct.isp_ccp2_device** %2, align 8
  %4 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %2, align 8
  %5 = call %struct.isp_device* @to_isp_device(%struct.isp_ccp2_device* %4)
  store %struct.isp_device* %5, %struct.isp_device** %3, align 8
  %6 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %7 = load i32, i32* @ISPCCP2_SYSCONFIG_MSTANDBY_MODE_SMART, align 4
  %8 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %9 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @ISP_REVISION_15_0, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %15 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* @ISPCCP2_SYSCONFIG_AUTO_IDLE, align 4
  br label %21

20:                                               ; preds = %13, %1
  br label %21

21:                                               ; preds = %20, %18
  %22 = phi i32 [ %19, %18 ], [ 0, %20 ]
  %23 = or i32 %7, %22
  %24 = load i32, i32* @OMAP3_ISP_IOMEM_CCP2, align 4
  %25 = load i32, i32* @ISPCCP2_SYSCONFIG, align 4
  %26 = call i32 @isp_reg_writel(%struct.isp_device* %6, i32 %23, i32 %24, i32 %25)
  ret void
}

declare dso_local %struct.isp_device* @to_isp_device(%struct.isp_ccp2_device*) #1

declare dso_local i32 @isp_reg_writel(%struct.isp_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

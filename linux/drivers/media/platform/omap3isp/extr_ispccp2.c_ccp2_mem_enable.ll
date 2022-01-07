; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccp2.c_ccp2_mem_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccp2.c_ccp2_mem_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_ccp2_device = type { i32 }
%struct.isp_device = type { i32 }

@OMAP3_ISP_IOMEM_CCP2 = common dso_local global i32 0, align 4
@ISPCCP2_CTRL = common dso_local global i32 0, align 4
@ISPCCP2_CTRL_MODE = common dso_local global i32 0, align 4
@ISPCCP2_LCM_CTRL = common dso_local global i32 0, align 4
@ISPCCP2_LCM_CTRL_CHAN_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_ccp2_device*, i64)* @ccp2_mem_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccp2_mem_enable(%struct.isp_ccp2_device* %0, i64 %1) #0 {
  %3 = alloca %struct.isp_ccp2_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.isp_device*, align 8
  store %struct.isp_ccp2_device* %0, %struct.isp_ccp2_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %3, align 8
  %7 = call %struct.isp_device* @to_isp_device(%struct.isp_ccp2_device* %6)
  store %struct.isp_device* %7, %struct.isp_device** %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %3, align 8
  %12 = call i32 @ccp2_if_enable(%struct.isp_ccp2_device* %11, i32 0)
  br label %13

13:                                               ; preds = %10, %2
  %14 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %15 = load i32, i32* @OMAP3_ISP_IOMEM_CCP2, align 4
  %16 = load i32, i32* @ISPCCP2_CTRL, align 4
  %17 = load i32, i32* @ISPCCP2_CTRL_MODE, align 4
  %18 = load i64, i64* %4, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i32, i32* @ISPCCP2_CTRL_MODE, align 4
  br label %23

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %22, %20
  %24 = phi i32 [ %21, %20 ], [ 0, %22 ]
  %25 = call i32 @isp_reg_clr_set(%struct.isp_device* %14, i32 %15, i32 %16, i32 %17, i32 %24)
  %26 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %27 = load i32, i32* @OMAP3_ISP_IOMEM_CCP2, align 4
  %28 = load i32, i32* @ISPCCP2_LCM_CTRL, align 4
  %29 = load i32, i32* @ISPCCP2_LCM_CTRL_CHAN_EN, align 4
  %30 = load i64, i64* %4, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = load i32, i32* @ISPCCP2_LCM_CTRL_CHAN_EN, align 4
  br label %35

34:                                               ; preds = %23
  br label %35

35:                                               ; preds = %34, %32
  %36 = phi i32 [ %33, %32 ], [ 0, %34 ]
  %37 = call i32 @isp_reg_clr_set(%struct.isp_device* %26, i32 %27, i32 %28, i32 %29, i32 %36)
  ret void
}

declare dso_local %struct.isp_device* @to_isp_device(%struct.isp_ccp2_device*) #1

declare dso_local i32 @ccp2_if_enable(%struct.isp_ccp2_device*, i32) #1

declare dso_local i32 @isp_reg_clr_set(%struct.isp_device*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

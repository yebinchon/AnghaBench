; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isppreview.c_preview_config_hmed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isppreview.c_preview_config_hmed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_prev_device = type { i32 }
%struct.prev_params = type { %struct.omap3isp_prev_hmed }
%struct.omap3isp_prev_hmed = type { i32, i32, i32 }
%struct.isp_device = type { i32 }

@ISPPRV_HMED_ODDDIST = common dso_local global i32 0, align 4
@ISPPRV_HMED_EVENDIST = common dso_local global i32 0, align 4
@ISPPRV_HMED_THRESHOLD_SHIFT = common dso_local global i32 0, align 4
@OMAP3_ISP_IOMEM_PREV = common dso_local global i32 0, align 4
@ISPPRV_HMED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_prev_device*, %struct.prev_params*)* @preview_config_hmed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @preview_config_hmed(%struct.isp_prev_device* %0, %struct.prev_params* %1) #0 {
  %3 = alloca %struct.isp_prev_device*, align 8
  %4 = alloca %struct.prev_params*, align 8
  %5 = alloca %struct.isp_device*, align 8
  %6 = alloca %struct.omap3isp_prev_hmed*, align 8
  store %struct.isp_prev_device* %0, %struct.isp_prev_device** %3, align 8
  store %struct.prev_params* %1, %struct.prev_params** %4, align 8
  %7 = load %struct.isp_prev_device*, %struct.isp_prev_device** %3, align 8
  %8 = call %struct.isp_device* @to_isp_device(%struct.isp_prev_device* %7)
  store %struct.isp_device* %8, %struct.isp_device** %5, align 8
  %9 = load %struct.prev_params*, %struct.prev_params** %4, align 8
  %10 = getelementptr inbounds %struct.prev_params, %struct.prev_params* %9, i32 0, i32 0
  store %struct.omap3isp_prev_hmed* %10, %struct.omap3isp_prev_hmed** %6, align 8
  %11 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %12 = load %struct.omap3isp_prev_hmed*, %struct.omap3isp_prev_hmed** %6, align 8
  %13 = getelementptr inbounds %struct.omap3isp_prev_hmed, %struct.omap3isp_prev_hmed* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @ISPPRV_HMED_ODDDIST, align 4
  br label %19

19:                                               ; preds = %17, %16
  %20 = phi i32 [ 0, %16 ], [ %18, %17 ]
  %21 = load %struct.omap3isp_prev_hmed*, %struct.omap3isp_prev_hmed** %6, align 8
  %22 = getelementptr inbounds %struct.omap3isp_prev_hmed, %struct.omap3isp_prev_hmed* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %28

26:                                               ; preds = %19
  %27 = load i32, i32* @ISPPRV_HMED_EVENDIST, align 4
  br label %28

28:                                               ; preds = %26, %25
  %29 = phi i32 [ 0, %25 ], [ %27, %26 ]
  %30 = or i32 %20, %29
  %31 = load %struct.omap3isp_prev_hmed*, %struct.omap3isp_prev_hmed** %6, align 8
  %32 = getelementptr inbounds %struct.omap3isp_prev_hmed, %struct.omap3isp_prev_hmed* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @ISPPRV_HMED_THRESHOLD_SHIFT, align 4
  %35 = shl i32 %33, %34
  %36 = or i32 %30, %35
  %37 = load i32, i32* @OMAP3_ISP_IOMEM_PREV, align 4
  %38 = load i32, i32* @ISPPRV_HMED, align 4
  %39 = call i32 @isp_reg_writel(%struct.isp_device* %11, i32 %36, i32 %37, i32 %38)
  ret void
}

declare dso_local %struct.isp_device* @to_isp_device(%struct.isp_prev_device*) #1

declare dso_local i32 @isp_reg_writel(%struct.isp_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isppreview.c_preview_config_dcor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isppreview.c_preview_config_dcor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_prev_device = type { i32 }
%struct.prev_params = type { %struct.omap3isp_prev_dcor }
%struct.omap3isp_prev_dcor = type { i64, i32* }
%struct.isp_device = type { i32 }

@OMAP3_ISP_IOMEM_PREV = common dso_local global i32 0, align 4
@ISPPRV_CDC_THR0 = common dso_local global i32 0, align 4
@ISPPRV_CDC_THR1 = common dso_local global i32 0, align 4
@ISPPRV_CDC_THR2 = common dso_local global i32 0, align 4
@ISPPRV_CDC_THR3 = common dso_local global i32 0, align 4
@ISPPRV_PCR = common dso_local global i32 0, align 4
@ISPPRV_PCR_DCCOUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_prev_device*, %struct.prev_params*)* @preview_config_dcor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @preview_config_dcor(%struct.isp_prev_device* %0, %struct.prev_params* %1) #0 {
  %3 = alloca %struct.isp_prev_device*, align 8
  %4 = alloca %struct.prev_params*, align 8
  %5 = alloca %struct.isp_device*, align 8
  %6 = alloca %struct.omap3isp_prev_dcor*, align 8
  store %struct.isp_prev_device* %0, %struct.isp_prev_device** %3, align 8
  store %struct.prev_params* %1, %struct.prev_params** %4, align 8
  %7 = load %struct.isp_prev_device*, %struct.isp_prev_device** %3, align 8
  %8 = call %struct.isp_device* @to_isp_device(%struct.isp_prev_device* %7)
  store %struct.isp_device* %8, %struct.isp_device** %5, align 8
  %9 = load %struct.prev_params*, %struct.prev_params** %4, align 8
  %10 = getelementptr inbounds %struct.prev_params, %struct.prev_params* %9, i32 0, i32 0
  store %struct.omap3isp_prev_dcor* %10, %struct.omap3isp_prev_dcor** %6, align 8
  %11 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %12 = load %struct.omap3isp_prev_dcor*, %struct.omap3isp_prev_dcor** %6, align 8
  %13 = getelementptr inbounds %struct.omap3isp_prev_dcor, %struct.omap3isp_prev_dcor* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @OMAP3_ISP_IOMEM_PREV, align 4
  %18 = load i32, i32* @ISPPRV_CDC_THR0, align 4
  %19 = call i32 @isp_reg_writel(%struct.isp_device* %11, i32 %16, i32 %17, i32 %18)
  %20 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %21 = load %struct.omap3isp_prev_dcor*, %struct.omap3isp_prev_dcor** %6, align 8
  %22 = getelementptr inbounds %struct.omap3isp_prev_dcor, %struct.omap3isp_prev_dcor* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @OMAP3_ISP_IOMEM_PREV, align 4
  %27 = load i32, i32* @ISPPRV_CDC_THR1, align 4
  %28 = call i32 @isp_reg_writel(%struct.isp_device* %20, i32 %25, i32 %26, i32 %27)
  %29 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %30 = load %struct.omap3isp_prev_dcor*, %struct.omap3isp_prev_dcor** %6, align 8
  %31 = getelementptr inbounds %struct.omap3isp_prev_dcor, %struct.omap3isp_prev_dcor* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @OMAP3_ISP_IOMEM_PREV, align 4
  %36 = load i32, i32* @ISPPRV_CDC_THR2, align 4
  %37 = call i32 @isp_reg_writel(%struct.isp_device* %29, i32 %34, i32 %35, i32 %36)
  %38 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %39 = load %struct.omap3isp_prev_dcor*, %struct.omap3isp_prev_dcor** %6, align 8
  %40 = getelementptr inbounds %struct.omap3isp_prev_dcor, %struct.omap3isp_prev_dcor* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 3
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @OMAP3_ISP_IOMEM_PREV, align 4
  %45 = load i32, i32* @ISPPRV_CDC_THR3, align 4
  %46 = call i32 @isp_reg_writel(%struct.isp_device* %38, i32 %43, i32 %44, i32 %45)
  %47 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %48 = load i32, i32* @OMAP3_ISP_IOMEM_PREV, align 4
  %49 = load i32, i32* @ISPPRV_PCR, align 4
  %50 = load i32, i32* @ISPPRV_PCR_DCCOUP, align 4
  %51 = load %struct.omap3isp_prev_dcor*, %struct.omap3isp_prev_dcor** %6, align 8
  %52 = getelementptr inbounds %struct.omap3isp_prev_dcor, %struct.omap3isp_prev_dcor* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %2
  %56 = load i32, i32* @ISPPRV_PCR_DCCOUP, align 4
  br label %58

57:                                               ; preds = %2
  br label %58

58:                                               ; preds = %57, %55
  %59 = phi i32 [ %56, %55 ], [ 0, %57 ]
  %60 = call i32 @isp_reg_clr_set(%struct.isp_device* %47, i32 %48, i32 %49, i32 %50, i32 %59)
  ret void
}

declare dso_local %struct.isp_device* @to_isp_device(%struct.isp_prev_device*) #1

declare dso_local i32 @isp_reg_writel(%struct.isp_device*, i32, i32, i32) #1

declare dso_local i32 @isp_reg_clr_set(%struct.isp_device*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

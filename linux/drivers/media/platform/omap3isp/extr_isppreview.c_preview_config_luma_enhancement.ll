; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isppreview.c_preview_config_luma_enhancement.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isppreview.c_preview_config_luma_enhancement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_prev_device = type { i32 }
%struct.prev_params = type { %struct.omap3isp_prev_luma }
%struct.omap3isp_prev_luma = type { i32* }
%struct.isp_device = type { i32 }

@ISPPRV_YENH_TABLE_ADDR = common dso_local global i32 0, align 4
@OMAP3_ISP_IOMEM_PREV = common dso_local global i32 0, align 4
@ISPPRV_SET_TBL_ADDR = common dso_local global i32 0, align 4
@OMAP3ISP_PREV_YENH_TBL_SIZE = common dso_local global i32 0, align 4
@ISPPRV_SET_TBL_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_prev_device*, %struct.prev_params*)* @preview_config_luma_enhancement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @preview_config_luma_enhancement(%struct.isp_prev_device* %0, %struct.prev_params* %1) #0 {
  %3 = alloca %struct.isp_prev_device*, align 8
  %4 = alloca %struct.prev_params*, align 8
  %5 = alloca %struct.isp_device*, align 8
  %6 = alloca %struct.omap3isp_prev_luma*, align 8
  %7 = alloca i32, align 4
  store %struct.isp_prev_device* %0, %struct.isp_prev_device** %3, align 8
  store %struct.prev_params* %1, %struct.prev_params** %4, align 8
  %8 = load %struct.isp_prev_device*, %struct.isp_prev_device** %3, align 8
  %9 = call %struct.isp_device* @to_isp_device(%struct.isp_prev_device* %8)
  store %struct.isp_device* %9, %struct.isp_device** %5, align 8
  %10 = load %struct.prev_params*, %struct.prev_params** %4, align 8
  %11 = getelementptr inbounds %struct.prev_params, %struct.prev_params* %10, i32 0, i32 0
  store %struct.omap3isp_prev_luma* %11, %struct.omap3isp_prev_luma** %6, align 8
  %12 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %13 = load i32, i32* @ISPPRV_YENH_TABLE_ADDR, align 4
  %14 = load i32, i32* @OMAP3_ISP_IOMEM_PREV, align 4
  %15 = load i32, i32* @ISPPRV_SET_TBL_ADDR, align 4
  %16 = call i32 @isp_reg_writel(%struct.isp_device* %12, i32 %13, i32 %14, i32 %15)
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %33, %2
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @OMAP3ISP_PREV_YENH_TBL_SIZE, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %17
  %22 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %23 = load %struct.omap3isp_prev_luma*, %struct.omap3isp_prev_luma** %6, align 8
  %24 = getelementptr inbounds %struct.omap3isp_prev_luma, %struct.omap3isp_prev_luma* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @OMAP3_ISP_IOMEM_PREV, align 4
  %31 = load i32, i32* @ISPPRV_SET_TBL_DATA, align 4
  %32 = call i32 @isp_reg_writel(%struct.isp_device* %22, i32 %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %21
  %34 = load i32, i32* %7, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %17

36:                                               ; preds = %17
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

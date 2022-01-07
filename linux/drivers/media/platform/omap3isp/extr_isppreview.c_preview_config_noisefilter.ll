; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isppreview.c_preview_config_noisefilter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isppreview.c_preview_config_noisefilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_prev_device = type { i32 }
%struct.prev_params = type { %struct.omap3isp_prev_nf }
%struct.omap3isp_prev_nf = type { i32*, i32 }
%struct.isp_device = type { i32 }

@OMAP3_ISP_IOMEM_PREV = common dso_local global i32 0, align 4
@ISPPRV_NF = common dso_local global i32 0, align 4
@ISPPRV_NF_TABLE_ADDR = common dso_local global i32 0, align 4
@ISPPRV_SET_TBL_ADDR = common dso_local global i32 0, align 4
@OMAP3ISP_PREV_NF_TBL_SIZE = common dso_local global i32 0, align 4
@ISPPRV_SET_TBL_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_prev_device*, %struct.prev_params*)* @preview_config_noisefilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @preview_config_noisefilter(%struct.isp_prev_device* %0, %struct.prev_params* %1) #0 {
  %3 = alloca %struct.isp_prev_device*, align 8
  %4 = alloca %struct.prev_params*, align 8
  %5 = alloca %struct.isp_device*, align 8
  %6 = alloca %struct.omap3isp_prev_nf*, align 8
  %7 = alloca i32, align 4
  store %struct.isp_prev_device* %0, %struct.isp_prev_device** %3, align 8
  store %struct.prev_params* %1, %struct.prev_params** %4, align 8
  %8 = load %struct.isp_prev_device*, %struct.isp_prev_device** %3, align 8
  %9 = call %struct.isp_device* @to_isp_device(%struct.isp_prev_device* %8)
  store %struct.isp_device* %9, %struct.isp_device** %5, align 8
  %10 = load %struct.prev_params*, %struct.prev_params** %4, align 8
  %11 = getelementptr inbounds %struct.prev_params, %struct.prev_params* %10, i32 0, i32 0
  store %struct.omap3isp_prev_nf* %11, %struct.omap3isp_prev_nf** %6, align 8
  %12 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %13 = load %struct.omap3isp_prev_nf*, %struct.omap3isp_prev_nf** %6, align 8
  %14 = getelementptr inbounds %struct.omap3isp_prev_nf, %struct.omap3isp_prev_nf* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @OMAP3_ISP_IOMEM_PREV, align 4
  %17 = load i32, i32* @ISPPRV_NF, align 4
  %18 = call i32 @isp_reg_writel(%struct.isp_device* %12, i32 %15, i32 %16, i32 %17)
  %19 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %20 = load i32, i32* @ISPPRV_NF_TABLE_ADDR, align 4
  %21 = load i32, i32* @OMAP3_ISP_IOMEM_PREV, align 4
  %22 = load i32, i32* @ISPPRV_SET_TBL_ADDR, align 4
  %23 = call i32 @isp_reg_writel(%struct.isp_device* %19, i32 %20, i32 %21, i32 %22)
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %40, %2
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @OMAP3ISP_PREV_NF_TBL_SIZE, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %24
  %29 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %30 = load %struct.omap3isp_prev_nf*, %struct.omap3isp_prev_nf** %6, align 8
  %31 = getelementptr inbounds %struct.omap3isp_prev_nf, %struct.omap3isp_prev_nf* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @OMAP3_ISP_IOMEM_PREV, align 4
  %38 = load i32, i32* @ISPPRV_SET_TBL_DATA, align 4
  %39 = call i32 @isp_reg_writel(%struct.isp_device* %29, i32 %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %28
  %41 = load i32, i32* %7, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %24

43:                                               ; preds = %24
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

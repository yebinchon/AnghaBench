; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_ccdc_configure_clamp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_ccdc_configure_clamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_ccdc_device = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.isp_device = type { i32 }

@ISPCCDC_CLAMP_OBGAIN_SHIFT = common dso_local global i32 0, align 4
@ISPCCDC_CLAMP_OBSLEN_SHIFT = common dso_local global i32 0, align 4
@ISPCCDC_CLAMP_OBSLN_SHIFT = common dso_local global i32 0, align 4
@ISPCCDC_CLAMP_OBST_SHIFT = common dso_local global i32 0, align 4
@OMAP3_ISP_IOMEM_CCDC = common dso_local global i32 0, align 4
@ISPCCDC_CLAMP = common dso_local global i32 0, align 4
@ISPCCDC_DCSUB = common dso_local global i32 0, align 4
@ISPCCDC_CLAMP_CLAMPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_ccdc_device*)* @ccdc_configure_clamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccdc_configure_clamp(%struct.isp_ccdc_device* %0) #0 {
  %2 = alloca %struct.isp_ccdc_device*, align 8
  %3 = alloca %struct.isp_device*, align 8
  %4 = alloca i32, align 4
  store %struct.isp_ccdc_device* %0, %struct.isp_ccdc_device** %2, align 8
  %5 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %6 = call %struct.isp_device* @to_isp_device(%struct.isp_ccdc_device* %5)
  store %struct.isp_device* %6, %struct.isp_device** %3, align 8
  %7 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %8 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %47

11:                                               ; preds = %1
  %12 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %13 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @ISPCCDC_CLAMP_OBGAIN_SHIFT, align 4
  %17 = shl i32 %15, %16
  store i32 %17, i32* %4, align 4
  %18 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %19 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ISPCCDC_CLAMP_OBSLEN_SHIFT, align 4
  %23 = shl i32 %21, %22
  %24 = load i32, i32* %4, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %4, align 4
  %26 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %27 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @ISPCCDC_CLAMP_OBSLN_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = load i32, i32* %4, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %4, align 4
  %34 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %35 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @ISPCCDC_CLAMP_OBST_SHIFT, align 4
  %39 = shl i32 %37, %38
  %40 = load i32, i32* %4, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %4, align 4
  %42 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @OMAP3_ISP_IOMEM_CCDC, align 4
  %45 = load i32, i32* @ISPCCDC_CLAMP, align 4
  %46 = call i32 @isp_reg_writel(%struct.isp_device* %42, i32 %43, i32 %44, i32 %45)
  br label %56

47:                                               ; preds = %1
  %48 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %49 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %50 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @OMAP3_ISP_IOMEM_CCDC, align 4
  %54 = load i32, i32* @ISPCCDC_DCSUB, align 4
  %55 = call i32 @isp_reg_writel(%struct.isp_device* %48, i32 %52, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %47, %11
  %57 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %58 = load i32, i32* @OMAP3_ISP_IOMEM_CCDC, align 4
  %59 = load i32, i32* @ISPCCDC_CLAMP, align 4
  %60 = load i32, i32* @ISPCCDC_CLAMP_CLAMPEN, align 4
  %61 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %62 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %56
  %66 = load i32, i32* @ISPCCDC_CLAMP_CLAMPEN, align 4
  br label %68

67:                                               ; preds = %56
  br label %68

68:                                               ; preds = %67, %65
  %69 = phi i32 [ %66, %65 ], [ 0, %67 ]
  %70 = call i32 @isp_reg_clr_set(%struct.isp_device* %57, i32 %58, i32 %59, i32 %60, i32 %69)
  ret void
}

declare dso_local %struct.isp_device* @to_isp_device(%struct.isp_ccdc_device*) #1

declare dso_local i32 @isp_reg_writel(%struct.isp_device*, i32, i32, i32) #1

declare dso_local i32 @isp_reg_clr_set(%struct.isp_device*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

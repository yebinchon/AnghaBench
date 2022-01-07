; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_ccdc_config_outlineoffset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_ccdc_config_outlineoffset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_ccdc_device = type { i32 }
%struct.isp_device = type { i32 }

@OMAP3_ISP_IOMEM_CCDC = common dso_local global i32 0, align 4
@ISPCCDC_HSIZE_OFF = common dso_local global i32 0, align 4
@ISPCCDC_SDOFST_LOFST0_SHIFT = common dso_local global i32 0, align 4
@ISPCCDC_SDOFST_LOFST1_SHIFT = common dso_local global i32 0, align 4
@ISPCCDC_SDOFST_LOFST2_SHIFT = common dso_local global i32 0, align 4
@ISPCCDC_SDOFST_LOFST3_SHIFT = common dso_local global i32 0, align 4
@ISPCCDC_SDOFST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_ccdc_device*, i32, i32)* @ccdc_config_outlineoffset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccdc_config_outlineoffset(%struct.isp_ccdc_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.isp_ccdc_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.isp_device*, align 8
  %8 = alloca i32, align 4
  store %struct.isp_ccdc_device* %0, %struct.isp_ccdc_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %4, align 8
  %10 = call %struct.isp_device* @to_isp_device(%struct.isp_ccdc_device* %9)
  store %struct.isp_device* %10, %struct.isp_device** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.isp_device*, %struct.isp_device** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, 65535
  %14 = load i32, i32* @OMAP3_ISP_IOMEM_CCDC, align 4
  %15 = load i32, i32* @ISPCCDC_HSIZE_OFF, align 4
  %16 = call i32 @isp_reg_writel(%struct.isp_device* %11, i32 %13, i32 %14, i32 %15)
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %32 [
    i32 128, label %18
    i32 129, label %18
  ]

18:                                               ; preds = %3, %3
  %19 = load i32, i32* @ISPCCDC_SDOFST_LOFST0_SHIFT, align 4
  %20 = shl i32 1, %19
  %21 = load i32, i32* @ISPCCDC_SDOFST_LOFST1_SHIFT, align 4
  %22 = shl i32 1, %21
  %23 = or i32 %20, %22
  %24 = load i32, i32* @ISPCCDC_SDOFST_LOFST2_SHIFT, align 4
  %25 = shl i32 1, %24
  %26 = or i32 %23, %25
  %27 = load i32, i32* @ISPCCDC_SDOFST_LOFST3_SHIFT, align 4
  %28 = shl i32 1, %27
  %29 = or i32 %26, %28
  %30 = load i32, i32* %8, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %8, align 4
  br label %33

32:                                               ; preds = %3
  br label %33

33:                                               ; preds = %32, %18
  %34 = load %struct.isp_device*, %struct.isp_device** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @OMAP3_ISP_IOMEM_CCDC, align 4
  %37 = load i32, i32* @ISPCCDC_SDOFST, align 4
  %38 = call i32 @isp_reg_writel(%struct.isp_device* %34, i32 %35, i32 %36, i32 %37)
  ret void
}

declare dso_local %struct.isp_device* @to_isp_device(%struct.isp_ccdc_device*) #1

declare dso_local i32 @isp_reg_writel(%struct.isp_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_ccdc_configure_black_comp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_ccdc_configure_black_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_ccdc_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.isp_device = type { i32 }

@ISPCCDC_BLKCMP_B_MG_SHIFT = common dso_local global i32 0, align 4
@ISPCCDC_BLKCMP_GB_G_SHIFT = common dso_local global i32 0, align 4
@ISPCCDC_BLKCMP_GR_CY_SHIFT = common dso_local global i32 0, align 4
@ISPCCDC_BLKCMP_R_YE_SHIFT = common dso_local global i32 0, align 4
@OMAP3_ISP_IOMEM_CCDC = common dso_local global i32 0, align 4
@ISPCCDC_BLKCMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_ccdc_device*)* @ccdc_configure_black_comp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccdc_configure_black_comp(%struct.isp_ccdc_device* %0) #0 {
  %2 = alloca %struct.isp_ccdc_device*, align 8
  %3 = alloca %struct.isp_device*, align 8
  %4 = alloca i32, align 4
  store %struct.isp_ccdc_device* %0, %struct.isp_ccdc_device** %2, align 8
  %5 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %6 = call %struct.isp_device* @to_isp_device(%struct.isp_ccdc_device* %5)
  store %struct.isp_device* %6, %struct.isp_device** %3, align 8
  %7 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %8 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @ISPCCDC_BLKCMP_B_MG_SHIFT, align 4
  %12 = shl i32 %10, %11
  store i32 %12, i32* %4, align 4
  %13 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %14 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ISPCCDC_BLKCMP_GB_G_SHIFT, align 4
  %18 = shl i32 %16, %17
  %19 = load i32, i32* %4, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %4, align 4
  %21 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %22 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ISPCCDC_BLKCMP_GR_CY_SHIFT, align 4
  %26 = shl i32 %24, %25
  %27 = load i32, i32* %4, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %4, align 4
  %29 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %30 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @ISPCCDC_BLKCMP_R_YE_SHIFT, align 4
  %34 = shl i32 %32, %33
  %35 = load i32, i32* %4, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %4, align 4
  %37 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @OMAP3_ISP_IOMEM_CCDC, align 4
  %40 = load i32, i32* @ISPCCDC_BLKCMP, align 4
  %41 = call i32 @isp_reg_writel(%struct.isp_device* %37, i32 %38, i32 %39, i32 %40)
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

; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_ccdc_sbl_busy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_ccdc_sbl_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_ccdc_device = type { i32 }
%struct.isp_device = type { i32 }

@OMAP3_ISP_IOMEM_SBL = common dso_local global i32 0, align 4
@ISPSBL_CCDC_WR_0 = common dso_local global i32 0, align 4
@ISPSBL_CCDC_WR_0_DATA_READY = common dso_local global i32 0, align 4
@ISPSBL_CCDC_WR_1 = common dso_local global i32 0, align 4
@ISPSBL_CCDC_WR_2 = common dso_local global i32 0, align 4
@ISPSBL_CCDC_WR_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isp_ccdc_device*)* @ccdc_sbl_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccdc_sbl_busy(%struct.isp_ccdc_device* %0) #0 {
  %2 = alloca %struct.isp_ccdc_device*, align 8
  %3 = alloca %struct.isp_device*, align 8
  store %struct.isp_ccdc_device* %0, %struct.isp_ccdc_device** %2, align 8
  %4 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %5 = call %struct.isp_device* @to_isp_device(%struct.isp_ccdc_device* %4)
  store %struct.isp_device* %5, %struct.isp_device** %3, align 8
  %6 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %7 = call i32 @omap3isp_ccdc_busy(%struct.isp_ccdc_device* %6)
  %8 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %9 = load i32, i32* @OMAP3_ISP_IOMEM_SBL, align 4
  %10 = load i32, i32* @ISPSBL_CCDC_WR_0, align 4
  %11 = call i32 @isp_reg_readl(%struct.isp_device* %8, i32 %9, i32 %10)
  %12 = load i32, i32* @ISPSBL_CCDC_WR_0_DATA_READY, align 4
  %13 = and i32 %11, %12
  %14 = or i32 %7, %13
  %15 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %16 = load i32, i32* @OMAP3_ISP_IOMEM_SBL, align 4
  %17 = load i32, i32* @ISPSBL_CCDC_WR_1, align 4
  %18 = call i32 @isp_reg_readl(%struct.isp_device* %15, i32 %16, i32 %17)
  %19 = load i32, i32* @ISPSBL_CCDC_WR_0_DATA_READY, align 4
  %20 = and i32 %18, %19
  %21 = or i32 %14, %20
  %22 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %23 = load i32, i32* @OMAP3_ISP_IOMEM_SBL, align 4
  %24 = load i32, i32* @ISPSBL_CCDC_WR_2, align 4
  %25 = call i32 @isp_reg_readl(%struct.isp_device* %22, i32 %23, i32 %24)
  %26 = load i32, i32* @ISPSBL_CCDC_WR_0_DATA_READY, align 4
  %27 = and i32 %25, %26
  %28 = or i32 %21, %27
  %29 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %30 = load i32, i32* @OMAP3_ISP_IOMEM_SBL, align 4
  %31 = load i32, i32* @ISPSBL_CCDC_WR_3, align 4
  %32 = call i32 @isp_reg_readl(%struct.isp_device* %29, i32 %30, i32 %31)
  %33 = load i32, i32* @ISPSBL_CCDC_WR_0_DATA_READY, align 4
  %34 = and i32 %32, %33
  %35 = or i32 %28, %34
  ret i32 %35
}

declare dso_local %struct.isp_device* @to_isp_device(%struct.isp_ccdc_device*) #1

declare dso_local i32 @omap3isp_ccdc_busy(%struct.isp_ccdc_device*) #1

declare dso_local i32 @isp_reg_readl(%struct.isp_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

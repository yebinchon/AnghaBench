; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_ccdc_configure_fpc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_ccdc_configure_fpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_ccdc_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.isp_device = type { i32 }

@OMAP3_ISP_IOMEM_CCDC = common dso_local global i32 0, align 4
@ISPCCDC_FPC = common dso_local global i32 0, align 4
@ISPCCDC_FPC_FPCEN = common dso_local global i32 0, align 4
@ISPCCDC_FPC_ADDR = common dso_local global i32 0, align 4
@ISPCCDC_FPC_FPNUM_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_ccdc_device*)* @ccdc_configure_fpc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccdc_configure_fpc(%struct.isp_ccdc_device* %0) #0 {
  %2 = alloca %struct.isp_ccdc_device*, align 8
  %3 = alloca %struct.isp_device*, align 8
  store %struct.isp_ccdc_device* %0, %struct.isp_ccdc_device** %2, align 8
  %4 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %5 = call %struct.isp_device* @to_isp_device(%struct.isp_ccdc_device* %4)
  store %struct.isp_device* %5, %struct.isp_device** %3, align 8
  %6 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %7 = load i32, i32* @OMAP3_ISP_IOMEM_CCDC, align 4
  %8 = load i32, i32* @ISPCCDC_FPC, align 4
  %9 = load i32, i32* @ISPCCDC_FPC_FPCEN, align 4
  %10 = call i32 @isp_reg_clr(%struct.isp_device* %6, i32 %7, i32 %8, i32 %9)
  %11 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %12 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %47

16:                                               ; preds = %1
  %17 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %18 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %19 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @OMAP3_ISP_IOMEM_CCDC, align 4
  %23 = load i32, i32* @ISPCCDC_FPC_ADDR, align 4
  %24 = call i32 @isp_reg_writel(%struct.isp_device* %17, i32 %21, i32 %22, i32 %23)
  %25 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %26 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %27 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @ISPCCDC_FPC_FPNUM_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = load i32, i32* @OMAP3_ISP_IOMEM_CCDC, align 4
  %33 = load i32, i32* @ISPCCDC_FPC, align 4
  %34 = call i32 @isp_reg_writel(%struct.isp_device* %25, i32 %31, i32 %32, i32 %33)
  %35 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %36 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %37 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @ISPCCDC_FPC_FPNUM_SHIFT, align 4
  %41 = shl i32 %39, %40
  %42 = load i32, i32* @ISPCCDC_FPC_FPCEN, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @OMAP3_ISP_IOMEM_CCDC, align 4
  %45 = load i32, i32* @ISPCCDC_FPC, align 4
  %46 = call i32 @isp_reg_writel(%struct.isp_device* %35, i32 %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %16, %15
  ret void
}

declare dso_local %struct.isp_device* @to_isp_device(%struct.isp_ccdc_device*) #1

declare dso_local i32 @isp_reg_clr(%struct.isp_device*, i32, i32, i32) #1

declare dso_local i32 @isp_reg_writel(%struct.isp_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

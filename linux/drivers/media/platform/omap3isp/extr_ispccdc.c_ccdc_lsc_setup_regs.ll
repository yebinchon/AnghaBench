; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_ccdc_lsc_setup_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_ccdc_lsc_setup_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_ccdc_device = type { i32 }
%struct.omap3isp_ccdc_lsc_config = type { i32, i32, i32, i32, i32, i32 }
%struct.isp_device = type { i32 }

@OMAP3_ISP_IOMEM_CCDC = common dso_local global i32 0, align 4
@ISPCCDC_LSC_TABLE_OFFSET = common dso_local global i32 0, align 4
@ISPCCDC_LSC_GAIN_MODE_N_SHIFT = common dso_local global i32 0, align 4
@ISPCCDC_LSC_GAIN_MODE_M_SHIFT = common dso_local global i32 0, align 4
@ISPCCDC_LSC_GAIN_FORMAT_SHIFT = common dso_local global i32 0, align 4
@ISPCCDC_LSC_CONFIG = common dso_local global i32 0, align 4
@ISPCCDC_LSC_INITIAL_X_MASK = common dso_local global i32 0, align 4
@ISPCCDC_LSC_INITIAL_X_SHIFT = common dso_local global i32 0, align 4
@ISPCCDC_LSC_INITIAL_Y_MASK = common dso_local global i32 0, align 4
@ISPCCDC_LSC_INITIAL_Y_SHIFT = common dso_local global i32 0, align 4
@ISPCCDC_LSC_INITIAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_ccdc_device*, %struct.omap3isp_ccdc_lsc_config*)* @ccdc_lsc_setup_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccdc_lsc_setup_regs(%struct.isp_ccdc_device* %0, %struct.omap3isp_ccdc_lsc_config* %1) #0 {
  %3 = alloca %struct.isp_ccdc_device*, align 8
  %4 = alloca %struct.omap3isp_ccdc_lsc_config*, align 8
  %5 = alloca %struct.isp_device*, align 8
  %6 = alloca i32, align 4
  store %struct.isp_ccdc_device* %0, %struct.isp_ccdc_device** %3, align 8
  store %struct.omap3isp_ccdc_lsc_config* %1, %struct.omap3isp_ccdc_lsc_config** %4, align 8
  %7 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %3, align 8
  %8 = call %struct.isp_device* @to_isp_device(%struct.isp_ccdc_device* %7)
  store %struct.isp_device* %8, %struct.isp_device** %5, align 8
  %9 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %10 = load %struct.omap3isp_ccdc_lsc_config*, %struct.omap3isp_ccdc_lsc_config** %4, align 8
  %11 = getelementptr inbounds %struct.omap3isp_ccdc_lsc_config, %struct.omap3isp_ccdc_lsc_config* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @OMAP3_ISP_IOMEM_CCDC, align 4
  %14 = load i32, i32* @ISPCCDC_LSC_TABLE_OFFSET, align 4
  %15 = call i32 @isp_reg_writel(%struct.isp_device* %9, i32 %12, i32 %13, i32 %14)
  store i32 0, i32* %6, align 4
  %16 = load %struct.omap3isp_ccdc_lsc_config*, %struct.omap3isp_ccdc_lsc_config** %4, align 8
  %17 = getelementptr inbounds %struct.omap3isp_ccdc_lsc_config, %struct.omap3isp_ccdc_lsc_config* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @ISPCCDC_LSC_GAIN_MODE_N_SHIFT, align 4
  %20 = shl i32 %18, %19
  %21 = load i32, i32* %6, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %6, align 4
  %23 = load %struct.omap3isp_ccdc_lsc_config*, %struct.omap3isp_ccdc_lsc_config** %4, align 8
  %24 = getelementptr inbounds %struct.omap3isp_ccdc_lsc_config, %struct.omap3isp_ccdc_lsc_config* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @ISPCCDC_LSC_GAIN_MODE_M_SHIFT, align 4
  %27 = shl i32 %25, %26
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %6, align 4
  %30 = load %struct.omap3isp_ccdc_lsc_config*, %struct.omap3isp_ccdc_lsc_config** %4, align 8
  %31 = getelementptr inbounds %struct.omap3isp_ccdc_lsc_config, %struct.omap3isp_ccdc_lsc_config* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @ISPCCDC_LSC_GAIN_FORMAT_SHIFT, align 4
  %34 = shl i32 %32, %33
  %35 = load i32, i32* %6, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %6, align 4
  %37 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @OMAP3_ISP_IOMEM_CCDC, align 4
  %40 = load i32, i32* @ISPCCDC_LSC_CONFIG, align 4
  %41 = call i32 @isp_reg_writel(%struct.isp_device* %37, i32 %38, i32 %39, i32 %40)
  store i32 0, i32* %6, align 4
  %42 = load i32, i32* @ISPCCDC_LSC_INITIAL_X_MASK, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %6, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %6, align 4
  %46 = load %struct.omap3isp_ccdc_lsc_config*, %struct.omap3isp_ccdc_lsc_config** %4, align 8
  %47 = getelementptr inbounds %struct.omap3isp_ccdc_lsc_config, %struct.omap3isp_ccdc_lsc_config* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @ISPCCDC_LSC_INITIAL_X_SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = load i32, i32* %6, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* @ISPCCDC_LSC_INITIAL_Y_MASK, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %6, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %6, align 4
  %57 = load %struct.omap3isp_ccdc_lsc_config*, %struct.omap3isp_ccdc_lsc_config** %4, align 8
  %58 = getelementptr inbounds %struct.omap3isp_ccdc_lsc_config, %struct.omap3isp_ccdc_lsc_config* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @ISPCCDC_LSC_INITIAL_Y_SHIFT, align 4
  %61 = shl i32 %59, %60
  %62 = load i32, i32* %6, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %6, align 4
  %64 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @OMAP3_ISP_IOMEM_CCDC, align 4
  %67 = load i32, i32* @ISPCCDC_LSC_INITIAL, align 4
  %68 = call i32 @isp_reg_writel(%struct.isp_device* %64, i32 %65, i32 %66, i32 %67)
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

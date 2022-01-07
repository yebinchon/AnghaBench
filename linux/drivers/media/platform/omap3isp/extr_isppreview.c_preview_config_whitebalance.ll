; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isppreview.c_preview_config_whitebalance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isppreview.c_preview_config_whitebalance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_prev_device = type { i32 }
%struct.prev_params = type { %struct.omap3isp_prev_wbal }
%struct.omap3isp_prev_wbal = type { i32, i32, i32, i32, i32 }
%struct.isp_device = type { i32 }

@OMAP3_ISP_IOMEM_PREV = common dso_local global i32 0, align 4
@ISPPRV_WB_DGAIN = common dso_local global i32 0, align 4
@ISPPRV_WBGAIN_COEF0_SHIFT = common dso_local global i32 0, align 4
@ISPPRV_WBGAIN_COEF1_SHIFT = common dso_local global i32 0, align 4
@ISPPRV_WBGAIN_COEF2_SHIFT = common dso_local global i32 0, align 4
@ISPPRV_WBGAIN_COEF3_SHIFT = common dso_local global i32 0, align 4
@ISPPRV_WBGAIN = common dso_local global i32 0, align 4
@ISPPRV_WBSEL_COEF0 = common dso_local global i32 0, align 4
@ISPPRV_WBSEL_N0_0_SHIFT = common dso_local global i32 0, align 4
@ISPPRV_WBSEL_COEF1 = common dso_local global i32 0, align 4
@ISPPRV_WBSEL_N0_1_SHIFT = common dso_local global i32 0, align 4
@ISPPRV_WBSEL_N0_2_SHIFT = common dso_local global i32 0, align 4
@ISPPRV_WBSEL_N0_3_SHIFT = common dso_local global i32 0, align 4
@ISPPRV_WBSEL_COEF2 = common dso_local global i32 0, align 4
@ISPPRV_WBSEL_N1_0_SHIFT = common dso_local global i32 0, align 4
@ISPPRV_WBSEL_COEF3 = common dso_local global i32 0, align 4
@ISPPRV_WBSEL_N1_1_SHIFT = common dso_local global i32 0, align 4
@ISPPRV_WBSEL_N1_2_SHIFT = common dso_local global i32 0, align 4
@ISPPRV_WBSEL_N1_3_SHIFT = common dso_local global i32 0, align 4
@ISPPRV_WBSEL_N2_0_SHIFT = common dso_local global i32 0, align 4
@ISPPRV_WBSEL_N2_1_SHIFT = common dso_local global i32 0, align 4
@ISPPRV_WBSEL_N2_2_SHIFT = common dso_local global i32 0, align 4
@ISPPRV_WBSEL_N2_3_SHIFT = common dso_local global i32 0, align 4
@ISPPRV_WBSEL_N3_0_SHIFT = common dso_local global i32 0, align 4
@ISPPRV_WBSEL_N3_1_SHIFT = common dso_local global i32 0, align 4
@ISPPRV_WBSEL_N3_2_SHIFT = common dso_local global i32 0, align 4
@ISPPRV_WBSEL_N3_3_SHIFT = common dso_local global i32 0, align 4
@ISPPRV_WBSEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_prev_device*, %struct.prev_params*)* @preview_config_whitebalance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @preview_config_whitebalance(%struct.isp_prev_device* %0, %struct.prev_params* %1) #0 {
  %3 = alloca %struct.isp_prev_device*, align 8
  %4 = alloca %struct.prev_params*, align 8
  %5 = alloca %struct.isp_device*, align 8
  %6 = alloca %struct.omap3isp_prev_wbal*, align 8
  %7 = alloca i32, align 4
  store %struct.isp_prev_device* %0, %struct.isp_prev_device** %3, align 8
  store %struct.prev_params* %1, %struct.prev_params** %4, align 8
  %8 = load %struct.isp_prev_device*, %struct.isp_prev_device** %3, align 8
  %9 = call %struct.isp_device* @to_isp_device(%struct.isp_prev_device* %8)
  store %struct.isp_device* %9, %struct.isp_device** %5, align 8
  %10 = load %struct.prev_params*, %struct.prev_params** %4, align 8
  %11 = getelementptr inbounds %struct.prev_params, %struct.prev_params* %10, i32 0, i32 0
  store %struct.omap3isp_prev_wbal* %11, %struct.omap3isp_prev_wbal** %6, align 8
  %12 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %13 = load %struct.omap3isp_prev_wbal*, %struct.omap3isp_prev_wbal** %6, align 8
  %14 = getelementptr inbounds %struct.omap3isp_prev_wbal, %struct.omap3isp_prev_wbal* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @OMAP3_ISP_IOMEM_PREV, align 4
  %17 = load i32, i32* @ISPPRV_WB_DGAIN, align 4
  %18 = call i32 @isp_reg_writel(%struct.isp_device* %12, i32 %15, i32 %16, i32 %17)
  %19 = load %struct.omap3isp_prev_wbal*, %struct.omap3isp_prev_wbal** %6, align 8
  %20 = getelementptr inbounds %struct.omap3isp_prev_wbal, %struct.omap3isp_prev_wbal* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ISPPRV_WBGAIN_COEF0_SHIFT, align 4
  %23 = shl i32 %21, %22
  store i32 %23, i32* %7, align 4
  %24 = load %struct.omap3isp_prev_wbal*, %struct.omap3isp_prev_wbal** %6, align 8
  %25 = getelementptr inbounds %struct.omap3isp_prev_wbal, %struct.omap3isp_prev_wbal* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ISPPRV_WBGAIN_COEF1_SHIFT, align 4
  %28 = shl i32 %26, %27
  %29 = load i32, i32* %7, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %7, align 4
  %31 = load %struct.omap3isp_prev_wbal*, %struct.omap3isp_prev_wbal** %6, align 8
  %32 = getelementptr inbounds %struct.omap3isp_prev_wbal, %struct.omap3isp_prev_wbal* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @ISPPRV_WBGAIN_COEF2_SHIFT, align 4
  %35 = shl i32 %33, %34
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %7, align 4
  %38 = load %struct.omap3isp_prev_wbal*, %struct.omap3isp_prev_wbal** %6, align 8
  %39 = getelementptr inbounds %struct.omap3isp_prev_wbal, %struct.omap3isp_prev_wbal* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ISPPRV_WBGAIN_COEF3_SHIFT, align 4
  %42 = shl i32 %40, %41
  %43 = load i32, i32* %7, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %7, align 4
  %45 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @OMAP3_ISP_IOMEM_PREV, align 4
  %48 = load i32, i32* @ISPPRV_WBGAIN, align 4
  %49 = call i32 @isp_reg_writel(%struct.isp_device* %45, i32 %46, i32 %47, i32 %48)
  %50 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %51 = load i32, i32* @ISPPRV_WBSEL_COEF0, align 4
  %52 = load i32, i32* @ISPPRV_WBSEL_N0_0_SHIFT, align 4
  %53 = shl i32 %51, %52
  %54 = load i32, i32* @ISPPRV_WBSEL_COEF1, align 4
  %55 = load i32, i32* @ISPPRV_WBSEL_N0_1_SHIFT, align 4
  %56 = shl i32 %54, %55
  %57 = or i32 %53, %56
  %58 = load i32, i32* @ISPPRV_WBSEL_COEF0, align 4
  %59 = load i32, i32* @ISPPRV_WBSEL_N0_2_SHIFT, align 4
  %60 = shl i32 %58, %59
  %61 = or i32 %57, %60
  %62 = load i32, i32* @ISPPRV_WBSEL_COEF1, align 4
  %63 = load i32, i32* @ISPPRV_WBSEL_N0_3_SHIFT, align 4
  %64 = shl i32 %62, %63
  %65 = or i32 %61, %64
  %66 = load i32, i32* @ISPPRV_WBSEL_COEF2, align 4
  %67 = load i32, i32* @ISPPRV_WBSEL_N1_0_SHIFT, align 4
  %68 = shl i32 %66, %67
  %69 = or i32 %65, %68
  %70 = load i32, i32* @ISPPRV_WBSEL_COEF3, align 4
  %71 = load i32, i32* @ISPPRV_WBSEL_N1_1_SHIFT, align 4
  %72 = shl i32 %70, %71
  %73 = or i32 %69, %72
  %74 = load i32, i32* @ISPPRV_WBSEL_COEF2, align 4
  %75 = load i32, i32* @ISPPRV_WBSEL_N1_2_SHIFT, align 4
  %76 = shl i32 %74, %75
  %77 = or i32 %73, %76
  %78 = load i32, i32* @ISPPRV_WBSEL_COEF3, align 4
  %79 = load i32, i32* @ISPPRV_WBSEL_N1_3_SHIFT, align 4
  %80 = shl i32 %78, %79
  %81 = or i32 %77, %80
  %82 = load i32, i32* @ISPPRV_WBSEL_COEF0, align 4
  %83 = load i32, i32* @ISPPRV_WBSEL_N2_0_SHIFT, align 4
  %84 = shl i32 %82, %83
  %85 = or i32 %81, %84
  %86 = load i32, i32* @ISPPRV_WBSEL_COEF1, align 4
  %87 = load i32, i32* @ISPPRV_WBSEL_N2_1_SHIFT, align 4
  %88 = shl i32 %86, %87
  %89 = or i32 %85, %88
  %90 = load i32, i32* @ISPPRV_WBSEL_COEF0, align 4
  %91 = load i32, i32* @ISPPRV_WBSEL_N2_2_SHIFT, align 4
  %92 = shl i32 %90, %91
  %93 = or i32 %89, %92
  %94 = load i32, i32* @ISPPRV_WBSEL_COEF1, align 4
  %95 = load i32, i32* @ISPPRV_WBSEL_N2_3_SHIFT, align 4
  %96 = shl i32 %94, %95
  %97 = or i32 %93, %96
  %98 = load i32, i32* @ISPPRV_WBSEL_COEF2, align 4
  %99 = load i32, i32* @ISPPRV_WBSEL_N3_0_SHIFT, align 4
  %100 = shl i32 %98, %99
  %101 = or i32 %97, %100
  %102 = load i32, i32* @ISPPRV_WBSEL_COEF3, align 4
  %103 = load i32, i32* @ISPPRV_WBSEL_N3_1_SHIFT, align 4
  %104 = shl i32 %102, %103
  %105 = or i32 %101, %104
  %106 = load i32, i32* @ISPPRV_WBSEL_COEF2, align 4
  %107 = load i32, i32* @ISPPRV_WBSEL_N3_2_SHIFT, align 4
  %108 = shl i32 %106, %107
  %109 = or i32 %105, %108
  %110 = load i32, i32* @ISPPRV_WBSEL_COEF3, align 4
  %111 = load i32, i32* @ISPPRV_WBSEL_N3_3_SHIFT, align 4
  %112 = shl i32 %110, %111
  %113 = or i32 %109, %112
  %114 = load i32, i32* @OMAP3_ISP_IOMEM_PREV, align 4
  %115 = load i32, i32* @ISPPRV_WBSEL, align 4
  %116 = call i32 @isp_reg_writel(%struct.isp_device* %50, i32 %113, i32 %114, i32 %115)
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

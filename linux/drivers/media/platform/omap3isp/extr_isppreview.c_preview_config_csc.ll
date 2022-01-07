; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isppreview.c_preview_config_csc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isppreview.c_preview_config_csc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_prev_device = type { i32 }
%struct.prev_params = type { %struct.omap3isp_prev_csc }
%struct.omap3isp_prev_csc = type { i32**, i32* }
%struct.isp_device = type { i32 }

@ISPPRV_CSC0_RY_SHIFT = common dso_local global i32 0, align 4
@ISPPRV_CSC0_GY_SHIFT = common dso_local global i32 0, align 4
@ISPPRV_CSC0_BY_SHIFT = common dso_local global i32 0, align 4
@OMAP3_ISP_IOMEM_PREV = common dso_local global i32 0, align 4
@ISPPRV_CSC0 = common dso_local global i32 0, align 4
@ISPPRV_CSC1_RCB_SHIFT = common dso_local global i32 0, align 4
@ISPPRV_CSC1_GCB_SHIFT = common dso_local global i32 0, align 4
@ISPPRV_CSC1_BCB_SHIFT = common dso_local global i32 0, align 4
@ISPPRV_CSC1 = common dso_local global i32 0, align 4
@ISPPRV_CSC2_RCR_SHIFT = common dso_local global i32 0, align 4
@ISPPRV_CSC2_GCR_SHIFT = common dso_local global i32 0, align 4
@ISPPRV_CSC2_BCR_SHIFT = common dso_local global i32 0, align 4
@ISPPRV_CSC2 = common dso_local global i32 0, align 4
@ISPPRV_CSC_OFFSET_Y_SHIFT = common dso_local global i32 0, align 4
@ISPPRV_CSC_OFFSET_CB_SHIFT = common dso_local global i32 0, align 4
@ISPPRV_CSC_OFFSET_CR_SHIFT = common dso_local global i32 0, align 4
@ISPPRV_CSC_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_prev_device*, %struct.prev_params*)* @preview_config_csc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @preview_config_csc(%struct.isp_prev_device* %0, %struct.prev_params* %1) #0 {
  %3 = alloca %struct.isp_prev_device*, align 8
  %4 = alloca %struct.prev_params*, align 8
  %5 = alloca %struct.isp_device*, align 8
  %6 = alloca %struct.omap3isp_prev_csc*, align 8
  %7 = alloca i32, align 4
  store %struct.isp_prev_device* %0, %struct.isp_prev_device** %3, align 8
  store %struct.prev_params* %1, %struct.prev_params** %4, align 8
  %8 = load %struct.isp_prev_device*, %struct.isp_prev_device** %3, align 8
  %9 = call %struct.isp_device* @to_isp_device(%struct.isp_prev_device* %8)
  store %struct.isp_device* %9, %struct.isp_device** %5, align 8
  %10 = load %struct.prev_params*, %struct.prev_params** %4, align 8
  %11 = getelementptr inbounds %struct.prev_params, %struct.prev_params* %10, i32 0, i32 0
  store %struct.omap3isp_prev_csc* %11, %struct.omap3isp_prev_csc** %6, align 8
  %12 = load %struct.omap3isp_prev_csc*, %struct.omap3isp_prev_csc** %6, align 8
  %13 = getelementptr inbounds %struct.omap3isp_prev_csc, %struct.omap3isp_prev_csc* %12, i32 0, i32 0
  %14 = load i32**, i32*** %13, align 8
  %15 = getelementptr inbounds i32*, i32** %14, i64 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 1023
  %20 = load i32, i32* @ISPPRV_CSC0_RY_SHIFT, align 4
  %21 = shl i32 %19, %20
  store i32 %21, i32* %7, align 4
  %22 = load %struct.omap3isp_prev_csc*, %struct.omap3isp_prev_csc** %6, align 8
  %23 = getelementptr inbounds %struct.omap3isp_prev_csc, %struct.omap3isp_prev_csc* %22, i32 0, i32 0
  %24 = load i32**, i32*** %23, align 8
  %25 = getelementptr inbounds i32*, i32** %24, i64 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 1023
  %30 = load i32, i32* @ISPPRV_CSC0_GY_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %7, align 4
  %34 = load %struct.omap3isp_prev_csc*, %struct.omap3isp_prev_csc** %6, align 8
  %35 = getelementptr inbounds %struct.omap3isp_prev_csc, %struct.omap3isp_prev_csc* %34, i32 0, i32 0
  %36 = load i32**, i32*** %35, align 8
  %37 = getelementptr inbounds i32*, i32** %36, i64 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 1023
  %42 = load i32, i32* @ISPPRV_CSC0_BY_SHIFT, align 4
  %43 = shl i32 %41, %42
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %7, align 4
  %46 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @OMAP3_ISP_IOMEM_PREV, align 4
  %49 = load i32, i32* @ISPPRV_CSC0, align 4
  %50 = call i32 @isp_reg_writel(%struct.isp_device* %46, i32 %47, i32 %48, i32 %49)
  %51 = load %struct.omap3isp_prev_csc*, %struct.omap3isp_prev_csc** %6, align 8
  %52 = getelementptr inbounds %struct.omap3isp_prev_csc, %struct.omap3isp_prev_csc* %51, i32 0, i32 0
  %53 = load i32**, i32*** %52, align 8
  %54 = getelementptr inbounds i32*, i32** %53, i64 1
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 1023
  %59 = load i32, i32* @ISPPRV_CSC1_RCB_SHIFT, align 4
  %60 = shl i32 %58, %59
  store i32 %60, i32* %7, align 4
  %61 = load %struct.omap3isp_prev_csc*, %struct.omap3isp_prev_csc** %6, align 8
  %62 = getelementptr inbounds %struct.omap3isp_prev_csc, %struct.omap3isp_prev_csc* %61, i32 0, i32 0
  %63 = load i32**, i32*** %62, align 8
  %64 = getelementptr inbounds i32*, i32** %63, i64 1
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, 1023
  %69 = load i32, i32* @ISPPRV_CSC1_GCB_SHIFT, align 4
  %70 = shl i32 %68, %69
  %71 = load i32, i32* %7, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %7, align 4
  %73 = load %struct.omap3isp_prev_csc*, %struct.omap3isp_prev_csc** %6, align 8
  %74 = getelementptr inbounds %struct.omap3isp_prev_csc, %struct.omap3isp_prev_csc* %73, i32 0, i32 0
  %75 = load i32**, i32*** %74, align 8
  %76 = getelementptr inbounds i32*, i32** %75, i64 1
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 2
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 1023
  %81 = load i32, i32* @ISPPRV_CSC1_BCB_SHIFT, align 4
  %82 = shl i32 %80, %81
  %83 = load i32, i32* %7, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %7, align 4
  %85 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @OMAP3_ISP_IOMEM_PREV, align 4
  %88 = load i32, i32* @ISPPRV_CSC1, align 4
  %89 = call i32 @isp_reg_writel(%struct.isp_device* %85, i32 %86, i32 %87, i32 %88)
  %90 = load %struct.omap3isp_prev_csc*, %struct.omap3isp_prev_csc** %6, align 8
  %91 = getelementptr inbounds %struct.omap3isp_prev_csc, %struct.omap3isp_prev_csc* %90, i32 0, i32 0
  %92 = load i32**, i32*** %91, align 8
  %93 = getelementptr inbounds i32*, i32** %92, i64 2
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, 1023
  %98 = load i32, i32* @ISPPRV_CSC2_RCR_SHIFT, align 4
  %99 = shl i32 %97, %98
  store i32 %99, i32* %7, align 4
  %100 = load %struct.omap3isp_prev_csc*, %struct.omap3isp_prev_csc** %6, align 8
  %101 = getelementptr inbounds %struct.omap3isp_prev_csc, %struct.omap3isp_prev_csc* %100, i32 0, i32 0
  %102 = load i32**, i32*** %101, align 8
  %103 = getelementptr inbounds i32*, i32** %102, i64 2
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %106, 1023
  %108 = load i32, i32* @ISPPRV_CSC2_GCR_SHIFT, align 4
  %109 = shl i32 %107, %108
  %110 = load i32, i32* %7, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %7, align 4
  %112 = load %struct.omap3isp_prev_csc*, %struct.omap3isp_prev_csc** %6, align 8
  %113 = getelementptr inbounds %struct.omap3isp_prev_csc, %struct.omap3isp_prev_csc* %112, i32 0, i32 0
  %114 = load i32**, i32*** %113, align 8
  %115 = getelementptr inbounds i32*, i32** %114, i64 2
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 2
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %118, 1023
  %120 = load i32, i32* @ISPPRV_CSC2_BCR_SHIFT, align 4
  %121 = shl i32 %119, %120
  %122 = load i32, i32* %7, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %7, align 4
  %124 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* @OMAP3_ISP_IOMEM_PREV, align 4
  %127 = load i32, i32* @ISPPRV_CSC2, align 4
  %128 = call i32 @isp_reg_writel(%struct.isp_device* %124, i32 %125, i32 %126, i32 %127)
  %129 = load %struct.omap3isp_prev_csc*, %struct.omap3isp_prev_csc** %6, align 8
  %130 = getelementptr inbounds %struct.omap3isp_prev_csc, %struct.omap3isp_prev_csc* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  %133 = load i32, i32* %132, align 4
  %134 = and i32 %133, 255
  %135 = load i32, i32* @ISPPRV_CSC_OFFSET_Y_SHIFT, align 4
  %136 = shl i32 %134, %135
  store i32 %136, i32* %7, align 4
  %137 = load %struct.omap3isp_prev_csc*, %struct.omap3isp_prev_csc** %6, align 8
  %138 = getelementptr inbounds %struct.omap3isp_prev_csc, %struct.omap3isp_prev_csc* %137, i32 0, i32 1
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 1
  %141 = load i32, i32* %140, align 4
  %142 = and i32 %141, 255
  %143 = load i32, i32* @ISPPRV_CSC_OFFSET_CB_SHIFT, align 4
  %144 = shl i32 %142, %143
  %145 = load i32, i32* %7, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %7, align 4
  %147 = load %struct.omap3isp_prev_csc*, %struct.omap3isp_prev_csc** %6, align 8
  %148 = getelementptr inbounds %struct.omap3isp_prev_csc, %struct.omap3isp_prev_csc* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 2
  %151 = load i32, i32* %150, align 4
  %152 = and i32 %151, 255
  %153 = load i32, i32* @ISPPRV_CSC_OFFSET_CR_SHIFT, align 4
  %154 = shl i32 %152, %153
  %155 = load i32, i32* %7, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %7, align 4
  %157 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %158 = load i32, i32* %7, align 4
  %159 = load i32, i32* @OMAP3_ISP_IOMEM_PREV, align 4
  %160 = load i32, i32* @ISPPRV_CSC_OFFSET, align 4
  %161 = call i32 @isp_reg_writel(%struct.isp_device* %157, i32 %158, i32 %159, i32 %160)
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

; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isppreview.c_preview_config_rgb_blending.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isppreview.c_preview_config_rgb_blending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_prev_device = type { i32 }
%struct.prev_params = type { %struct.omap3isp_prev_rgbtorgb }
%struct.omap3isp_prev_rgbtorgb = type { i32**, i32* }
%struct.isp_device = type { i32 }

@ISPPRV_RGB_MAT1_MTX_RR_SHIFT = common dso_local global i32 0, align 4
@ISPPRV_RGB_MAT1_MTX_GR_SHIFT = common dso_local global i32 0, align 4
@OMAP3_ISP_IOMEM_PREV = common dso_local global i32 0, align 4
@ISPPRV_RGB_MAT1 = common dso_local global i32 0, align 4
@ISPPRV_RGB_MAT2_MTX_BR_SHIFT = common dso_local global i32 0, align 4
@ISPPRV_RGB_MAT2_MTX_RG_SHIFT = common dso_local global i32 0, align 4
@ISPPRV_RGB_MAT2 = common dso_local global i32 0, align 4
@ISPPRV_RGB_MAT3_MTX_GG_SHIFT = common dso_local global i32 0, align 4
@ISPPRV_RGB_MAT3_MTX_BG_SHIFT = common dso_local global i32 0, align 4
@ISPPRV_RGB_MAT3 = common dso_local global i32 0, align 4
@ISPPRV_RGB_MAT4_MTX_RB_SHIFT = common dso_local global i32 0, align 4
@ISPPRV_RGB_MAT4_MTX_GB_SHIFT = common dso_local global i32 0, align 4
@ISPPRV_RGB_MAT4 = common dso_local global i32 0, align 4
@ISPPRV_RGB_MAT5_MTX_BB_SHIFT = common dso_local global i32 0, align 4
@ISPPRV_RGB_MAT5 = common dso_local global i32 0, align 4
@ISPPRV_RGB_OFF1_MTX_OFFR_SHIFT = common dso_local global i32 0, align 4
@ISPPRV_RGB_OFF1_MTX_OFFG_SHIFT = common dso_local global i32 0, align 4
@ISPPRV_RGB_OFF1 = common dso_local global i32 0, align 4
@ISPPRV_RGB_OFF2_MTX_OFFB_SHIFT = common dso_local global i32 0, align 4
@ISPPRV_RGB_OFF2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_prev_device*, %struct.prev_params*)* @preview_config_rgb_blending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @preview_config_rgb_blending(%struct.isp_prev_device* %0, %struct.prev_params* %1) #0 {
  %3 = alloca %struct.isp_prev_device*, align 8
  %4 = alloca %struct.prev_params*, align 8
  %5 = alloca %struct.isp_device*, align 8
  %6 = alloca %struct.omap3isp_prev_rgbtorgb*, align 8
  %7 = alloca i32, align 4
  store %struct.isp_prev_device* %0, %struct.isp_prev_device** %3, align 8
  store %struct.prev_params* %1, %struct.prev_params** %4, align 8
  %8 = load %struct.isp_prev_device*, %struct.isp_prev_device** %3, align 8
  %9 = call %struct.isp_device* @to_isp_device(%struct.isp_prev_device* %8)
  store %struct.isp_device* %9, %struct.isp_device** %5, align 8
  %10 = load %struct.prev_params*, %struct.prev_params** %4, align 8
  %11 = getelementptr inbounds %struct.prev_params, %struct.prev_params* %10, i32 0, i32 0
  store %struct.omap3isp_prev_rgbtorgb* %11, %struct.omap3isp_prev_rgbtorgb** %6, align 8
  %12 = load %struct.omap3isp_prev_rgbtorgb*, %struct.omap3isp_prev_rgbtorgb** %6, align 8
  %13 = getelementptr inbounds %struct.omap3isp_prev_rgbtorgb, %struct.omap3isp_prev_rgbtorgb* %12, i32 0, i32 0
  %14 = load i32**, i32*** %13, align 8
  %15 = getelementptr inbounds i32*, i32** %14, i64 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 4095
  %20 = load i32, i32* @ISPPRV_RGB_MAT1_MTX_RR_SHIFT, align 4
  %21 = shl i32 %19, %20
  store i32 %21, i32* %7, align 4
  %22 = load %struct.omap3isp_prev_rgbtorgb*, %struct.omap3isp_prev_rgbtorgb** %6, align 8
  %23 = getelementptr inbounds %struct.omap3isp_prev_rgbtorgb, %struct.omap3isp_prev_rgbtorgb* %22, i32 0, i32 0
  %24 = load i32**, i32*** %23, align 8
  %25 = getelementptr inbounds i32*, i32** %24, i64 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 4095
  %30 = load i32, i32* @ISPPRV_RGB_MAT1_MTX_GR_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %7, align 4
  %34 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @OMAP3_ISP_IOMEM_PREV, align 4
  %37 = load i32, i32* @ISPPRV_RGB_MAT1, align 4
  %38 = call i32 @isp_reg_writel(%struct.isp_device* %34, i32 %35, i32 %36, i32 %37)
  %39 = load %struct.omap3isp_prev_rgbtorgb*, %struct.omap3isp_prev_rgbtorgb** %6, align 8
  %40 = getelementptr inbounds %struct.omap3isp_prev_rgbtorgb, %struct.omap3isp_prev_rgbtorgb* %39, i32 0, i32 0
  %41 = load i32**, i32*** %40, align 8
  %42 = getelementptr inbounds i32*, i32** %41, i64 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 4095
  %47 = load i32, i32* @ISPPRV_RGB_MAT2_MTX_BR_SHIFT, align 4
  %48 = shl i32 %46, %47
  store i32 %48, i32* %7, align 4
  %49 = load %struct.omap3isp_prev_rgbtorgb*, %struct.omap3isp_prev_rgbtorgb** %6, align 8
  %50 = getelementptr inbounds %struct.omap3isp_prev_rgbtorgb, %struct.omap3isp_prev_rgbtorgb* %49, i32 0, i32 0
  %51 = load i32**, i32*** %50, align 8
  %52 = getelementptr inbounds i32*, i32** %51, i64 1
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 4095
  %57 = load i32, i32* @ISPPRV_RGB_MAT2_MTX_RG_SHIFT, align 4
  %58 = shl i32 %56, %57
  %59 = load i32, i32* %7, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %7, align 4
  %61 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @OMAP3_ISP_IOMEM_PREV, align 4
  %64 = load i32, i32* @ISPPRV_RGB_MAT2, align 4
  %65 = call i32 @isp_reg_writel(%struct.isp_device* %61, i32 %62, i32 %63, i32 %64)
  %66 = load %struct.omap3isp_prev_rgbtorgb*, %struct.omap3isp_prev_rgbtorgb** %6, align 8
  %67 = getelementptr inbounds %struct.omap3isp_prev_rgbtorgb, %struct.omap3isp_prev_rgbtorgb* %66, i32 0, i32 0
  %68 = load i32**, i32*** %67, align 8
  %69 = getelementptr inbounds i32*, i32** %68, i64 1
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, 4095
  %74 = load i32, i32* @ISPPRV_RGB_MAT3_MTX_GG_SHIFT, align 4
  %75 = shl i32 %73, %74
  store i32 %75, i32* %7, align 4
  %76 = load %struct.omap3isp_prev_rgbtorgb*, %struct.omap3isp_prev_rgbtorgb** %6, align 8
  %77 = getelementptr inbounds %struct.omap3isp_prev_rgbtorgb, %struct.omap3isp_prev_rgbtorgb* %76, i32 0, i32 0
  %78 = load i32**, i32*** %77, align 8
  %79 = getelementptr inbounds i32*, i32** %78, i64 1
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 2
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, 4095
  %84 = load i32, i32* @ISPPRV_RGB_MAT3_MTX_BG_SHIFT, align 4
  %85 = shl i32 %83, %84
  %86 = load i32, i32* %7, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %7, align 4
  %88 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @OMAP3_ISP_IOMEM_PREV, align 4
  %91 = load i32, i32* @ISPPRV_RGB_MAT3, align 4
  %92 = call i32 @isp_reg_writel(%struct.isp_device* %88, i32 %89, i32 %90, i32 %91)
  %93 = load %struct.omap3isp_prev_rgbtorgb*, %struct.omap3isp_prev_rgbtorgb** %6, align 8
  %94 = getelementptr inbounds %struct.omap3isp_prev_rgbtorgb, %struct.omap3isp_prev_rgbtorgb* %93, i32 0, i32 0
  %95 = load i32**, i32*** %94, align 8
  %96 = getelementptr inbounds i32*, i32** %95, i64 2
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, 4095
  %101 = load i32, i32* @ISPPRV_RGB_MAT4_MTX_RB_SHIFT, align 4
  %102 = shl i32 %100, %101
  store i32 %102, i32* %7, align 4
  %103 = load %struct.omap3isp_prev_rgbtorgb*, %struct.omap3isp_prev_rgbtorgb** %6, align 8
  %104 = getelementptr inbounds %struct.omap3isp_prev_rgbtorgb, %struct.omap3isp_prev_rgbtorgb* %103, i32 0, i32 0
  %105 = load i32**, i32*** %104, align 8
  %106 = getelementptr inbounds i32*, i32** %105, i64 2
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 1
  %109 = load i32, i32* %108, align 4
  %110 = and i32 %109, 4095
  %111 = load i32, i32* @ISPPRV_RGB_MAT4_MTX_GB_SHIFT, align 4
  %112 = shl i32 %110, %111
  %113 = load i32, i32* %7, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %7, align 4
  %115 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* @OMAP3_ISP_IOMEM_PREV, align 4
  %118 = load i32, i32* @ISPPRV_RGB_MAT4, align 4
  %119 = call i32 @isp_reg_writel(%struct.isp_device* %115, i32 %116, i32 %117, i32 %118)
  %120 = load %struct.omap3isp_prev_rgbtorgb*, %struct.omap3isp_prev_rgbtorgb** %6, align 8
  %121 = getelementptr inbounds %struct.omap3isp_prev_rgbtorgb, %struct.omap3isp_prev_rgbtorgb* %120, i32 0, i32 0
  %122 = load i32**, i32*** %121, align 8
  %123 = getelementptr inbounds i32*, i32** %122, i64 2
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 2
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %126, 4095
  %128 = load i32, i32* @ISPPRV_RGB_MAT5_MTX_BB_SHIFT, align 4
  %129 = shl i32 %127, %128
  store i32 %129, i32* %7, align 4
  %130 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* @OMAP3_ISP_IOMEM_PREV, align 4
  %133 = load i32, i32* @ISPPRV_RGB_MAT5, align 4
  %134 = call i32 @isp_reg_writel(%struct.isp_device* %130, i32 %131, i32 %132, i32 %133)
  %135 = load %struct.omap3isp_prev_rgbtorgb*, %struct.omap3isp_prev_rgbtorgb** %6, align 8
  %136 = getelementptr inbounds %struct.omap3isp_prev_rgbtorgb, %struct.omap3isp_prev_rgbtorgb* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  %139 = load i32, i32* %138, align 4
  %140 = and i32 %139, 1023
  %141 = load i32, i32* @ISPPRV_RGB_OFF1_MTX_OFFR_SHIFT, align 4
  %142 = shl i32 %140, %141
  store i32 %142, i32* %7, align 4
  %143 = load %struct.omap3isp_prev_rgbtorgb*, %struct.omap3isp_prev_rgbtorgb** %6, align 8
  %144 = getelementptr inbounds %struct.omap3isp_prev_rgbtorgb, %struct.omap3isp_prev_rgbtorgb* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 1
  %147 = load i32, i32* %146, align 4
  %148 = and i32 %147, 1023
  %149 = load i32, i32* @ISPPRV_RGB_OFF1_MTX_OFFG_SHIFT, align 4
  %150 = shl i32 %148, %149
  %151 = load i32, i32* %7, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %7, align 4
  %153 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %154 = load i32, i32* %7, align 4
  %155 = load i32, i32* @OMAP3_ISP_IOMEM_PREV, align 4
  %156 = load i32, i32* @ISPPRV_RGB_OFF1, align 4
  %157 = call i32 @isp_reg_writel(%struct.isp_device* %153, i32 %154, i32 %155, i32 %156)
  %158 = load %struct.omap3isp_prev_rgbtorgb*, %struct.omap3isp_prev_rgbtorgb** %6, align 8
  %159 = getelementptr inbounds %struct.omap3isp_prev_rgbtorgb, %struct.omap3isp_prev_rgbtorgb* %158, i32 0, i32 1
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 2
  %162 = load i32, i32* %161, align 4
  %163 = and i32 %162, 1023
  %164 = load i32, i32* @ISPPRV_RGB_OFF2_MTX_OFFB_SHIFT, align 4
  %165 = shl i32 %163, %164
  store i32 %165, i32* %7, align 4
  %166 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %167 = load i32, i32* %7, align 4
  %168 = load i32, i32* @OMAP3_ISP_IOMEM_PREV, align 4
  %169 = load i32, i32* @ISPPRV_RGB_OFF2, align 4
  %170 = call i32 @isp_reg_writel(%struct.isp_device* %166, i32 %167, i32 %168, i32 %169)
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

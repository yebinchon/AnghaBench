; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe-4-7.c_vfe_set_camif_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe-4-7.c_vfe_set_camif_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfe_device = type { i64 }
%struct.vfe_line = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@MSM_VFE_PAD_SINK = common dso_local global i64 0, align 8
@VFE_0_CORE_CFG_PIXEL_PATTERN_YCBYCR = common dso_local global i32 0, align 4
@VFE_0_CORE_CFG_PIXEL_PATTERN_YCRYCB = common dso_local global i32 0, align 4
@VFE_0_CORE_CFG_PIXEL_PATTERN_CBYCRY = common dso_local global i32 0, align 4
@VFE_0_CORE_CFG_PIXEL_PATTERN_CRYCBY = common dso_local global i32 0, align 4
@VFE_0_CORE_CFG_COMPOSITE_REG_UPDATE_EN = common dso_local global i32 0, align 4
@VFE_0_CORE_CFG = common dso_local global i64 0, align 8
@VFE_0_CAMIF_FRAME_CFG = common dso_local global i64 0, align 8
@VFE_0_CAMIF_WINDOW_WIDTH_CFG = common dso_local global i64 0, align 8
@VFE_0_CAMIF_WINDOW_HEIGHT_CFG = common dso_local global i64 0, align 8
@VFE_0_CAMIF_SUBSAMPLE_CFG = common dso_local global i64 0, align 8
@VFE_0_CAMIF_IRQ_FRAMEDROP_PATTERN = common dso_local global i64 0, align 8
@VFE_0_CAMIF_IRQ_SUBSAMPLE_PATTERN = common dso_local global i64 0, align 8
@VFE_0_RDI_CFG_x_MIPI_EN_BITS = common dso_local global i32 0, align 4
@VFE_0_CAMIF_CFG_VFE_OUTPUT_EN = common dso_local global i32 0, align 4
@VFE_0_CAMIF_CFG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfe_device*, %struct.vfe_line*)* @vfe_set_camif_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfe_set_camif_cfg(%struct.vfe_device* %0, %struct.vfe_line* %1) #0 {
  %3 = alloca %struct.vfe_device*, align 8
  %4 = alloca %struct.vfe_line*, align 8
  %5 = alloca i32, align 4
  store %struct.vfe_device* %0, %struct.vfe_device** %3, align 8
  store %struct.vfe_line* %1, %struct.vfe_line** %4, align 8
  %6 = load %struct.vfe_line*, %struct.vfe_line** %4, align 8
  %7 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = load i64, i64* @MSM_VFE_PAD_SINK, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %18 [
    i32 129, label %13
    i32 128, label %15
    i32 131, label %17
    i32 130, label %20
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* @VFE_0_CORE_CFG_PIXEL_PATTERN_YCBYCR, align 4
  store i32 %14, i32* %5, align 4
  br label %22

15:                                               ; preds = %2
  %16 = load i32, i32* @VFE_0_CORE_CFG_PIXEL_PATTERN_YCRYCB, align 4
  store i32 %16, i32* %5, align 4
  br label %22

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %2, %17
  %19 = load i32, i32* @VFE_0_CORE_CFG_PIXEL_PATTERN_CBYCRY, align 4
  store i32 %19, i32* %5, align 4
  br label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @VFE_0_CORE_CFG_PIXEL_PATTERN_CRYCBY, align 4
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %20, %18, %15, %13
  %23 = load i32, i32* @VFE_0_CORE_CFG_COMPOSITE_REG_UPDATE_EN, align 4
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %28 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @VFE_0_CORE_CFG, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writel_relaxed(i32 %26, i64 %31)
  %33 = load %struct.vfe_line*, %struct.vfe_line** %4, align 8
  %34 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i64, i64* @MSM_VFE_PAD_SINK, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %39, 2
  %41 = sub nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  %42 = load %struct.vfe_line*, %struct.vfe_line** %4, align 8
  %43 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i64, i64* @MSM_VFE_PAD_SINK, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 %48, 1
  %50 = shl i32 %49, 16
  %51 = load i32, i32* %5, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %55 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @VFE_0_CAMIF_FRAME_CFG, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @writel_relaxed(i32 %53, i64 %58)
  %60 = load %struct.vfe_line*, %struct.vfe_line** %4, align 8
  %61 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i64, i64* @MSM_VFE_PAD_SINK, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %66, 2
  %68 = sub nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %71 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @VFE_0_CAMIF_WINDOW_WIDTH_CFG, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @writel_relaxed(i32 %69, i64 %74)
  %76 = load %struct.vfe_line*, %struct.vfe_line** %4, align 8
  %77 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load i64, i64* @MSM_VFE_PAD_SINK, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = sub nsw i32 %82, 1
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %86 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @VFE_0_CAMIF_WINDOW_HEIGHT_CFG, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @writel_relaxed(i32 %84, i64 %89)
  store i32 -1, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %93 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @VFE_0_CAMIF_SUBSAMPLE_CFG, align 8
  %96 = add nsw i64 %94, %95
  %97 = call i32 @writel_relaxed(i32 %91, i64 %96)
  store i32 -1, i32* %5, align 4
  %98 = load i32, i32* %5, align 4
  %99 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %100 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @VFE_0_CAMIF_IRQ_FRAMEDROP_PATTERN, align 8
  %103 = add nsw i64 %101, %102
  %104 = call i32 @writel_relaxed(i32 %98, i64 %103)
  store i32 -1, i32* %5, align 4
  %105 = load i32, i32* %5, align 4
  %106 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %107 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @VFE_0_CAMIF_IRQ_SUBSAMPLE_PATTERN, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i32 @writel_relaxed(i32 %105, i64 %110)
  %112 = load i32, i32* @VFE_0_RDI_CFG_x_MIPI_EN_BITS, align 4
  store i32 %112, i32* %5, align 4
  %113 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %114 = call i32 @VFE_0_RDI_CFG_x(i32 0)
  %115 = load i32, i32* %5, align 4
  %116 = call i32 @vfe_reg_set(%struct.vfe_device* %113, i32 %114, i32 %115)
  %117 = load i32, i32* @VFE_0_CAMIF_CFG_VFE_OUTPUT_EN, align 4
  store i32 %117, i32* %5, align 4
  %118 = load i32, i32* %5, align 4
  %119 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %120 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @VFE_0_CAMIF_CFG, align 8
  %123 = add nsw i64 %121, %122
  %124 = call i32 @writel_relaxed(i32 %118, i64 %123)
  ret void
}

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @vfe_reg_set(%struct.vfe_device*, i32, i32) #1

declare dso_local i32 @VFE_0_RDI_CFG_x(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

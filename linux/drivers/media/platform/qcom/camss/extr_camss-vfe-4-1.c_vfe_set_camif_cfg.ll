; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe-4-1.c_vfe_set_camif_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe-4-1.c_vfe_set_camif_cfg.c"
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
@VFE_0_CORE_CFG = common dso_local global i64 0, align 8
@VFE_0_CAMIF_FRAME_CFG = common dso_local global i64 0, align 8
@VFE_0_CAMIF_WINDOW_WIDTH_CFG = common dso_local global i64 0, align 8
@VFE_0_CAMIF_WINDOW_HEIGHT_CFG = common dso_local global i64 0, align 8
@VFE_0_CAMIF_SUBSAMPLE_CFG_0 = common dso_local global i64 0, align 8
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
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %25 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @VFE_0_CORE_CFG, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @writel_relaxed(i32 %23, i64 %28)
  %30 = load %struct.vfe_line*, %struct.vfe_line** %4, align 8
  %31 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i64, i64* @MSM_VFE_PAD_SINK, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %36, 2
  store i32 %37, i32* %5, align 4
  %38 = load %struct.vfe_line*, %struct.vfe_line** %4, align 8
  %39 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i64, i64* @MSM_VFE_PAD_SINK, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = shl i32 %44, 16
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %50 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @VFE_0_CAMIF_FRAME_CFG, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @writel_relaxed(i32 %48, i64 %53)
  %55 = load %struct.vfe_line*, %struct.vfe_line** %4, align 8
  %56 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i64, i64* @MSM_VFE_PAD_SINK, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = mul nsw i32 %61, 2
  %63 = sub nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %66 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @VFE_0_CAMIF_WINDOW_WIDTH_CFG, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @writel_relaxed(i32 %64, i64 %69)
  %71 = load %struct.vfe_line*, %struct.vfe_line** %4, align 8
  %72 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i64, i64* @MSM_VFE_PAD_SINK, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = sub nsw i32 %77, 1
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %81 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @VFE_0_CAMIF_WINDOW_HEIGHT_CFG, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @writel_relaxed(i32 %79, i64 %84)
  store i32 -1, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %88 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @VFE_0_CAMIF_SUBSAMPLE_CFG_0, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @writel_relaxed(i32 %86, i64 %91)
  store i32 -1, i32* %5, align 4
  %93 = load i32, i32* %5, align 4
  %94 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %95 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @VFE_0_CAMIF_IRQ_SUBSAMPLE_PATTERN, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @writel_relaxed(i32 %93, i64 %98)
  %100 = load i32, i32* @VFE_0_RDI_CFG_x_MIPI_EN_BITS, align 4
  store i32 %100, i32* %5, align 4
  %101 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %102 = call i32 @VFE_0_RDI_CFG_x(i32 0)
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @vfe_reg_set(%struct.vfe_device* %101, i32 %102, i32 %103)
  %105 = load i32, i32* @VFE_0_CAMIF_CFG_VFE_OUTPUT_EN, align 4
  store i32 %105, i32* %5, align 4
  %106 = load i32, i32* %5, align 4
  %107 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %108 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @VFE_0_CAMIF_CFG, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @writel_relaxed(i32 %106, i64 %111)
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

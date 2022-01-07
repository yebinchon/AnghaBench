; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe-4-7.c_vfe_set_demux_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe-4-7.c_vfe_set_demux_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfe_device = type { i64 }
%struct.vfe_line = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@VFE_0_DEMUX_CFG_PERIOD = common dso_local global i32 0, align 4
@VFE_0_DEMUX_CFG = common dso_local global i64 0, align 8
@VFE_0_DEMUX_GAIN_0_CH0_EVEN = common dso_local global i32 0, align 4
@VFE_0_DEMUX_GAIN_0_CH0_ODD = common dso_local global i32 0, align 4
@VFE_0_DEMUX_GAIN_0 = common dso_local global i64 0, align 8
@VFE_0_DEMUX_GAIN_1_CH1 = common dso_local global i32 0, align 4
@VFE_0_DEMUX_GAIN_1_CH2 = common dso_local global i32 0, align 4
@VFE_0_DEMUX_GAIN_1 = common dso_local global i64 0, align 8
@MSM_VFE_PAD_SINK = common dso_local global i64 0, align 8
@VFE_0_DEMUX_EVEN_CFG_PATTERN_YUYV = common dso_local global i32 0, align 4
@VFE_0_DEMUX_ODD_CFG_PATTERN_YUYV = common dso_local global i32 0, align 4
@VFE_0_DEMUX_EVEN_CFG_PATTERN_YVYU = common dso_local global i32 0, align 4
@VFE_0_DEMUX_ODD_CFG_PATTERN_YVYU = common dso_local global i32 0, align 4
@VFE_0_DEMUX_EVEN_CFG_PATTERN_UYVY = common dso_local global i32 0, align 4
@VFE_0_DEMUX_ODD_CFG_PATTERN_UYVY = common dso_local global i32 0, align 4
@VFE_0_DEMUX_EVEN_CFG_PATTERN_VYUY = common dso_local global i32 0, align 4
@VFE_0_DEMUX_ODD_CFG_PATTERN_VYUY = common dso_local global i32 0, align 4
@VFE_0_DEMUX_EVEN_CFG = common dso_local global i64 0, align 8
@VFE_0_DEMUX_ODD_CFG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfe_device*, %struct.vfe_line*)* @vfe_set_demux_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfe_set_demux_cfg(%struct.vfe_device* %0, %struct.vfe_line* %1) #0 {
  %3 = alloca %struct.vfe_device*, align 8
  %4 = alloca %struct.vfe_line*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vfe_device* %0, %struct.vfe_device** %3, align 8
  store %struct.vfe_line* %1, %struct.vfe_line** %4, align 8
  %8 = load i32, i32* @VFE_0_DEMUX_CFG_PERIOD, align 4
  %9 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %10 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @VFE_0_DEMUX_CFG, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @writel_relaxed(i32 %8, i64 %13)
  %15 = load i32, i32* @VFE_0_DEMUX_GAIN_0_CH0_EVEN, align 4
  %16 = load i32, i32* @VFE_0_DEMUX_GAIN_0_CH0_ODD, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %20 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @VFE_0_DEMUX_GAIN_0, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @writel_relaxed(i32 %18, i64 %23)
  %25 = load i32, i32* @VFE_0_DEMUX_GAIN_1_CH1, align 4
  %26 = load i32, i32* @VFE_0_DEMUX_GAIN_1_CH2, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %30 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @VFE_0_DEMUX_GAIN_1, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writel_relaxed(i32 %28, i64 %33)
  %35 = load %struct.vfe_line*, %struct.vfe_line** %4, align 8
  %36 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i64, i64* @MSM_VFE_PAD_SINK, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %49 [
    i32 129, label %42
    i32 128, label %45
    i32 131, label %48
    i32 130, label %52
  ]

42:                                               ; preds = %2
  %43 = load i32, i32* @VFE_0_DEMUX_EVEN_CFG_PATTERN_YUYV, align 4
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* @VFE_0_DEMUX_ODD_CFG_PATTERN_YUYV, align 4
  store i32 %44, i32* %7, align 4
  br label %55

45:                                               ; preds = %2
  %46 = load i32, i32* @VFE_0_DEMUX_EVEN_CFG_PATTERN_YVYU, align 4
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* @VFE_0_DEMUX_ODD_CFG_PATTERN_YVYU, align 4
  store i32 %47, i32* %7, align 4
  br label %55

48:                                               ; preds = %2
  br label %49

49:                                               ; preds = %2, %48
  %50 = load i32, i32* @VFE_0_DEMUX_EVEN_CFG_PATTERN_UYVY, align 4
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* @VFE_0_DEMUX_ODD_CFG_PATTERN_UYVY, align 4
  store i32 %51, i32* %7, align 4
  br label %55

52:                                               ; preds = %2
  %53 = load i32, i32* @VFE_0_DEMUX_EVEN_CFG_PATTERN_VYUY, align 4
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* @VFE_0_DEMUX_ODD_CFG_PATTERN_VYUY, align 4
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %52, %49, %45, %42
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %58 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @VFE_0_DEMUX_EVEN_CFG, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @writel_relaxed(i32 %56, i64 %61)
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %65 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @VFE_0_DEMUX_ODD_CFG, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @writel_relaxed(i32 %63, i64 %68)
  ret void
}

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

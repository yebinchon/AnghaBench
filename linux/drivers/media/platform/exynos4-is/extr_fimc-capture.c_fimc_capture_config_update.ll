; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-capture.c_fimc_capture_config_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-capture.c_fimc_capture_config_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_ctx = type { i32, i32, %struct.fimc_dev* }
%struct.fimc_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@ST_CAPT_APPLY_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fimc_ctx*)* @fimc_capture_config_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_capture_config_update(%struct.fimc_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fimc_ctx*, align 8
  %4 = alloca %struct.fimc_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.fimc_ctx* %0, %struct.fimc_ctx** %3, align 8
  %6 = load %struct.fimc_ctx*, %struct.fimc_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %6, i32 0, i32 2
  %8 = load %struct.fimc_dev*, %struct.fimc_dev** %7, align 8
  store %struct.fimc_dev* %8, %struct.fimc_dev** %4, align 8
  %9 = load %struct.fimc_dev*, %struct.fimc_dev** %4, align 8
  %10 = load %struct.fimc_ctx*, %struct.fimc_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %10, i32 0, i32 1
  %12 = call i32 @fimc_hw_set_camera_offset(%struct.fimc_dev* %9, i32* %11)
  %13 = load %struct.fimc_ctx*, %struct.fimc_ctx** %3, align 8
  %14 = call i32 @fimc_set_scaler_info(%struct.fimc_ctx* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %51

19:                                               ; preds = %1
  %20 = load %struct.fimc_ctx*, %struct.fimc_ctx** %3, align 8
  %21 = call i32 @fimc_hw_set_prescaler(%struct.fimc_ctx* %20)
  %22 = load %struct.fimc_ctx*, %struct.fimc_ctx** %3, align 8
  %23 = call i32 @fimc_hw_set_mainscaler(%struct.fimc_ctx* %22)
  %24 = load %struct.fimc_ctx*, %struct.fimc_ctx** %3, align 8
  %25 = call i32 @fimc_hw_set_target_format(%struct.fimc_ctx* %24)
  %26 = load %struct.fimc_ctx*, %struct.fimc_ctx** %3, align 8
  %27 = call i32 @fimc_hw_set_rotation(%struct.fimc_ctx* %26)
  %28 = load %struct.fimc_ctx*, %struct.fimc_ctx** %3, align 8
  %29 = call i32 @fimc_hw_set_effect(%struct.fimc_ctx* %28)
  %30 = load %struct.fimc_ctx*, %struct.fimc_ctx** %3, align 8
  %31 = load %struct.fimc_ctx*, %struct.fimc_ctx** %3, align 8
  %32 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %31, i32 0, i32 0
  %33 = call i32 @fimc_prepare_dma_offset(%struct.fimc_ctx* %30, i32* %32)
  %34 = load %struct.fimc_ctx*, %struct.fimc_ctx** %3, align 8
  %35 = call i32 @fimc_hw_set_out_dma(%struct.fimc_ctx* %34)
  %36 = load %struct.fimc_dev*, %struct.fimc_dev** %4, align 8
  %37 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %19
  %43 = load %struct.fimc_ctx*, %struct.fimc_ctx** %3, align 8
  %44 = call i32 @fimc_hw_set_rgb_alpha(%struct.fimc_ctx* %43)
  br label %45

45:                                               ; preds = %42, %19
  %46 = load i32, i32* @ST_CAPT_APPLY_CFG, align 4
  %47 = load %struct.fimc_dev*, %struct.fimc_dev** %4, align 8
  %48 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %47, i32 0, i32 0
  %49 = call i32 @clear_bit(i32 %46, i32* %48)
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %45, %17
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @fimc_hw_set_camera_offset(%struct.fimc_dev*, i32*) #1

declare dso_local i32 @fimc_set_scaler_info(%struct.fimc_ctx*) #1

declare dso_local i32 @fimc_hw_set_prescaler(%struct.fimc_ctx*) #1

declare dso_local i32 @fimc_hw_set_mainscaler(%struct.fimc_ctx*) #1

declare dso_local i32 @fimc_hw_set_target_format(%struct.fimc_ctx*) #1

declare dso_local i32 @fimc_hw_set_rotation(%struct.fimc_ctx*) #1

declare dso_local i32 @fimc_hw_set_effect(%struct.fimc_ctx*) #1

declare dso_local i32 @fimc_prepare_dma_offset(%struct.fimc_ctx*, i32*) #1

declare dso_local i32 @fimc_hw_set_out_dma(%struct.fimc_ctx*) #1

declare dso_local i32 @fimc_hw_set_rgb_alpha(%struct.fimc_ctx*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

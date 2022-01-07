; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-capture.c_fimc_capture_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-capture.c_fimc_capture_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_dev = type { i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { %struct.fimc_ctx*, %struct.fimc_source_info }
%struct.fimc_ctx = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32* }
%struct.fimc_source_info = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@FIMC_BUS_TYPE_ISP_WRITEBACK = common dso_local global i64 0, align 8
@ST_CAPT_APPLY_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fimc_dev*)* @fimc_capture_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_capture_hw_init(%struct.fimc_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fimc_dev*, align 8
  %4 = alloca %struct.fimc_source_info*, align 8
  %5 = alloca %struct.fimc_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.fimc_dev* %0, %struct.fimc_dev** %3, align 8
  %8 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %9 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  store %struct.fimc_source_info* %10, %struct.fimc_source_info** %4, align 8
  %11 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %12 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.fimc_ctx*, %struct.fimc_ctx** %13, align 8
  store %struct.fimc_ctx* %14, %struct.fimc_ctx** %5, align 8
  %15 = load %struct.fimc_ctx*, %struct.fimc_ctx** %5, align 8
  %16 = icmp eq %struct.fimc_ctx* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %1
  %18 = load %struct.fimc_ctx*, %struct.fimc_ctx** %5, align 8
  %19 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %17, %1
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %105

26:                                               ; preds = %17
  %27 = load %struct.fimc_source_info*, %struct.fimc_source_info** %4, align 8
  %28 = getelementptr inbounds %struct.fimc_source_info, %struct.fimc_source_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @FIMC_BUS_TYPE_ISP_WRITEBACK, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %26
  %33 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %34 = call i32 @fimc_hw_camblk_cfg_writeback(%struct.fimc_dev* %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %2, align 4
  br label %105

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39, %26
  %41 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %42 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %41, i32 0, i32 0
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @spin_lock_irqsave(i32* %42, i64 %43)
  %45 = load %struct.fimc_ctx*, %struct.fimc_ctx** %5, align 8
  %46 = load %struct.fimc_ctx*, %struct.fimc_ctx** %5, align 8
  %47 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %46, i32 0, i32 1
  %48 = call i32 @fimc_prepare_dma_offset(%struct.fimc_ctx* %45, i32* %47)
  %49 = load %struct.fimc_ctx*, %struct.fimc_ctx** %5, align 8
  %50 = call i32 @fimc_set_yuv_order(%struct.fimc_ctx* %49)
  %51 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %52 = load %struct.fimc_source_info*, %struct.fimc_source_info** %4, align 8
  %53 = call i32 @fimc_hw_set_camera_polarity(%struct.fimc_dev* %51, %struct.fimc_source_info* %52)
  %54 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %55 = load %struct.fimc_source_info*, %struct.fimc_source_info** %4, align 8
  %56 = call i32 @fimc_hw_set_camera_type(%struct.fimc_dev* %54, %struct.fimc_source_info* %55)
  %57 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %58 = load %struct.fimc_source_info*, %struct.fimc_source_info** %4, align 8
  %59 = call i32 @fimc_hw_set_camera_source(%struct.fimc_dev* %57, %struct.fimc_source_info* %58)
  %60 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %61 = load %struct.fimc_ctx*, %struct.fimc_ctx** %5, align 8
  %62 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %61, i32 0, i32 0
  %63 = call i32 @fimc_hw_set_camera_offset(%struct.fimc_dev* %60, %struct.TYPE_6__* %62)
  %64 = load %struct.fimc_ctx*, %struct.fimc_ctx** %5, align 8
  %65 = call i32 @fimc_set_scaler_info(%struct.fimc_ctx* %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %99, label %68

68:                                               ; preds = %40
  %69 = load %struct.fimc_ctx*, %struct.fimc_ctx** %5, align 8
  %70 = call i32 @fimc_hw_set_input_path(%struct.fimc_ctx* %69)
  %71 = load %struct.fimc_ctx*, %struct.fimc_ctx** %5, align 8
  %72 = call i32 @fimc_hw_set_prescaler(%struct.fimc_ctx* %71)
  %73 = load %struct.fimc_ctx*, %struct.fimc_ctx** %5, align 8
  %74 = call i32 @fimc_hw_set_mainscaler(%struct.fimc_ctx* %73)
  %75 = load %struct.fimc_ctx*, %struct.fimc_ctx** %5, align 8
  %76 = call i32 @fimc_hw_set_target_format(%struct.fimc_ctx* %75)
  %77 = load %struct.fimc_ctx*, %struct.fimc_ctx** %5, align 8
  %78 = call i32 @fimc_hw_set_rotation(%struct.fimc_ctx* %77)
  %79 = load %struct.fimc_ctx*, %struct.fimc_ctx** %5, align 8
  %80 = call i32 @fimc_hw_set_effect(%struct.fimc_ctx* %79)
  %81 = load %struct.fimc_ctx*, %struct.fimc_ctx** %5, align 8
  %82 = call i32 @fimc_hw_set_output_path(%struct.fimc_ctx* %81)
  %83 = load %struct.fimc_ctx*, %struct.fimc_ctx** %5, align 8
  %84 = call i32 @fimc_hw_set_out_dma(%struct.fimc_ctx* %83)
  %85 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %86 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %85, i32 0, i32 2
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %68
  %92 = load %struct.fimc_ctx*, %struct.fimc_ctx** %5, align 8
  %93 = call i32 @fimc_hw_set_rgb_alpha(%struct.fimc_ctx* %92)
  br label %94

94:                                               ; preds = %91, %68
  %95 = load i32, i32* @ST_CAPT_APPLY_CFG, align 4
  %96 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %97 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %96, i32 0, i32 1
  %98 = call i32 @clear_bit(i32 %95, i32* %97)
  br label %99

99:                                               ; preds = %94, %40
  %100 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %101 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %100, i32 0, i32 0
  %102 = load i64, i64* %7, align 8
  %103 = call i32 @spin_unlock_irqrestore(i32* %101, i64 %102)
  %104 = load i32, i32* %6, align 4
  store i32 %104, i32* %2, align 4
  br label %105

105:                                              ; preds = %99, %37, %23
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32 @fimc_hw_camblk_cfg_writeback(%struct.fimc_dev*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @fimc_prepare_dma_offset(%struct.fimc_ctx*, i32*) #1

declare dso_local i32 @fimc_set_yuv_order(%struct.fimc_ctx*) #1

declare dso_local i32 @fimc_hw_set_camera_polarity(%struct.fimc_dev*, %struct.fimc_source_info*) #1

declare dso_local i32 @fimc_hw_set_camera_type(%struct.fimc_dev*, %struct.fimc_source_info*) #1

declare dso_local i32 @fimc_hw_set_camera_source(%struct.fimc_dev*, %struct.fimc_source_info*) #1

declare dso_local i32 @fimc_hw_set_camera_offset(%struct.fimc_dev*, %struct.TYPE_6__*) #1

declare dso_local i32 @fimc_set_scaler_info(%struct.fimc_ctx*) #1

declare dso_local i32 @fimc_hw_set_input_path(%struct.fimc_ctx*) #1

declare dso_local i32 @fimc_hw_set_prescaler(%struct.fimc_ctx*) #1

declare dso_local i32 @fimc_hw_set_mainscaler(%struct.fimc_ctx*) #1

declare dso_local i32 @fimc_hw_set_target_format(%struct.fimc_ctx*) #1

declare dso_local i32 @fimc_hw_set_rotation(%struct.fimc_ctx*) #1

declare dso_local i32 @fimc_hw_set_effect(%struct.fimc_ctx*) #1

declare dso_local i32 @fimc_hw_set_output_path(%struct.fimc_ctx*) #1

declare dso_local i32 @fimc_hw_set_out_dma(%struct.fimc_ctx*) #1

declare dso_local i32 @fimc_hw_set_rgb_alpha(%struct.fimc_ctx*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

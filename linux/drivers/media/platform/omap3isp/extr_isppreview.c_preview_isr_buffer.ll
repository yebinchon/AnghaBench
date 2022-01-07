; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isppreview.c_preview_isr_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isppreview.c_preview_isr_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_prev_device = type { i32, i64, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.isp_pipeline = type { i32 }
%struct.isp_buffer = type { i32 }

@PREVIEW_OUTPUT_MEMORY = common dso_local global i32 0, align 4
@ISP_PIPELINE_IDLE_OUTPUT = common dso_local global i32 0, align 4
@PREVIEW_INPUT_MEMORY = common dso_local global i64 0, align 8
@ISP_PIPELINE_IDLE_INPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_prev_device*)* @preview_isr_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @preview_isr_buffer(%struct.isp_prev_device* %0) #0 {
  %2 = alloca %struct.isp_prev_device*, align 8
  %3 = alloca %struct.isp_pipeline*, align 8
  %4 = alloca %struct.isp_buffer*, align 8
  %5 = alloca i32, align 4
  store %struct.isp_prev_device* %0, %struct.isp_prev_device** %2, align 8
  %6 = load %struct.isp_prev_device*, %struct.isp_prev_device** %2, align 8
  %7 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call %struct.isp_pipeline* @to_isp_pipeline(i32* %8)
  store %struct.isp_pipeline* %9, %struct.isp_pipeline** %3, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.isp_prev_device*, %struct.isp_prev_device** %2, align 8
  %11 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @PREVIEW_OUTPUT_MEMORY, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %1
  %17 = load %struct.isp_prev_device*, %struct.isp_prev_device** %2, align 8
  %18 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %17, i32 0, i32 4
  %19 = call %struct.isp_buffer* @omap3isp_video_buffer_next(i32* %18)
  store %struct.isp_buffer* %19, %struct.isp_buffer** %4, align 8
  %20 = load %struct.isp_buffer*, %struct.isp_buffer** %4, align 8
  %21 = icmp ne %struct.isp_buffer* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = load %struct.isp_prev_device*, %struct.isp_prev_device** %2, align 8
  %24 = load %struct.isp_buffer*, %struct.isp_buffer** %4, align 8
  %25 = getelementptr inbounds %struct.isp_buffer, %struct.isp_buffer* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @preview_set_outaddr(%struct.isp_prev_device* %23, i32 %26)
  store i32 1, i32* %5, align 4
  br label %28

28:                                               ; preds = %22, %16
  %29 = load i32, i32* @ISP_PIPELINE_IDLE_OUTPUT, align 4
  %30 = load %struct.isp_pipeline*, %struct.isp_pipeline** %3, align 8
  %31 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %28, %1
  %35 = load %struct.isp_prev_device*, %struct.isp_prev_device** %2, align 8
  %36 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @PREVIEW_INPUT_MEMORY, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %58

40:                                               ; preds = %34
  %41 = load %struct.isp_prev_device*, %struct.isp_prev_device** %2, align 8
  %42 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %41, i32 0, i32 3
  %43 = call %struct.isp_buffer* @omap3isp_video_buffer_next(i32* %42)
  store %struct.isp_buffer* %43, %struct.isp_buffer** %4, align 8
  %44 = load %struct.isp_buffer*, %struct.isp_buffer** %4, align 8
  %45 = icmp ne %struct.isp_buffer* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load %struct.isp_prev_device*, %struct.isp_prev_device** %2, align 8
  %48 = load %struct.isp_buffer*, %struct.isp_buffer** %4, align 8
  %49 = getelementptr inbounds %struct.isp_buffer, %struct.isp_buffer* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @preview_set_inaddr(%struct.isp_prev_device* %47, i32 %50)
  br label %52

52:                                               ; preds = %46, %40
  %53 = load i32, i32* @ISP_PIPELINE_IDLE_INPUT, align 4
  %54 = load %struct.isp_pipeline*, %struct.isp_pipeline** %3, align 8
  %55 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %52, %34
  %59 = load %struct.isp_prev_device*, %struct.isp_prev_device** %2, align 8
  %60 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  switch i32 %61, label %78 [
    i32 129, label %62
    i32 130, label %70
    i32 128, label %77
  ]

62:                                               ; preds = %58
  %63 = load %struct.isp_pipeline*, %struct.isp_pipeline** %3, align 8
  %64 = call i32 @isp_pipeline_ready(%struct.isp_pipeline* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load %struct.isp_pipeline*, %struct.isp_pipeline** %3, align 8
  %68 = call i32 @omap3isp_pipeline_set_stream(%struct.isp_pipeline* %67, i32 129)
  br label %69

69:                                               ; preds = %66, %62
  br label %79

70:                                               ; preds = %58
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load %struct.isp_prev_device*, %struct.isp_prev_device** %2, align 8
  %75 = call i32 @preview_enable_oneshot(%struct.isp_prev_device* %74)
  br label %76

76:                                               ; preds = %73, %70
  br label %79

77:                                               ; preds = %58
  br label %78

78:                                               ; preds = %58, %77
  br label %79

79:                                               ; preds = %78, %76, %69
  ret void
}

declare dso_local %struct.isp_pipeline* @to_isp_pipeline(i32*) #1

declare dso_local %struct.isp_buffer* @omap3isp_video_buffer_next(i32*) #1

declare dso_local i32 @preview_set_outaddr(%struct.isp_prev_device*, i32) #1

declare dso_local i32 @preview_set_inaddr(%struct.isp_prev_device*, i32) #1

declare dso_local i32 @isp_pipeline_ready(%struct.isp_pipeline*) #1

declare dso_local i32 @omap3isp_pipeline_set_stream(%struct.isp_pipeline*, i32) #1

declare dso_local i32 @preview_enable_oneshot(%struct.isp_prev_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

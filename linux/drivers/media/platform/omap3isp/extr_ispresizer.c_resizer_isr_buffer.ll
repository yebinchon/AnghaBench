; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispresizer.c_resizer_isr_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispresizer.c_resizer_isr_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_res_device = type { i64, i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.isp_pipeline = type { i32 }
%struct.isp_buffer = type { i32 }

@ISP_PIPELINE_STREAM_STOPPED = common dso_local global i64 0, align 8
@ISP_PIPELINE_IDLE_OUTPUT = common dso_local global i32 0, align 4
@RESIZER_INPUT_MEMORY = common dso_local global i64 0, align 8
@ISP_PIPELINE_IDLE_INPUT = common dso_local global i32 0, align 4
@ISP_PIPELINE_STREAM_SINGLESHOT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_res_device*)* @resizer_isr_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resizer_isr_buffer(%struct.isp_res_device* %0) #0 {
  %2 = alloca %struct.isp_res_device*, align 8
  %3 = alloca %struct.isp_pipeline*, align 8
  %4 = alloca %struct.isp_buffer*, align 8
  %5 = alloca i32, align 4
  store %struct.isp_res_device* %0, %struct.isp_res_device** %2, align 8
  %6 = load %struct.isp_res_device*, %struct.isp_res_device** %2, align 8
  %7 = getelementptr inbounds %struct.isp_res_device, %struct.isp_res_device* %6, i32 0, i32 4
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call %struct.isp_pipeline* @to_isp_pipeline(i32* %8)
  store %struct.isp_pipeline* %9, %struct.isp_pipeline** %3, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.isp_res_device*, %struct.isp_res_device** %2, align 8
  %11 = getelementptr inbounds %struct.isp_res_device, %struct.isp_res_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @ISP_PIPELINE_STREAM_STOPPED, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %79

16:                                               ; preds = %1
  %17 = load %struct.isp_res_device*, %struct.isp_res_device** %2, align 8
  %18 = getelementptr inbounds %struct.isp_res_device, %struct.isp_res_device* %17, i32 0, i32 3
  %19 = call %struct.isp_buffer* @omap3isp_video_buffer_next(i32* %18)
  store %struct.isp_buffer* %19, %struct.isp_buffer** %4, align 8
  %20 = load %struct.isp_buffer*, %struct.isp_buffer** %4, align 8
  %21 = icmp ne %struct.isp_buffer* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = load %struct.isp_res_device*, %struct.isp_res_device** %2, align 8
  %24 = load %struct.isp_buffer*, %struct.isp_buffer** %4, align 8
  %25 = getelementptr inbounds %struct.isp_buffer, %struct.isp_buffer* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @resizer_set_outaddr(%struct.isp_res_device* %23, i32 %26)
  store i32 1, i32* %5, align 4
  br label %28

28:                                               ; preds = %22, %16
  %29 = load i32, i32* @ISP_PIPELINE_IDLE_OUTPUT, align 4
  %30 = load %struct.isp_pipeline*, %struct.isp_pipeline** %3, align 8
  %31 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load %struct.isp_res_device*, %struct.isp_res_device** %2, align 8
  %35 = getelementptr inbounds %struct.isp_res_device, %struct.isp_res_device* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @RESIZER_INPUT_MEMORY, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %57

39:                                               ; preds = %28
  %40 = load %struct.isp_res_device*, %struct.isp_res_device** %2, align 8
  %41 = getelementptr inbounds %struct.isp_res_device, %struct.isp_res_device* %40, i32 0, i32 2
  %42 = call %struct.isp_buffer* @omap3isp_video_buffer_next(i32* %41)
  store %struct.isp_buffer* %42, %struct.isp_buffer** %4, align 8
  %43 = load %struct.isp_buffer*, %struct.isp_buffer** %4, align 8
  %44 = icmp ne %struct.isp_buffer* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load %struct.isp_res_device*, %struct.isp_res_device** %2, align 8
  %47 = load %struct.isp_buffer*, %struct.isp_buffer** %4, align 8
  %48 = getelementptr inbounds %struct.isp_buffer, %struct.isp_buffer* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @resizer_set_inaddr(%struct.isp_res_device* %46, i32 %49)
  br label %51

51:                                               ; preds = %45, %39
  %52 = load i32, i32* @ISP_PIPELINE_IDLE_INPUT, align 4
  %53 = load %struct.isp_pipeline*, %struct.isp_pipeline** %3, align 8
  %54 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %51, %28
  %58 = load %struct.isp_res_device*, %struct.isp_res_device** %2, align 8
  %59 = getelementptr inbounds %struct.isp_res_device, %struct.isp_res_device* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @ISP_PIPELINE_STREAM_SINGLESHOT, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %57
  %64 = load %struct.isp_pipeline*, %struct.isp_pipeline** %3, align 8
  %65 = call i64 @isp_pipeline_ready(%struct.isp_pipeline* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load %struct.isp_pipeline*, %struct.isp_pipeline** %3, align 8
  %69 = load i64, i64* @ISP_PIPELINE_STREAM_SINGLESHOT, align 8
  %70 = call i32 @omap3isp_pipeline_set_stream(%struct.isp_pipeline* %68, i64 %69)
  br label %71

71:                                               ; preds = %67, %63
  br label %79

72:                                               ; preds = %57
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load %struct.isp_res_device*, %struct.isp_res_device** %2, align 8
  %77 = call i32 @resizer_enable_oneshot(%struct.isp_res_device* %76)
  br label %78

78:                                               ; preds = %75, %72
  br label %79

79:                                               ; preds = %15, %78, %71
  ret void
}

declare dso_local %struct.isp_pipeline* @to_isp_pipeline(i32*) #1

declare dso_local %struct.isp_buffer* @omap3isp_video_buffer_next(i32*) #1

declare dso_local i32 @resizer_set_outaddr(%struct.isp_res_device*, i32) #1

declare dso_local i32 @resizer_set_inaddr(%struct.isp_res_device*, i32) #1

declare dso_local i64 @isp_pipeline_ready(%struct.isp_pipeline*) #1

declare dso_local i32 @omap3isp_pipeline_set_stream(%struct.isp_pipeline*, i64) #1

declare dso_local i32 @resizer_enable_oneshot(%struct.isp_res_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

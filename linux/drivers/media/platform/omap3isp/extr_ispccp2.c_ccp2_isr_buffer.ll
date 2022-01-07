; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccp2.c_ccp2_isr_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccp2.c_ccp2_isr_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_ccp2_device = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.isp_pipeline = type { i32 }
%struct.isp_buffer = type { i32 }

@ISP_PIPELINE_IDLE_INPUT = common dso_local global i32 0, align 4
@ISP_PIPELINE_STREAM_SINGLESHOT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_ccp2_device*)* @ccp2_isr_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccp2_isr_buffer(%struct.isp_ccp2_device* %0) #0 {
  %2 = alloca %struct.isp_ccp2_device*, align 8
  %3 = alloca %struct.isp_pipeline*, align 8
  %4 = alloca %struct.isp_buffer*, align 8
  store %struct.isp_ccp2_device* %0, %struct.isp_ccp2_device** %2, align 8
  %5 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %2, align 8
  %6 = getelementptr inbounds %struct.isp_ccp2_device, %struct.isp_ccp2_device* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = call %struct.isp_pipeline* @to_isp_pipeline(i32* %7)
  store %struct.isp_pipeline* %8, %struct.isp_pipeline** %3, align 8
  %9 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %2, align 8
  %10 = getelementptr inbounds %struct.isp_ccp2_device, %struct.isp_ccp2_device* %9, i32 0, i32 1
  %11 = call %struct.isp_buffer* @omap3isp_video_buffer_next(i32* %10)
  store %struct.isp_buffer* %11, %struct.isp_buffer** %4, align 8
  %12 = load %struct.isp_buffer*, %struct.isp_buffer** %4, align 8
  %13 = icmp ne %struct.isp_buffer* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %2, align 8
  %16 = load %struct.isp_buffer*, %struct.isp_buffer** %4, align 8
  %17 = getelementptr inbounds %struct.isp_buffer, %struct.isp_buffer* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ccp2_set_inaddr(%struct.isp_ccp2_device* %15, i32 %18)
  br label %20

20:                                               ; preds = %14, %1
  %21 = load i32, i32* @ISP_PIPELINE_IDLE_INPUT, align 4
  %22 = load %struct.isp_pipeline*, %struct.isp_pipeline** %3, align 8
  %23 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %2, align 8
  %27 = getelementptr inbounds %struct.isp_ccp2_device, %struct.isp_ccp2_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ISP_PIPELINE_STREAM_SINGLESHOT, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %20
  %32 = load %struct.isp_pipeline*, %struct.isp_pipeline** %3, align 8
  %33 = call i64 @isp_pipeline_ready(%struct.isp_pipeline* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load %struct.isp_pipeline*, %struct.isp_pipeline** %3, align 8
  %37 = load i64, i64* @ISP_PIPELINE_STREAM_SINGLESHOT, align 8
  %38 = call i32 @omap3isp_pipeline_set_stream(%struct.isp_pipeline* %36, i64 %37)
  br label %39

39:                                               ; preds = %35, %31
  br label %40

40:                                               ; preds = %39, %20
  ret void
}

declare dso_local %struct.isp_pipeline* @to_isp_pipeline(i32*) #1

declare dso_local %struct.isp_buffer* @omap3isp_video_buffer_next(i32*) #1

declare dso_local i32 @ccp2_set_inaddr(%struct.isp_ccp2_device*, i32) #1

declare dso_local i64 @isp_pipeline_ready(%struct.isp_pipeline*) #1

declare dso_local i32 @omap3isp_pipeline_set_stream(%struct.isp_pipeline*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

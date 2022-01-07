; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispresizer.c_omap3isp_resizer_isr_frame_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispresizer.c_omap3isp_resizer_isr_frame_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_res_device = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ISP_PIPELINE_STREAM_CONTINUOUS = common dso_local global i64 0, align 8
@ISP_VIDEO_DMAQUEUE_QUEUED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap3isp_resizer_isr_frame_sync(%struct.isp_res_device* %0) #0 {
  %2 = alloca %struct.isp_res_device*, align 8
  store %struct.isp_res_device* %0, %struct.isp_res_device** %2, align 8
  %3 = load %struct.isp_res_device*, %struct.isp_res_device** %2, align 8
  %4 = getelementptr inbounds %struct.isp_res_device, %struct.isp_res_device* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @ISP_PIPELINE_STREAM_CONTINUOUS, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %22

8:                                                ; preds = %1
  %9 = load %struct.isp_res_device*, %struct.isp_res_device** %2, align 8
  %10 = getelementptr inbounds %struct.isp_res_device, %struct.isp_res_device* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @ISP_VIDEO_DMAQUEUE_QUEUED, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %8
  %17 = load %struct.isp_res_device*, %struct.isp_res_device** %2, align 8
  %18 = call i32 @resizer_enable_oneshot(%struct.isp_res_device* %17)
  %19 = load %struct.isp_res_device*, %struct.isp_res_device** %2, align 8
  %20 = getelementptr inbounds %struct.isp_res_device, %struct.isp_res_device* %19, i32 0, i32 1
  %21 = call i32 @isp_video_dmaqueue_flags_clr(%struct.TYPE_2__* %20)
  br label %22

22:                                               ; preds = %16, %8, %1
  ret void
}

declare dso_local i32 @resizer_enable_oneshot(%struct.isp_res_device*) #1

declare dso_local i32 @isp_video_dmaqueue_flags_clr(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

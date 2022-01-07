; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_ccdc_hs_vs_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_ccdc_hs_vs_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_ccdc_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.video_device*, i32 }
%struct.video_device = type { i32 }
%struct.isp_pipeline = type { i32 }
%struct.v4l2_event = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@V4L2_EVENT_FRAME_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_ccdc_device*)* @ccdc_hs_vs_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccdc_hs_vs_isr(%struct.isp_ccdc_device* %0) #0 {
  %2 = alloca %struct.isp_ccdc_device*, align 8
  %3 = alloca %struct.isp_pipeline*, align 8
  %4 = alloca %struct.video_device*, align 8
  %5 = alloca %struct.v4l2_event, align 4
  store %struct.isp_ccdc_device* %0, %struct.isp_ccdc_device** %2, align 8
  %6 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %7 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %9 = call %struct.isp_pipeline* @to_isp_pipeline(i32* %8)
  store %struct.isp_pipeline* %9, %struct.isp_pipeline** %3, align 8
  %10 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %11 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.video_device*, %struct.video_device** %12, align 8
  store %struct.video_device* %13, %struct.video_device** %4, align 8
  %14 = load %struct.isp_pipeline*, %struct.isp_pipeline** %3, align 8
  %15 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %14, i32 0, i32 0
  %16 = call i32 @atomic_inc(i32* %15)
  %17 = call i32 @memset(%struct.v4l2_event* %5, i32 0, i32 8)
  %18 = load i32, i32* @V4L2_EVENT_FRAME_SYNC, align 4
  %19 = getelementptr inbounds %struct.v4l2_event, %struct.v4l2_event* %5, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = load %struct.isp_pipeline*, %struct.isp_pipeline** %3, align 8
  %21 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %20, i32 0, i32 0
  %22 = call i32 @atomic_read(i32* %21)
  %23 = getelementptr inbounds %struct.v4l2_event, %struct.v4l2_event* %5, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 4
  %26 = load %struct.video_device*, %struct.video_device** %4, align 8
  %27 = call i32 @v4l2_event_queue(%struct.video_device* %26, %struct.v4l2_event* %5)
  ret void
}

declare dso_local %struct.isp_pipeline* @to_isp_pipeline(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @memset(%struct.v4l2_event*, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @v4l2_event_queue(%struct.video_device*, %struct.v4l2_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

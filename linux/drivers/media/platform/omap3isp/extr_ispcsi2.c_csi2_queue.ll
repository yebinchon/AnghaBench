; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispcsi2.c_csi2_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispcsi2.c_csi2_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_video = type { %struct.isp_device* }
%struct.isp_device = type { %struct.isp_csi2_device }
%struct.isp_csi2_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.isp_buffer = type { i32 }

@ISP_VIDEO_DMAQUEUE_UNDERRUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isp_video*, %struct.isp_buffer*)* @csi2_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csi2_queue(%struct.isp_video* %0, %struct.isp_buffer* %1) #0 {
  %3 = alloca %struct.isp_video*, align 8
  %4 = alloca %struct.isp_buffer*, align 8
  %5 = alloca %struct.isp_device*, align 8
  %6 = alloca %struct.isp_csi2_device*, align 8
  store %struct.isp_video* %0, %struct.isp_video** %3, align 8
  store %struct.isp_buffer* %1, %struct.isp_buffer** %4, align 8
  %7 = load %struct.isp_video*, %struct.isp_video** %3, align 8
  %8 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %7, i32 0, i32 0
  %9 = load %struct.isp_device*, %struct.isp_device** %8, align 8
  store %struct.isp_device* %9, %struct.isp_device** %5, align 8
  %10 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %11 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %10, i32 0, i32 0
  store %struct.isp_csi2_device* %11, %struct.isp_csi2_device** %6, align 8
  %12 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %6, align 8
  %13 = load %struct.isp_buffer*, %struct.isp_buffer** %4, align 8
  %14 = getelementptr inbounds %struct.isp_buffer, %struct.isp_buffer* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @csi2_set_outaddr(%struct.isp_csi2_device* %12, i32 %15)
  %17 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %6, align 8
  %18 = getelementptr inbounds %struct.isp_csi2_device, %struct.isp_csi2_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ISP_VIDEO_DMAQUEUE_UNDERRUN, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %2
  %25 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %26 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %6, align 8
  %27 = call i32 @csi2_if_enable(%struct.isp_device* %25, %struct.isp_csi2_device* %26, i32 1)
  %28 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %29 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %6, align 8
  %30 = call i32 @csi2_ctx_enable(%struct.isp_device* %28, %struct.isp_csi2_device* %29, i32 0, i32 1)
  %31 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %6, align 8
  %32 = getelementptr inbounds %struct.isp_csi2_device, %struct.isp_csi2_device* %31, i32 0, i32 0
  %33 = call i32 @isp_video_dmaqueue_flags_clr(%struct.TYPE_2__* %32)
  br label %34

34:                                               ; preds = %24, %2
  ret i32 0
}

declare dso_local i32 @csi2_set_outaddr(%struct.isp_csi2_device*, i32) #1

declare dso_local i32 @csi2_if_enable(%struct.isp_device*, %struct.isp_csi2_device*, i32) #1

declare dso_local i32 @csi2_ctx_enable(%struct.isp_device*, %struct.isp_csi2_device*, i32, i32) #1

declare dso_local i32 @isp_video_dmaqueue_flags_clr(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

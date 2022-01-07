; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccp2.c_ccp2_video_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccp2.c_ccp2_video_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_video = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.isp_ccp2_device }
%struct.isp_ccp2_device = type { i32 }
%struct.isp_buffer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isp_video*, %struct.isp_buffer*)* @ccp2_video_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccp2_video_queue(%struct.isp_video* %0, %struct.isp_buffer* %1) #0 {
  %3 = alloca %struct.isp_video*, align 8
  %4 = alloca %struct.isp_buffer*, align 8
  %5 = alloca %struct.isp_ccp2_device*, align 8
  store %struct.isp_video* %0, %struct.isp_video** %3, align 8
  store %struct.isp_buffer* %1, %struct.isp_buffer** %4, align 8
  %6 = load %struct.isp_video*, %struct.isp_video** %3, align 8
  %7 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.isp_ccp2_device* %9, %struct.isp_ccp2_device** %5, align 8
  %10 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %5, align 8
  %11 = load %struct.isp_buffer*, %struct.isp_buffer** %4, align 8
  %12 = getelementptr inbounds %struct.isp_buffer, %struct.isp_buffer* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ccp2_set_inaddr(%struct.isp_ccp2_device* %10, i32 %13)
  ret i32 0
}

declare dso_local i32 @ccp2_set_inaddr(%struct.isp_ccp2_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

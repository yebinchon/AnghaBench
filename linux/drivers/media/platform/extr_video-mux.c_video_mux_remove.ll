; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_video-mux.c_video_mux_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_video-mux.c_video_mux_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.video_mux = type { %struct.v4l2_subdev }
%struct.v4l2_subdev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @video_mux_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @video_mux_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.video_mux*, align 8
  %4 = alloca %struct.v4l2_subdev*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.video_mux* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.video_mux* %6, %struct.video_mux** %3, align 8
  %7 = load %struct.video_mux*, %struct.video_mux** %3, align 8
  %8 = getelementptr inbounds %struct.video_mux, %struct.video_mux* %7, i32 0, i32 0
  store %struct.v4l2_subdev* %8, %struct.v4l2_subdev** %4, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %10 = call i32 @v4l2_async_unregister_subdev(%struct.v4l2_subdev* %9)
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %12 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %11, i32 0, i32 0
  %13 = call i32 @media_entity_cleanup(i32* %12)
  ret i32 0
}

declare dso_local %struct.video_mux* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @v4l2_async_unregister_subdev(%struct.v4l2_subdev*) #1

declare dso_local i32 @media_entity_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

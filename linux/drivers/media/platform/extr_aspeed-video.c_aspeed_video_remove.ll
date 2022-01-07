; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_aspeed-video.c_aspeed_video_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_aspeed-video.c_aspeed_video_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.v4l2_device = type { i32 }
%struct.aspeed_video = type { %struct.TYPE_2__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@VE_JPEG_HEADER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @aspeed_video_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aspeed_video_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.v4l2_device*, align 8
  %5 = alloca %struct.aspeed_video*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  store %struct.device* %7, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.v4l2_device* @dev_get_drvdata(%struct.device* %8)
  store %struct.v4l2_device* %9, %struct.v4l2_device** %4, align 8
  %10 = load %struct.v4l2_device*, %struct.v4l2_device** %4, align 8
  %11 = call %struct.aspeed_video* @to_aspeed_video(%struct.v4l2_device* %10)
  store %struct.aspeed_video* %11, %struct.aspeed_video** %5, align 8
  %12 = load %struct.aspeed_video*, %struct.aspeed_video** %5, align 8
  %13 = call i32 @aspeed_video_off(%struct.aspeed_video* %12)
  %14 = load %struct.aspeed_video*, %struct.aspeed_video** %5, align 8
  %15 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @clk_unprepare(i32 %16)
  %18 = load %struct.aspeed_video*, %struct.aspeed_video** %5, align 8
  %19 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @clk_unprepare(i32 %20)
  %22 = load %struct.aspeed_video*, %struct.aspeed_video** %5, align 8
  %23 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %22, i32 0, i32 4
  %24 = call i32 @video_unregister_device(i32* %23)
  %25 = load %struct.aspeed_video*, %struct.aspeed_video** %5, align 8
  %26 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %25, i32 0, i32 3
  %27 = call i32 @vb2_queue_release(i32* %26)
  %28 = load %struct.aspeed_video*, %struct.aspeed_video** %5, align 8
  %29 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %28, i32 0, i32 2
  %30 = call i32 @v4l2_ctrl_handler_free(i32* %29)
  %31 = load %struct.v4l2_device*, %struct.v4l2_device** %4, align 8
  %32 = call i32 @v4l2_device_unregister(%struct.v4l2_device* %31)
  %33 = load %struct.aspeed_video*, %struct.aspeed_video** %5, align 8
  %34 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @VE_JPEG_HEADER_SIZE, align 4
  %37 = load %struct.aspeed_video*, %struct.aspeed_video** %5, align 8
  %38 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.aspeed_video*, %struct.aspeed_video** %5, align 8
  %42 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dma_free_coherent(i32 %35, i32 %36, i32 %40, i32 %44)
  %46 = load %struct.device*, %struct.device** %3, align 8
  %47 = call i32 @of_reserved_mem_device_release(%struct.device* %46)
  ret i32 0
}

declare dso_local %struct.v4l2_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.aspeed_video* @to_aspeed_video(%struct.v4l2_device*) #1

declare dso_local i32 @aspeed_video_off(%struct.aspeed_video*) #1

declare dso_local i32 @clk_unprepare(i32) #1

declare dso_local i32 @video_unregister_device(i32*) #1

declare dso_local i32 @vb2_queue_release(i32*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32*) #1

declare dso_local i32 @v4l2_device_unregister(%struct.v4l2_device*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32, i32) #1

declare dso_local i32 @of_reserved_mem_device_release(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_aspeed-video.c_aspeed_video_stop_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_aspeed-video.c_aspeed_video_stop_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.aspeed_video = type { i32, i32, i32 }

@VIDEO_STREAMING = common dso_local global i32 0, align 4
@VIDEO_FRAME_INPRG = common dso_local global i32 0, align 4
@STOP_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Timed out when stopping streaming\0A\00", align 1
@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_queue*)* @aspeed_video_stop_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aspeed_video_stop_streaming(%struct.vb2_queue* %0) #0 {
  %2 = alloca %struct.vb2_queue*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.aspeed_video*, align 8
  store %struct.vb2_queue* %0, %struct.vb2_queue** %2, align 8
  %5 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %6 = call %struct.aspeed_video* @vb2_get_drv_priv(%struct.vb2_queue* %5)
  store %struct.aspeed_video* %6, %struct.aspeed_video** %4, align 8
  %7 = load i32, i32* @VIDEO_STREAMING, align 4
  %8 = load %struct.aspeed_video*, %struct.aspeed_video** %4, align 8
  %9 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %8, i32 0, i32 1
  %10 = call i32 @clear_bit(i32 %7, i32* %9)
  %11 = load %struct.aspeed_video*, %struct.aspeed_video** %4, align 8
  %12 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @VIDEO_FRAME_INPRG, align 4
  %15 = load %struct.aspeed_video*, %struct.aspeed_video** %4, align 8
  %16 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %15, i32 0, i32 1
  %17 = call i32 @test_bit(i32 %14, i32* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* @STOP_TIMEOUT, align 4
  %22 = call i32 @wait_event_timeout(i32 %13, i32 %20, i32 %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %1
  %26 = load %struct.aspeed_video*, %struct.aspeed_video** %4, align 8
  %27 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dev_dbg(i32 %28, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.aspeed_video*, %struct.aspeed_video** %4, align 8
  %31 = call i32 @aspeed_video_off(%struct.aspeed_video* %30)
  %32 = load %struct.aspeed_video*, %struct.aspeed_video** %4, align 8
  %33 = call i32 @aspeed_video_on(%struct.aspeed_video* %32)
  %34 = load %struct.aspeed_video*, %struct.aspeed_video** %4, align 8
  %35 = call i32 @aspeed_video_init_regs(%struct.aspeed_video* %34)
  %36 = load %struct.aspeed_video*, %struct.aspeed_video** %4, align 8
  %37 = call i32 @aspeed_video_get_resolution(%struct.aspeed_video* %36)
  br label %38

38:                                               ; preds = %25, %1
  %39 = load %struct.aspeed_video*, %struct.aspeed_video** %4, align 8
  %40 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  %41 = call i32 @aspeed_video_bufs_done(%struct.aspeed_video* %39, i32 %40)
  ret void
}

declare dso_local %struct.aspeed_video* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @aspeed_video_off(%struct.aspeed_video*) #1

declare dso_local i32 @aspeed_video_on(%struct.aspeed_video*) #1

declare dso_local i32 @aspeed_video_init_regs(%struct.aspeed_video*) #1

declare dso_local i32 @aspeed_video_get_resolution(%struct.aspeed_video*) #1

declare dso_local i32 @aspeed_video_bufs_done(%struct.aspeed_video*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

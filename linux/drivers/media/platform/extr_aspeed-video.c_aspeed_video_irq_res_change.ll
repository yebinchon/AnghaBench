; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_aspeed-video.c_aspeed_video_irq_res_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_aspeed-video.c_aspeed_video_irq_res_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aspeed_video = type { i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"Resolution changed; resetting\0A\00", align 1
@VIDEO_RES_CHANGE = common dso_local global i32 0, align 4
@VIDEO_FRAME_INPRG = common dso_local global i32 0, align 4
@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aspeed_video*, i32)* @aspeed_video_irq_res_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aspeed_video_irq_res_change(%struct.aspeed_video* %0, i32 %1) #0 {
  %3 = alloca %struct.aspeed_video*, align 8
  %4 = alloca i32, align 4
  store %struct.aspeed_video* %0, %struct.aspeed_video** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.aspeed_video*, %struct.aspeed_video** %3, align 8
  %6 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @dev_dbg(i32 %7, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @VIDEO_RES_CHANGE, align 4
  %10 = load %struct.aspeed_video*, %struct.aspeed_video** %3, align 8
  %11 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %10, i32 0, i32 1
  %12 = call i32 @set_bit(i32 %9, i32* %11)
  %13 = load i32, i32* @VIDEO_FRAME_INPRG, align 4
  %14 = load %struct.aspeed_video*, %struct.aspeed_video** %3, align 8
  %15 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %14, i32 0, i32 1
  %16 = call i32 @clear_bit(i32 %13, i32* %15)
  %17 = load %struct.aspeed_video*, %struct.aspeed_video** %3, align 8
  %18 = call i32 @aspeed_video_off(%struct.aspeed_video* %17)
  %19 = load %struct.aspeed_video*, %struct.aspeed_video** %3, align 8
  %20 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  %21 = call i32 @aspeed_video_bufs_done(%struct.aspeed_video* %19, i32 %20)
  %22 = load %struct.aspeed_video*, %struct.aspeed_video** %3, align 8
  %23 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %22, i32 0, i32 0
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @schedule_delayed_work(i32* %23, i32 %24)
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @aspeed_video_off(%struct.aspeed_video*) #1

declare dso_local i32 @aspeed_video_bufs_done(%struct.aspeed_video*, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

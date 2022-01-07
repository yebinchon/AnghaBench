; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_aspeed-video.c_aspeed_video_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_aspeed-video.c_aspeed_video_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aspeed_video = type { i32, i32, i32 }

@VIDEO_CLOCKS_ON = common dso_local global i32 0, align 4
@VE_INTERRUPT_CTRL = common dso_local global i32 0, align 4
@VE_INTERRUPT_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aspeed_video*)* @aspeed_video_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aspeed_video_off(%struct.aspeed_video* %0) #0 {
  %2 = alloca %struct.aspeed_video*, align 8
  store %struct.aspeed_video* %0, %struct.aspeed_video** %2, align 8
  %3 = load i32, i32* @VIDEO_CLOCKS_ON, align 4
  %4 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %5 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %4, i32 0, i32 0
  %6 = call i32 @test_bit(i32 %3, i32* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %28

9:                                                ; preds = %1
  %10 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %11 = load i32, i32* @VE_INTERRUPT_CTRL, align 4
  %12 = call i32 @aspeed_video_write(%struct.aspeed_video* %10, i32 %11, i32 0)
  %13 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %14 = load i32, i32* @VE_INTERRUPT_STATUS, align 4
  %15 = call i32 @aspeed_video_write(%struct.aspeed_video* %13, i32 %14, i32 -1)
  %16 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %17 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @clk_disable(i32 %18)
  %20 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %21 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @clk_disable(i32 %22)
  %24 = load i32, i32* @VIDEO_CLOCKS_ON, align 4
  %25 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %26 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %25, i32 0, i32 0
  %27 = call i32 @clear_bit(i32 %24, i32* %26)
  br label %28

28:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @aspeed_video_write(%struct.aspeed_video*, i32, i32) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

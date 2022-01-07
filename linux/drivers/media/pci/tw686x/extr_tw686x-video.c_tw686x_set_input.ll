; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/tw686x/extr_tw686x-video.c_tw686x_set_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/tw686x/extr_tw686x-video.c_tw686x_set_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw686x_video_channel = type { i32, i64, i32 }

@VDMA_CHANNEL_CONFIG = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tw686x_video_channel*, i32)* @tw686x_set_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tw686x_set_input(%struct.tw686x_video_channel* %0, i32 %1) #0 {
  %3 = alloca %struct.tw686x_video_channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tw686x_video_channel* %0, %struct.tw686x_video_channel** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %3, align 8
  %8 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 8
  %9 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %3, align 8
  %10 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = load i32*, i32** @VDMA_CHANNEL_CONFIG, align 8
  %13 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %3, align 8
  %14 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds i32, i32* %12, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @reg_read(i32 %11, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, 1073741823
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %4, align 4
  %22 = shl i32 %21, 30
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %3, align 8
  %26 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i32*, i32** @VDMA_CHANNEL_CONFIG, align 8
  %29 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %3, align 8
  %30 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @reg_write(i32 %27, i32 %33, i32 %34)
  ret void
}

declare dso_local i32 @reg_read(i32, i32) #1

declare dso_local i32 @reg_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

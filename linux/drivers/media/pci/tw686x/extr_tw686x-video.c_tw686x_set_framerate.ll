; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/tw686x/extr_tw686x-video.c_tw686x_set_framerate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/tw686x/extr_tw686x-video.c_tw686x_set_framerate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw686x_video_channel = type { i64, i32, i32, i32 }

@VIDEO_FIELD_CTRL = common dso_local global i32* null, align 8
@fps_map = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tw686x_video_channel*, i32)* @tw686x_set_framerate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tw686x_set_framerate(%struct.tw686x_video_channel* %0, i32 %1) #0 {
  %3 = alloca %struct.tw686x_video_channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tw686x_video_channel* %0, %struct.tw686x_video_channel** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %3, align 8
  %8 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @TW686X_MAX_FPS(i32 %9)
  %11 = call i32 @tw686x_fps_idx(i32 %6, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %3, align 8
  %13 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = load i32*, i32** @VIDEO_FIELD_CTRL, align 8
  %16 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %3, align 8
  %17 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** @fps_map, align 8
  %22 = load i32, i32* %5, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @reg_write(i32 %14, i32 %20, i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %3, align 8
  %29 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @TW686X_MAX_FPS(i32 %30)
  %32 = call i32 @tw686x_real_fps(i32 %27, i32 %31)
  %33 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %3, align 8
  %34 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  ret void
}

declare dso_local i32 @tw686x_fps_idx(i32, i32) #1

declare dso_local i32 @TW686X_MAX_FPS(i32) #1

declare dso_local i32 @reg_write(i32, i32, i32) #1

declare dso_local i32 @tw686x_real_fps(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

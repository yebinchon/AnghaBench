; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-video.c_video_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-video.c_video_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@video = common dso_local global i32 0, align 4
@s_routing = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"video_mux : %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @video_mux(%struct.cx231xx* %0, i32 %1) #0 {
  %3 = alloca %struct.cx231xx*, align 8
  %4 = alloca i32, align 4
  store %struct.cx231xx* %0, %struct.cx231xx** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %7 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.TYPE_2__* @INPUT(i32 %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %13 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 4
  %14 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @cx231xx_set_video_input_mux(%struct.cx231xx* %14, i32 %15)
  %17 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %18 = load i32, i32* @video, align 4
  %19 = load i32, i32* @s_routing, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call %struct.TYPE_2__* @INPUT(i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @cx25840_call(%struct.cx231xx* %17, i32 %18, i32 %19, i32 %23, i32 0, i32 0)
  %25 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %26 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %27 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @cx231xx_set_audio_input(%struct.cx231xx* %25, i32 %28)
  %30 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %31 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @dev_dbg(i32 %32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %36 = call i32 @cx231xx_do_mode_ctrl_overrides(%struct.cx231xx* %35)
  ret void
}

declare dso_local %struct.TYPE_2__* @INPUT(i32) #1

declare dso_local i32 @cx231xx_set_video_input_mux(%struct.cx231xx*, i32) #1

declare dso_local i32 @cx25840_call(%struct.cx231xx*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cx231xx_set_audio_input(%struct.cx231xx*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @cx231xx_do_mode_ctrl_overrides(%struct.cx231xx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

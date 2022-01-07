; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/tw686x/extr_tw686x-video.c_tw686x_s_std.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/tw686x/extr_tw686x-video.c_tw686x_s_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.tw686x_video_channel = type { i32, i32, i32 }
%struct.v4l2_format = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @tw686x_s_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tw686x_s_std(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tw686x_video_channel*, align 8
  %9 = alloca %struct.v4l2_format, align 4
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.tw686x_video_channel* @video_drvdata(%struct.file* %11)
  store %struct.tw686x_video_channel* %12, %struct.tw686x_video_channel** %8, align 8
  %13 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %8, align 8
  %14 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %47

19:                                               ; preds = %3
  %20 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %8, align 8
  %21 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %20, i32 0, i32 1
  %22 = call i64 @vb2_is_busy(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %47

27:                                               ; preds = %19
  %28 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %8, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @tw686x_set_standard(%struct.tw686x_video_channel* %28, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %4, align 4
  br label %47

35:                                               ; preds = %27
  %36 = load %struct.file*, %struct.file** %5, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @tw686x_g_fmt_vid_cap(%struct.file* %36, i8* %37, %struct.v4l2_format* %9)
  %39 = load %struct.file*, %struct.file** %5, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @tw686x_s_fmt_vid_cap(%struct.file* %39, i8* %40, %struct.v4l2_format* %9)
  %42 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %8, align 8
  %43 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %8, align 8
  %44 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @tw686x_set_framerate(%struct.tw686x_video_channel* %42, i32 %45)
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %35, %33, %24, %18
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.tw686x_video_channel* @video_drvdata(%struct.file*) #1

declare dso_local i64 @vb2_is_busy(i32*) #1

declare dso_local i32 @tw686x_set_standard(%struct.tw686x_video_channel*, i32) #1

declare dso_local i32 @tw686x_g_fmt_vid_cap(%struct.file*, i8*, %struct.v4l2_format*) #1

declare dso_local i32 @tw686x_s_fmt_vid_cap(%struct.file*, i8*, %struct.v4l2_format*) #1

declare dso_local i32 @tw686x_set_framerate(%struct.tw686x_video_channel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

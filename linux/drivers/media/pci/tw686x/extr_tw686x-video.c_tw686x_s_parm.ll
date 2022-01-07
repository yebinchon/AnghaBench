; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/tw686x/extr_tw686x-video.c_tw686x_s_parm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/tw686x/extr_tw686x-video.c_tw686x_s_parm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_streamparm = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.v4l2_captureparm }
%struct.v4l2_captureparm = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.tw686x_video_channel = type { i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_streamparm*)* @tw686x_s_parm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tw686x_s_parm(%struct.file* %0, i8* %1, %struct.v4l2_streamparm* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_streamparm*, align 8
  %8 = alloca %struct.tw686x_video_channel*, align 8
  %9 = alloca %struct.v4l2_captureparm*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_streamparm* %2, %struct.v4l2_streamparm** %7, align 8
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = call %struct.tw686x_video_channel* @video_drvdata(%struct.file* %13)
  store %struct.tw686x_video_channel* %14, %struct.tw686x_video_channel** %8, align 8
  %15 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %7, align 8
  %16 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store %struct.v4l2_captureparm* %17, %struct.v4l2_captureparm** %9, align 8
  %18 = load %struct.v4l2_captureparm*, %struct.v4l2_captureparm** %9, align 8
  %19 = getelementptr inbounds %struct.v4l2_captureparm, %struct.v4l2_captureparm* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %10, align 4
  %22 = load %struct.v4l2_captureparm*, %struct.v4l2_captureparm** %9, align 8
  %23 = getelementptr inbounds %struct.v4l2_captureparm, %struct.v4l2_captureparm* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %11, align 4
  %26 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %8, align 8
  %27 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %26, i32 0, i32 1
  %28 = call i64 @vb2_is_busy(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %3
  %31 = load i32, i32* @EBUSY, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %60

33:                                               ; preds = %3
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %36, %33
  br label %44

40:                                               ; preds = %36
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = udiv i32 %41, %42
  br label %44

44:                                               ; preds = %40, %39
  %45 = phi i32 [ 0, %39 ], [ %43, %40 ]
  store i32 %45, i32* %12, align 4
  %46 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %8, align 8
  %47 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %8, align 8
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @tw686x_set_framerate(%struct.tw686x_video_channel* %52, i32 %53)
  br label %55

55:                                               ; preds = %51, %44
  %56 = load %struct.file*, %struct.file** %5, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %7, align 8
  %59 = call i32 @tw686x_g_parm(%struct.file* %56, i8* %57, %struct.v4l2_streamparm* %58)
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %55, %30
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local %struct.tw686x_video_channel* @video_drvdata(%struct.file*) #1

declare dso_local i64 @vb2_is_busy(i32*) #1

declare dso_local i32 @tw686x_set_framerate(%struct.tw686x_video_channel*, i32) #1

declare dso_local i32 @tw686x_g_parm(%struct.file*, i8*, %struct.v4l2_streamparm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

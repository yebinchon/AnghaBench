; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/tw686x/extr_tw686x-video.c_tw686x_enum_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/tw686x/extr_tw686x-video.c_tw686x_enum_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_input = type { i64, i32, i32, i32, i32, i32 }
%struct.tw686x_video_channel = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TW686X_INPUTS_PER_CH = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Composite%d\00", align 1
@V4L2_INPUT_TYPE_CAMERA = common dso_local global i32 0, align 4
@V4L2_IN_CAP_STD = common dso_local global i32 0, align 4
@VIDSTAT = common dso_local global i32* null, align 8
@TW686X_VIDSTAT_VDLOSS = common dso_local global i32 0, align 4
@V4L2_IN_ST_NO_SIGNAL = common dso_local global i32 0, align 4
@TW686X_VIDSTAT_HLOCK = common dso_local global i32 0, align 4
@V4L2_IN_ST_NO_H_LOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_input*)* @tw686x_enum_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tw686x_enum_input(%struct.file* %0, i8* %1, %struct.v4l2_input* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_input*, align 8
  %8 = alloca %struct.tw686x_video_channel*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_input* %2, %struct.v4l2_input** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.tw686x_video_channel* @video_drvdata(%struct.file* %10)
  store %struct.tw686x_video_channel* %11, %struct.tw686x_video_channel** %8, align 8
  %12 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %13 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @TW686X_INPUTS_PER_CH, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %75

20:                                               ; preds = %3
  %21 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @snprintf(i32 %23, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %26)
  %28 = load i32, i32* @V4L2_INPUT_TYPE_CAMERA, align 4
  %29 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 4
  %31 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %8, align 8
  %32 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %37 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @V4L2_IN_CAP_STD, align 4
  %39 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %8, align 8
  %42 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32*, i32** @VIDSTAT, align 8
  %45 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %8, align 8
  %46 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @reg_read(i32 %43, i32 %49)
  store i32 %50, i32* %9, align 4
  %51 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %52 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %51, i32 0, i32 1
  store i32 0, i32* %52, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @TW686X_VIDSTAT_VDLOSS, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %20
  %58 = load i32, i32* @V4L2_IN_ST_NO_SIGNAL, align 4
  %59 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %60 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  br label %63

63:                                               ; preds = %57, %20
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @TW686X_VIDSTAT_HLOCK, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* @V4L2_IN_ST_NO_H_LOCK, align 4
  %70 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %71 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 8
  br label %74

74:                                               ; preds = %68, %63
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %74, %17
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local %struct.tw686x_video_channel* @video_drvdata(%struct.file*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i64) #1

declare dso_local i32 @reg_read(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

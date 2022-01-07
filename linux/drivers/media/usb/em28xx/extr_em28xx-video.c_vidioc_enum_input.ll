; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-video.c_vidioc_enum_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-video.c_vidioc_enum_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_input = type { i32, i32, i64, i32, i32, i32 }
%struct.em28xx = type { i64*, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@MAX_EM28XX_INPUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@V4L2_INPUT_TYPE_CAMERA = common dso_local global i32 0, align 4
@iname = common dso_local global i32* null, align 8
@EM28XX_VMUX_TELEVISION = common dso_local global i64 0, align 8
@V4L2_INPUT_TYPE_TUNER = common dso_local global i32 0, align 4
@EM28XX_AMUX_UNUSED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_input*)* @vidioc_enum_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_enum_input(%struct.file* %0, i8* %1, %struct.v4l2_input* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_input*, align 8
  %8 = alloca %struct.em28xx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_input* %2, %struct.v4l2_input** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.em28xx* @video_drvdata(%struct.file* %11)
  store %struct.em28xx* %12, %struct.em28xx** %8, align 8
  %13 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @MAX_EM28XX_INPUT, align 4
  %18 = icmp uge i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %101

22:                                               ; preds = %3
  %23 = load i32, i32* %9, align 4
  %24 = call %struct.TYPE_6__* @INPUT(i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %101

31:                                               ; preds = %22
  %32 = load i32, i32* @V4L2_INPUT_TYPE_CAMERA, align 4
  %33 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 4
  %35 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %36 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = load i32*, i32** @iname, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call %struct.TYPE_6__* @INPUT(i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i32, i32* %38, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @strscpy(i32 %37, i32 %44, i32 4)
  %46 = load i32, i32* %9, align 4
  %47 = call %struct.TYPE_6__* @INPUT(i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @EM28XX_VMUX_TELEVISION, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %31
  %53 = load i32, i32* @V4L2_INPUT_TYPE_TUNER, align 4
  %54 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %55 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %52, %31
  %57 = load %struct.em28xx*, %struct.em28xx** %8, align 8
  %58 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %57, i32 0, i32 2
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %64 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 8
  %65 = load %struct.em28xx*, %struct.em28xx** %8, align 8
  %66 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %56
  %70 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %71 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %70, i32 0, i32 2
  store i64 0, i64* %71, align 8
  br label %72

72:                                               ; preds = %69, %56
  %73 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %74 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %73, i32 0, i32 1
  store i32 0, i32* %74, align 4
  store i32 0, i32* %10, align 4
  br label %75

75:                                               ; preds = %97, %72
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* @MAX_EM28XX_INPUT, align 4
  %78 = icmp ult i32 %76, %77
  br i1 %78, label %79, label %100

79:                                               ; preds = %75
  %80 = load %struct.em28xx*, %struct.em28xx** %8, align 8
  %81 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %80, i32 0, i32 0
  %82 = load i64*, i64** %81, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @EM28XX_AMUX_UNUSED, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %79
  %90 = load i32, i32* %10, align 4
  %91 = shl i32 1, %90
  %92 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %93 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %89, %79
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %10, align 4
  br label %75

100:                                              ; preds = %75
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %100, %28, %19
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local %struct.em28xx* @video_drvdata(%struct.file*) #1

declare dso_local %struct.TYPE_6__* @INPUT(i32) #1

declare dso_local i32 @strscpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

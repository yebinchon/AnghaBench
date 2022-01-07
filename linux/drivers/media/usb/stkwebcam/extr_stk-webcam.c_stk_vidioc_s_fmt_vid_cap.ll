; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/stkwebcam/extr_stk-webcam.c_stk_vidioc_s_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/stkwebcam/extr_stk-webcam.c_stk_vidioc_s_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.stk_camera = type { %struct.TYPE_7__, i32, i64 }
%struct.TYPE_7__ = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@stk_sizes = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @stk_vidioc_s_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stk_vidioc_s_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.stk_camera*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.stk_camera* @video_drvdata(%struct.file* %11)
  store %struct.stk_camera* %12, %struct.stk_camera** %10, align 8
  %13 = load %struct.stk_camera*, %struct.stk_camera** %10, align 8
  %14 = icmp eq %struct.stk_camera* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %79

18:                                               ; preds = %3
  %19 = load %struct.stk_camera*, %struct.stk_camera** %10, align 8
  %20 = call i32 @is_present(%struct.stk_camera* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %79

25:                                               ; preds = %18
  %26 = load %struct.stk_camera*, %struct.stk_camera** %10, align 8
  %27 = call i64 @is_streaming(%struct.stk_camera* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* @EBUSY, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %79

32:                                               ; preds = %25
  %33 = load %struct.stk_camera*, %struct.stk_camera** %10, align 8
  %34 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* @EBUSY, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %79

40:                                               ; preds = %32
  %41 = load %struct.file*, %struct.file** %5, align 8
  %42 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %43 = call i32 @stk_try_fmt_vid_cap(%struct.file* %41, %struct.v4l2_format* %42, i32* %9)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %4, align 4
  br label %79

48:                                               ; preds = %40
  %49 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %50 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.stk_camera*, %struct.stk_camera** %10, align 8
  %55 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 4
  %57 = load %struct.stk_camera*, %struct.stk_camera** %10, align 8
  %58 = call i32 @stk_free_buffers(%struct.stk_camera* %57)
  %59 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %60 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.stk_camera*, %struct.stk_camera** %10, align 8
  %65 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** @stk_sizes, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.stk_camera*, %struct.stk_camera** %10, align 8
  %73 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 8
  %75 = load %struct.stk_camera*, %struct.stk_camera** %10, align 8
  %76 = call i32 @stk_initialise(%struct.stk_camera* %75)
  %77 = load %struct.stk_camera*, %struct.stk_camera** %10, align 8
  %78 = call i32 @stk_setup_format(%struct.stk_camera* %77)
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %48, %46, %37, %29, %22, %15
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local %struct.stk_camera* @video_drvdata(%struct.file*) #1

declare dso_local i32 @is_present(%struct.stk_camera*) #1

declare dso_local i64 @is_streaming(%struct.stk_camera*) #1

declare dso_local i32 @stk_try_fmt_vid_cap(%struct.file*, %struct.v4l2_format*, i32*) #1

declare dso_local i32 @stk_free_buffers(%struct.stk_camera*) #1

declare dso_local i32 @stk_initialise(%struct.stk_camera*) #1

declare dso_local i32 @stk_setup_format(%struct.stk_camera*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cpia2/extr_cpia2_v4l.c_cpia2_g_parm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cpia2/extr_cpia2_v4l.c_cpia2_g_parm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32 }
%struct.file = type { i32 }
%struct.v4l2_streamparm = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.v4l2_captureparm }
%struct.v4l2_captureparm = type { i32, i32, i32 }
%struct.camera_data = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_CAP_TIMEPERFRAME = common dso_local global i32 0, align 4
@framerate_controls = common dso_local global %struct.TYPE_9__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_streamparm*)* @cpia2_g_parm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpia2_g_parm(%struct.file* %0, i8* %1, %struct.v4l2_streamparm* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_streamparm*, align 8
  %8 = alloca %struct.camera_data*, align 8
  %9 = alloca %struct.v4l2_captureparm*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_streamparm* %2, %struct.v4l2_streamparm** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.camera_data* @video_drvdata(%struct.file* %11)
  store %struct.camera_data* %12, %struct.camera_data** %8, align 8
  %13 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  store %struct.v4l2_captureparm* %15, %struct.v4l2_captureparm** %9, align 8
  %16 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %65

24:                                               ; preds = %3
  %25 = load i32, i32* @V4L2_CAP_TIMEPERFRAME, align 4
  %26 = load %struct.v4l2_captureparm*, %struct.v4l2_captureparm** %9, align 8
  %27 = getelementptr inbounds %struct.v4l2_captureparm, %struct.v4l2_captureparm* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %29 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.v4l2_captureparm*, %struct.v4l2_captureparm** %9, align 8
  %32 = getelementptr inbounds %struct.v4l2_captureparm, %struct.v4l2_captureparm* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  store i32 0, i32* %10, align 4
  br label %33

33:                                               ; preds = %61, %24
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** @framerate_controls, align 8
  %36 = call i32 @ARRAY_SIZE(%struct.TYPE_9__* %35)
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %64

38:                                               ; preds = %33
  %39 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %40 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** @framerate_controls, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %43, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %38
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** @framerate_controls, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.v4l2_captureparm*, %struct.v4l2_captureparm** %9, align 8
  %59 = getelementptr inbounds %struct.v4l2_captureparm, %struct.v4l2_captureparm* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  br label %64

60:                                               ; preds = %38
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %10, align 4
  br label %33

64:                                               ; preds = %51, %33
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %64, %21
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local %struct.camera_data* @video_drvdata(%struct.file*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

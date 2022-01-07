; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_video-i2c.c_video_i2c_g_parm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_video-i2c.c_video_i2c_g_parm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_streamparm = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.video_i2c_data = type { i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_CAP_TIMEPERFRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_streamparm*)* @video_i2c_g_parm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @video_i2c_g_parm(%struct.file* %0, i8* %1, %struct.v4l2_streamparm* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_streamparm*, align 8
  %8 = alloca %struct.video_i2c_data*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_streamparm* %2, %struct.v4l2_streamparm** %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call %struct.video_i2c_data* @video_drvdata(%struct.file* %9)
  store %struct.video_i2c_data* %10, %struct.video_i2c_data** %8, align 8
  %11 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %7, align 8
  %12 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %36

19:                                               ; preds = %3
  %20 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %7, align 8
  %21 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load i32, i32* @V4L2_CAP_TIMEPERFRAME, align 4
  %25 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %7, align 8
  %26 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  store i32 %24, i32* %28, align 8
  %29 = load %struct.video_i2c_data*, %struct.video_i2c_data** %8, align 8
  %30 = getelementptr inbounds %struct.video_i2c_data, %struct.video_i2c_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %7, align 8
  %33 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  store i32 %31, i32* %35, align 4
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %19, %16
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local %struct.video_i2c_data* @video_drvdata(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

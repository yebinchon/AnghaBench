; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_gspca.c_vidioc_s_parm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_gspca.c_vidioc_s_parm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_streamparm = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.gspca_dev = type { i32, %struct.TYPE_5__*, %struct.TYPE_8__ }
%struct.TYPE_5__ = type { i32 (%struct.gspca_dev*, %struct.v4l2_streamparm*)* }
%struct.TYPE_8__ = type { i32 }

@V4L2_CAP_TIMEPERFRAME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_streamparm*)* @vidioc_s_parm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_parm(%struct.file* %0, i8* %1, %struct.v4l2_streamparm* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_streamparm*, align 8
  %8 = alloca %struct.gspca_dev*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_streamparm* %2, %struct.v4l2_streamparm** %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call %struct.gspca_dev* @video_drvdata(%struct.file* %9)
  store %struct.gspca_dev* %10, %struct.gspca_dev** %8, align 8
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %12 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %7, align 8
  %16 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  store i32 %14, i32* %18, align 8
  %19 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %20 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %19, i32 0, i32 1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32 (%struct.gspca_dev*, %struct.v4l2_streamparm*)*, i32 (%struct.gspca_dev*, %struct.v4l2_streamparm*)** %22, align 8
  %24 = icmp ne i32 (%struct.gspca_dev*, %struct.v4l2_streamparm*)* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %3
  %26 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %7, align 8
  %27 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  store i32 0, i32* %4, align 4
  br label %49

30:                                               ; preds = %3
  %31 = load i64, i64* @V4L2_CAP_TIMEPERFRAME, align 8
  %32 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %7, align 8
  %33 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store i64 %31, i64* %35, align 8
  %36 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %37 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  %38 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %39 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %38, i32 0, i32 1
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32 (%struct.gspca_dev*, %struct.v4l2_streamparm*)*, i32 (%struct.gspca_dev*, %struct.v4l2_streamparm*)** %41, align 8
  %43 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %44 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %7, align 8
  %45 = call i32 %42(%struct.gspca_dev* %43, %struct.v4l2_streamparm* %44)
  %46 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %47 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %30, %25
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local %struct.gspca_dev* @video_drvdata(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

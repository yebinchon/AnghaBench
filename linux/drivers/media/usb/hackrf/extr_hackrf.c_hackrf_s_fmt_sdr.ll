; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/hackrf/extr_hackrf.c_hackrf_s_fmt_sdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/hackrf/extr_hackrf.c_hackrf_s_fmt_sdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }
%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.hackrf_dev = type { i64, i32, %struct.vb2_queue, %struct.vb2_queue, i32 }
%struct.vb2_queue = type { i32 }
%struct.video_device = type { i64 }

@.str = private unnamed_addr constant [26 x i8] c"pixelformat fourcc %4.4s\0A\00", align 1
@VFL_DIR_RX = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@NUM_FORMATS = common dso_local global i32 0, align 4
@formats = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @hackrf_s_fmt_sdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hackrf_s_fmt_sdr(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.hackrf_dev*, align 8
  %9 = alloca %struct.video_device*, align 8
  %10 = alloca %struct.vb2_queue*, align 8
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = call %struct.hackrf_dev* @video_drvdata(%struct.file* %12)
  store %struct.hackrf_dev* %13, %struct.hackrf_dev** %8, align 8
  %14 = load %struct.file*, %struct.file** %5, align 8
  %15 = call %struct.video_device* @video_devdata(%struct.file* %14)
  store %struct.video_device* %15, %struct.video_device** %9, align 8
  %16 = load %struct.hackrf_dev*, %struct.hackrf_dev** %8, align 8
  %17 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = bitcast i64* %22 to i8*
  %24 = call i32 @dev_dbg(i32 %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = load %struct.video_device*, %struct.video_device** %9, align 8
  %26 = getelementptr inbounds %struct.video_device, %struct.video_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @VFL_DIR_RX, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %3
  %31 = load %struct.hackrf_dev*, %struct.hackrf_dev** %8, align 8
  %32 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %31, i32 0, i32 3
  store %struct.vb2_queue* %32, %struct.vb2_queue** %10, align 8
  br label %36

33:                                               ; preds = %3
  %34 = load %struct.hackrf_dev*, %struct.hackrf_dev** %8, align 8
  %35 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %34, i32 0, i32 2
  store %struct.vb2_queue* %35, %struct.vb2_queue** %10, align 8
  br label %36

36:                                               ; preds = %33, %30
  %37 = load %struct.vb2_queue*, %struct.vb2_queue** %10, align 8
  %38 = call i64 @vb2_is_busy(%struct.vb2_queue* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* @EBUSY, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %127

43:                                               ; preds = %36
  %44 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %45 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @memset(i32 %48, i32 0, i32 4)
  store i32 0, i32* %11, align 4
  br label %50

50:                                               ; preds = %95, %43
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @NUM_FORMATS, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %98

54:                                               ; preds = %50
  %55 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %56 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** @formats, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %59, %65
  br i1 %66, label %67, label %94

67:                                               ; preds = %54
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** @formats, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.hackrf_dev*, %struct.hackrf_dev** %8, align 8
  %75 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** @formats, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.hackrf_dev*, %struct.hackrf_dev** %8, align 8
  %83 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 8
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** @formats, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %91 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  store i32 %89, i32* %93, align 8
  store i32 0, i32* %4, align 4
  br label %127

94:                                               ; preds = %54
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %11, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %11, align 4
  br label %50

98:                                               ; preds = %50
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** @formats, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i64 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.hackrf_dev*, %struct.hackrf_dev** %8, align 8
  %104 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** @formats, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i64 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.hackrf_dev*, %struct.hackrf_dev** %8, align 8
  %110 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 8
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** @formats, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i64 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %116 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  store i64 %114, i64* %118, align 8
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** @formats, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i64 0
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %124 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  store i32 %122, i32* %126, align 8
  store i32 0, i32* %4, align 4
  br label %127

127:                                              ; preds = %98, %67, %40
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local %struct.hackrf_dev* @video_drvdata(%struct.file*) #1

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*) #1

declare dso_local i64 @vb2_is_busy(%struct.vb2_queue*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

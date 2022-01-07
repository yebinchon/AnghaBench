; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/tw686x/extr_tw686x-video.c_tw686x_try_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/tw686x/extr_tw686x-video.c_tw686x_try_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw686x_format = type { i32, i32 }
%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.tw686x_video_channel = type { i32, %struct.tw686x_dev* }
%struct.tw686x_dev = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@formats = common dso_local global %struct.tw686x_format* null, align 8
@TW686X_VIDEO_WIDTH = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SMPTE170M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @tw686x_try_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tw686x_try_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca %struct.tw686x_video_channel*, align 8
  %8 = alloca %struct.tw686x_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.tw686x_format*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %6, align 8
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = call %struct.tw686x_video_channel* @video_drvdata(%struct.file* %11)
  store %struct.tw686x_video_channel* %12, %struct.tw686x_video_channel** %7, align 8
  %13 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %7, align 8
  %14 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %13, i32 0, i32 1
  %15 = load %struct.tw686x_dev*, %struct.tw686x_dev** %14, align 8
  store %struct.tw686x_dev* %15, %struct.tw686x_dev** %8, align 8
  %16 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %7, align 8
  %17 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @TW686X_VIDEO_HEIGHT(i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %21 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.tw686x_format* @format_by_fourcc(i32 %24)
  store %struct.tw686x_format* %25, %struct.tw686x_format** %10, align 8
  %26 = load %struct.tw686x_format*, %struct.tw686x_format** %10, align 8
  %27 = icmp ne %struct.tw686x_format* %26, null
  br i1 %27, label %38, label %28

28:                                               ; preds = %3
  %29 = load %struct.tw686x_format*, %struct.tw686x_format** @formats, align 8
  %30 = getelementptr inbounds %struct.tw686x_format, %struct.tw686x_format* %29, i64 0
  store %struct.tw686x_format* %30, %struct.tw686x_format** %10, align 8
  %31 = load %struct.tw686x_format*, %struct.tw686x_format** %10, align 8
  %32 = getelementptr inbounds %struct.tw686x_format, %struct.tw686x_format* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %35 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 6
  store i32 %33, i32* %37, align 4
  br label %38

38:                                               ; preds = %28, %3
  %39 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %40 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @TW686X_VIDEO_WIDTH, align 4
  %45 = sdiv i32 %44, 2
  %46 = icmp sle i32 %43, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %38
  %48 = load i32, i32* @TW686X_VIDEO_WIDTH, align 4
  %49 = sdiv i32 %48, 2
  %50 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %51 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i32 %49, i32* %53, align 4
  br label %60

54:                                               ; preds = %38
  %55 = load i32, i32* @TW686X_VIDEO_WIDTH, align 4
  %56 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %57 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i32 %55, i32* %59, align 4
  br label %60

60:                                               ; preds = %54, %47
  %61 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %62 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %9, align 4
  %67 = udiv i32 %66, 2
  %68 = icmp ule i32 %65, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %60
  %70 = load i32, i32* %9, align 4
  %71 = udiv i32 %70, 2
  %72 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %73 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  store i32 %71, i32* %75, align 4
  br label %82

76:                                               ; preds = %60
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %79 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  store i32 %77, i32* %81, align 4
  br label %82

82:                                               ; preds = %76, %69
  %83 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %84 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.tw686x_format*, %struct.tw686x_format** %10, align 8
  %89 = getelementptr inbounds %struct.tw686x_format, %struct.tw686x_format* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = mul nsw i32 %87, %90
  %92 = sdiv i32 %91, 8
  %93 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %94 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 2
  store i32 %92, i32* %96, align 4
  %97 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %98 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %103 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = mul i32 %101, %106
  %108 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %109 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 3
  store i32 %107, i32* %111, align 4
  %112 = load i32, i32* @V4L2_COLORSPACE_SMPTE170M, align 4
  %113 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %114 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 5
  store i32 %112, i32* %116, align 4
  %117 = load %struct.tw686x_dev*, %struct.tw686x_dev** %8, align 8
  %118 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %117, i32 0, i32 0
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %123 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 4
  store i32 %121, i32* %125, align 4
  ret i32 0
}

declare dso_local %struct.tw686x_video_channel* @video_drvdata(%struct.file*) #1

declare dso_local i32 @TW686X_VIDEO_HEIGHT(i32) #1

declare dso_local %struct.tw686x_format* @format_by_fourcc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

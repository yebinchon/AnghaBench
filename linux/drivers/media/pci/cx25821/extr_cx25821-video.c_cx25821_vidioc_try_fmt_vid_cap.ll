; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-video.c_cx25821_vidioc_try_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-video.c_cx25821_vidioc_try_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.cx25821_channel = type { %struct.cx25821_dev* }
%struct.cx25821_dev = type { i32 }
%struct.cx25821_fmt = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_STD_625_50 = common dso_local global i32 0, align 4
@V4L2_FIELD_BOTTOM = common dso_local global i32 0, align 4
@V4L2_FIELD_TOP = common dso_local global i32 0, align 4
@V4L2_FIELD_INTERLACED = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SMPTE170M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @cx25821_vidioc_try_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx25821_vidioc_try_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.cx25821_channel*, align 8
  %9 = alloca %struct.cx25821_dev*, align 8
  %10 = alloca %struct.cx25821_fmt*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %14 = load %struct.file*, %struct.file** %5, align 8
  %15 = call %struct.cx25821_channel* @video_drvdata(%struct.file* %14)
  store %struct.cx25821_channel* %15, %struct.cx25821_channel** %8, align 8
  %16 = load %struct.cx25821_channel*, %struct.cx25821_channel** %8, align 8
  %17 = getelementptr inbounds %struct.cx25821_channel, %struct.cx25821_channel* %16, i32 0, i32 0
  %18 = load %struct.cx25821_dev*, %struct.cx25821_dev** %17, align 8
  store %struct.cx25821_dev* %18, %struct.cx25821_dev** %9, align 8
  %19 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %11, align 4
  %24 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.cx25821_fmt* @cx25821_format_by_fourcc(i32 %28)
  store %struct.cx25821_fmt* %29, %struct.cx25821_fmt** %10, align 8
  %30 = load %struct.cx25821_fmt*, %struct.cx25821_fmt** %10, align 8
  %31 = icmp eq %struct.cx25821_fmt* null, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %3
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %127

35:                                               ; preds = %3
  %36 = load %struct.cx25821_dev*, %struct.cx25821_dev** %9, align 8
  %37 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @V4L2_STD_625_50, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 576, i32 480
  store i32 %43, i32* %12, align 4
  %44 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %45 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @V4L2_FIELD_BOTTOM, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %35
  %53 = load i32, i32* @V4L2_FIELD_TOP, align 4
  store i32 %53, i32* %11, align 4
  br label %54

54:                                               ; preds = %52, %35
  %55 = load i32, i32* %13, align 4
  %56 = icmp ult i32 %55, 352
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  store i32 176, i32* %13, align 4
  %58 = load i32, i32* %12, align 4
  %59 = udiv i32 %58, 4
  %60 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %61 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  store i32 %59, i32* %63, align 4
  br label %82

64:                                               ; preds = %54
  %65 = load i32, i32* %13, align 4
  %66 = icmp ult i32 %65, 720
  br i1 %66, label %67, label %74

67:                                               ; preds = %64
  store i32 352, i32* %13, align 4
  %68 = load i32, i32* %12, align 4
  %69 = udiv i32 %68, 2
  %70 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %71 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 2
  store i32 %69, i32* %73, align 4
  br label %81

74:                                               ; preds = %64
  store i32 720, i32* %13, align 4
  %75 = load i32, i32* %12, align 4
  %76 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %77 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 2
  store i32 %75, i32* %79, align 4
  %80 = load i32, i32* @V4L2_FIELD_INTERLACED, align 4
  store i32 %80, i32* %11, align 4
  br label %81

81:                                               ; preds = %74, %67
  br label %82

82:                                               ; preds = %81, %57
  %83 = load i32, i32* %11, align 4
  %84 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %85 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  store i32 %83, i32* %87, align 4
  %88 = load i32, i32* %13, align 4
  %89 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %90 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  store i32 %88, i32* %92, align 4
  %93 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %94 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.cx25821_fmt*, %struct.cx25821_fmt** %10, align 8
  %99 = getelementptr inbounds %struct.cx25821_fmt, %struct.cx25821_fmt* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = mul i32 %97, %100
  %102 = lshr i32 %101, 3
  %103 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %104 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 3
  store i32 %102, i32* %106, align 4
  %107 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %108 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %113 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = mul i32 %111, %116
  %118 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %119 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 4
  store i32 %117, i32* %121, align 4
  %122 = load i32, i32* @V4L2_COLORSPACE_SMPTE170M, align 4
  %123 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %124 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 5
  store i32 %122, i32* %126, align 4
  store i32 0, i32* %4, align 4
  br label %127

127:                                              ; preds = %82, %32
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local %struct.cx25821_channel* @video_drvdata(%struct.file*) #1

declare dso_local %struct.cx25821_fmt* @cx25821_format_by_fourcc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

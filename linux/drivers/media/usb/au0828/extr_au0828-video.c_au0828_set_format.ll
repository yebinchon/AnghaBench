; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/au0828/extr_au0828-video.c_au0828_set_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/au0828/extr_au0828-video.c_au0828_set_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au0828_dev = type { i32, i32, i32, i32, i32, i64 }
%struct.v4l2_format = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64, i32, i32, i32, i32 }

@V4L2_PIX_FMT_UYVY = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SMPTE170M = common dso_local global i32 0, align 4
@V4L2_FIELD_INTERLACED = common dso_local global i32 0, align 4
@VIDIOC_TRY_FMT = common dso_local global i32 0, align 4
@STREAM_ON = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"VIDIOC_SET_FMT: interrupting stream!\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"error interrupting video stream!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.au0828_dev*, i32, %struct.v4l2_format*)* @au0828_set_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au0828_set_format(%struct.au0828_dev* %0, i32 %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.au0828_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.au0828_dev* %0, %struct.au0828_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %11 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %12 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %9, align 4
  %16 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %10, align 4
  %21 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @V4L2_PIX_FMT_UYVY, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %123

31:                                               ; preds = %3
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 720
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 720, i32* %9, align 4
  br label %35

35:                                               ; preds = %34, %31
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 480
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 480, i32* %10, align 4
  br label %39

39:                                               ; preds = %38, %35
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %42 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i32 %40, i32* %44, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %47 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  store i32 %45, i32* %49, align 4
  %50 = load i64, i64* @V4L2_PIX_FMT_UYVY, align 8
  %51 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %52 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  store i64 %50, i64* %54, align 8
  %55 = load i32, i32* %9, align 4
  %56 = mul nsw i32 %55, 2
  %57 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %58 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 3
  store i32 %56, i32* %60, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %10, align 4
  %63 = mul nsw i32 %61, %62
  %64 = mul nsw i32 %63, 2
  %65 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %66 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 4
  store i32 %64, i32* %68, align 4
  %69 = load i32, i32* @V4L2_COLORSPACE_SMPTE170M, align 4
  %70 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %71 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 6
  store i32 %69, i32* %73, align 4
  %74 = load i32, i32* @V4L2_FIELD_INTERLACED, align 4
  %75 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %76 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 5
  store i32 %74, i32* %78, align 8
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @VIDIOC_TRY_FMT, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %123

83:                                               ; preds = %39
  %84 = load i32, i32* %9, align 4
  %85 = load %struct.au0828_dev*, %struct.au0828_dev** %5, align 8
  %86 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* %10, align 4
  %88 = load %struct.au0828_dev*, %struct.au0828_dev** %5, align 8
  %89 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %10, align 4
  %92 = mul nsw i32 %90, %91
  %93 = mul nsw i32 %92, 2
  %94 = load %struct.au0828_dev*, %struct.au0828_dev** %5, align 8
  %95 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %10, align 4
  %98 = mul nsw i32 %96, %97
  %99 = load %struct.au0828_dev*, %struct.au0828_dev** %5, align 8
  %100 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %99, i32 0, i32 3
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* %9, align 4
  %102 = mul nsw i32 %101, 2
  %103 = load %struct.au0828_dev*, %struct.au0828_dev** %5, align 8
  %104 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %103, i32 0, i32 4
  store i32 %102, i32* %104, align 8
  %105 = load %struct.au0828_dev*, %struct.au0828_dev** %5, align 8
  %106 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %105, i32 0, i32 5
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @STREAM_ON, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %120

110:                                              ; preds = %83
  %111 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %112 = load %struct.au0828_dev*, %struct.au0828_dev** %5, align 8
  %113 = call i32 @au0828_stream_interrupt(%struct.au0828_dev* %112)
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %8, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %110
  %117 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %118 = load i32, i32* %8, align 4
  store i32 %118, i32* %4, align 4
  br label %123

119:                                              ; preds = %110
  br label %120

120:                                              ; preds = %119, %83
  %121 = load %struct.au0828_dev*, %struct.au0828_dev** %5, align 8
  %122 = call i32 @au0828_analog_stream_enable(%struct.au0828_dev* %121)
  store i32 0, i32* %4, align 4
  br label %123

123:                                              ; preds = %120, %116, %82, %28
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local i32 @dprintk(i32, i8*) #1

declare dso_local i32 @au0828_stream_interrupt(%struct.au0828_dev*) #1

declare dso_local i32 @au0828_analog_stream_enable(%struct.au0828_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

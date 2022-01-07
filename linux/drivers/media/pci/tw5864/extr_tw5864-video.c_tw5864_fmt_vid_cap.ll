; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/tw5864/extr_tw5864-video.c_tw5864_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/tw5864/extr_tw5864-video.c_tw5864_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }
%struct.tw5864_input = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_FIELD_INTERLACED = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_H264 = common dso_local global i32 0, align 4
@H264_VLC_BUF_SIZE = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SMPTE170M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @tw5864_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tw5864_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.tw5864_input*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call %struct.tw5864_input* @video_drvdata(%struct.file* %9)
  store %struct.tw5864_input* %10, %struct.tw5864_input** %8, align 8
  %11 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %12 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i32 704, i32* %14, align 4
  %15 = load %struct.tw5864_input*, %struct.tw5864_input** %8, align 8
  %16 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %18 [
    i32 130, label %22
    i32 129, label %27
    i32 128, label %27
  ]

18:                                               ; preds = %3
  %19 = call i32 @WARN_ON_ONCE(i32 1)
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %53

22:                                               ; preds = %3
  %23 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %24 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  store i32 480, i32* %26, align 4
  br label %32

27:                                               ; preds = %3, %3
  %28 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  store i32 576, i32* %31, align 4
  br label %32

32:                                               ; preds = %27, %22
  %33 = load i32, i32* @V4L2_FIELD_INTERLACED, align 4
  %34 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %35 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 5
  store i32 %33, i32* %37, align 4
  %38 = load i32, i32* @V4L2_PIX_FMT_H264, align 4
  %39 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 4
  store i32 %38, i32* %42, align 4
  %43 = load i32, i32* @H264_VLC_BUF_SIZE, align 4
  %44 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %45 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 3
  store i32 %43, i32* %47, align 4
  %48 = load i32, i32* @V4L2_COLORSPACE_SMPTE170M, align 4
  %49 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %50 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  store i32 %48, i32* %52, align 4
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %32, %18
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.tw5864_input* @video_drvdata(%struct.file*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

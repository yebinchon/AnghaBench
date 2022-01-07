; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-video.c_saa7134_g_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-video.c_saa7134_g_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_selection = type { i64, i32, i32 }
%struct.saa7134_dev = type { i32, i32, i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VIDEO_OVERLAY = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_selection*)* @saa7134_g_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7134_g_selection(%struct.file* %0, i8* %1, %struct.v4l2_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_selection*, align 8
  %8 = alloca %struct.saa7134_dev*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_selection* %2, %struct.v4l2_selection** %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call %struct.saa7134_dev* @video_drvdata(%struct.file* %9)
  store %struct.saa7134_dev* %10, %struct.saa7134_dev** %8, align 8
  %11 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %12 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %3
  %17 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %18 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OVERLAY, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %51

25:                                               ; preds = %16, %3
  %26 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %27 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %47 [
    i32 130, label %29
    i32 128, label %35
    i32 129, label %41
  ]

29:                                               ; preds = %25
  %30 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %31 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  br label %50

35:                                               ; preds = %25
  %36 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %37 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  br label %50

41:                                               ; preds = %25
  %42 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %43 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %46 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  br label %50

47:                                               ; preds = %25
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %51

50:                                               ; preds = %41, %35, %29
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %50, %47, %22
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local %struct.saa7134_dev* @video_drvdata(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

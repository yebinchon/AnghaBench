; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-video.c_vidioc_s_std.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-video.c_vidioc_s_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.em28xx = type { %struct.em28xx_v4l2* }
%struct.em28xx_v4l2 = type { i64, i64, i32, i32, i32, i32, i32 }
%struct.v4l2_format = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@V4L2_STD_525_60 = common dso_local global i64 0, align 8
@video = common dso_local global i32 0, align 4
@s_std = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i64)* @vidioc_s_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_std(%struct.file* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.em28xx*, align 8
  %9 = alloca %struct.em28xx_v4l2*, align 8
  %10 = alloca %struct.v4l2_format, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.em28xx* @video_drvdata(%struct.file* %11)
  store %struct.em28xx* %12, %struct.em28xx** %8, align 8
  %13 = load %struct.em28xx*, %struct.em28xx** %8, align 8
  %14 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %13, i32 0, i32 0
  %15 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %14, align 8
  store %struct.em28xx_v4l2* %15, %struct.em28xx_v4l2** %9, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %9, align 8
  %18 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %83

22:                                               ; preds = %3
  %23 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %9, align 8
  %24 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @EBUSY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %83

30:                                               ; preds = %22
  %31 = load i64, i64* %7, align 8
  %32 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %9, align 8
  %33 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %10, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i32 720, i32* %36, align 4
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* @V4L2_STD_525_60, align 8
  %39 = and i64 %37, %38
  %40 = icmp ne i64 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 480, i32 576
  %43 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %10, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 4
  %46 = load %struct.file*, %struct.file** %5, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 @vidioc_try_fmt_vid_cap(%struct.file* %46, i8* %47, %struct.v4l2_format* %10)
  %49 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %10, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %9, align 8
  %54 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %10, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %9, align 8
  %60 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load %struct.em28xx*, %struct.em28xx** %8, align 8
  %62 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %9, align 8
  %63 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %9, align 8
  %66 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %9, align 8
  %69 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %68, i32 0, i32 6
  %70 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %9, align 8
  %71 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %70, i32 0, i32 5
  %72 = call i32 @size_to_scale(%struct.em28xx* %61, i32 %64, i32 %67, i32* %69, i32* %71)
  %73 = load %struct.em28xx*, %struct.em28xx** %8, align 8
  %74 = call i32 @em28xx_resolution_set(%struct.em28xx* %73)
  %75 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %9, align 8
  %76 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %75, i32 0, i32 4
  %77 = load i32, i32* @video, align 4
  %78 = load i32, i32* @s_std, align 4
  %79 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %9, align 8
  %80 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @v4l2_device_call_all(i32* %76, i32 0, i32 %77, i32 %78, i64 %81)
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %30, %27, %21
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local %struct.em28xx* @video_drvdata(%struct.file*) #1

declare dso_local i32 @vidioc_try_fmt_vid_cap(%struct.file*, i8*, %struct.v4l2_format*) #1

declare dso_local i32 @size_to_scale(%struct.em28xx*, i32, i32, i32*, i32*) #1

declare dso_local i32 @em28xx_resolution_set(%struct.em28xx*) #1

declare dso_local i32 @v4l2_device_call_all(i32*, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

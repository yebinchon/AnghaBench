; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/sta2x11/extr_sta2x11_vip.c_vidioc_s_std.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/sta2x11/extr_sta2x11_vip.c_vidioc_s_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.sta2x11_vip = type { i32, i32, i32 }

@V4L2_STD_ALL = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@querystd = common dso_local global i32 0, align 4
@V4L2_STD_UNKNOWN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@formats_60 = common dso_local global i32* null, align 8
@formats_50 = common dso_local global i32* null, align 8
@s_std = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @vidioc_s_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_std(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sta2x11_vip*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call %struct.sta2x11_vip* @video_drvdata(%struct.file* %9)
  store %struct.sta2x11_vip* %10, %struct.sta2x11_vip** %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @V4L2_STD_ALL, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %3
  %15 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %8, align 8
  %16 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @video, align 4
  %19 = load i32, i32* @querystd, align 4
  %20 = call i32 (i32, i32, i32, ...) @v4l2_subdev_call(i32 %17, i32 %18, i32 %19, i32* %7)
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @V4L2_STD_UNKNOWN, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %14
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %63

27:                                               ; preds = %14
  br label %28

28:                                               ; preds = %27, %3
  %29 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %8, align 8
  %30 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %55

34:                                               ; preds = %28
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %8, align 8
  %37 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @V4L2_STD_525_60, align 4
  %39 = load i32, i32* %7, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %34
  %43 = load i32*, i32** @formats_60, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %8, align 8
  %47 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  br label %54

48:                                               ; preds = %34
  %49 = load i32*, i32** @formats_50, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %8, align 8
  %53 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %48, %42
  br label %55

55:                                               ; preds = %54, %28
  %56 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %8, align 8
  %57 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @video, align 4
  %60 = load i32, i32* @s_std, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 (i32, i32, i32, ...) @v4l2_subdev_call(i32 %58, i32 %59, i32 %60, i32 %61)
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %55, %24
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local %struct.sta2x11_vip* @video_drvdata(%struct.file*) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

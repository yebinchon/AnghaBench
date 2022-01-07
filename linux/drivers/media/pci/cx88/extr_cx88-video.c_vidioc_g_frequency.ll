; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-video.c_vidioc_g_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-video.c_vidioc_g_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_frequency = type { i32, i64 }
%struct.cx8800_dev = type { %struct.cx88_core* }
%struct.cx88_core = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@UNSET = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@tuner = common dso_local global i32 0, align 4
@g_frequency = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_frequency*)* @vidioc_g_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_g_frequency(%struct.file* %0, i8* %1, %struct.v4l2_frequency* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_frequency*, align 8
  %8 = alloca %struct.cx8800_dev*, align 8
  %9 = alloca %struct.cx88_core*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_frequency* %2, %struct.v4l2_frequency** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.cx8800_dev* @video_drvdata(%struct.file* %10)
  store %struct.cx8800_dev* %11, %struct.cx8800_dev** %8, align 8
  %12 = load %struct.cx8800_dev*, %struct.cx8800_dev** %8, align 8
  %13 = getelementptr inbounds %struct.cx8800_dev, %struct.cx8800_dev* %12, i32 0, i32 0
  %14 = load %struct.cx88_core*, %struct.cx88_core** %13, align 8
  store %struct.cx88_core* %14, %struct.cx88_core** %9, align 8
  %15 = load %struct.cx88_core*, %struct.cx88_core** %9, align 8
  %16 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @UNSET, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %46

27:                                               ; preds = %3
  %28 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %46

35:                                               ; preds = %27
  %36 = load %struct.cx88_core*, %struct.cx88_core** %9, align 8
  %37 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.cx88_core*, %struct.cx88_core** %9, align 8
  %42 = load i32, i32* @tuner, align 4
  %43 = load i32, i32* @g_frequency, align 4
  %44 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %45 = call i32 @call_all(%struct.cx88_core* %41, i32 %42, i32 %43, %struct.v4l2_frequency* %44)
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %35, %32, %24
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local %struct.cx8800_dev* @video_drvdata(%struct.file*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @call_all(%struct.cx88_core*, i32, i32, %struct.v4l2_frequency*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-cadet.c_vidioc_s_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-cadet.c_vidioc_s_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.file = type { i32 }
%struct.v4l2_frequency = type { i32, i64 }
%struct.cadet = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@bands = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_frequency*)* @vidioc_s_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_frequency(%struct.file* %0, i8* %1, %struct.v4l2_frequency* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_frequency*, align 8
  %8 = alloca %struct.cadet*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_frequency* %2, %struct.v4l2_frequency** %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call %struct.cadet* @video_drvdata(%struct.file* %9)
  store %struct.cadet* %10, %struct.cadet** %8, align 8
  %11 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %12 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %41

18:                                               ; preds = %3
  %19 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bands, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bands, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %25, %29
  %31 = sdiv i32 %30, 2
  %32 = icmp sge i32 %21, %31
  %33 = zext i1 %32 to i32
  %34 = load %struct.cadet*, %struct.cadet** %8, align 8
  %35 = getelementptr inbounds %struct.cadet, %struct.cadet* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.cadet*, %struct.cadet** %8, align 8
  %37 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %38 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @cadet_setfreq(%struct.cadet* %36, i32 %39)
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %18, %15
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local %struct.cadet* @video_drvdata(%struct.file*) #1

declare dso_local i32 @cadet_setfreq(%struct.cadet*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

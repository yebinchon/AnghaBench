; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/hackrf/extr_hackrf.c_hackrf_s_modulator.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/hackrf/extr_hackrf.c_hackrf_s_modulator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_modulator = type { i32 }
%struct.hackrf_dev = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"index=%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_modulator*)* @hackrf_s_modulator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hackrf_s_modulator(%struct.file* %0, i8* %1, %struct.v4l2_modulator* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_modulator*, align 8
  %7 = alloca %struct.hackrf_dev*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_modulator* %2, %struct.v4l2_modulator** %6, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = call %struct.hackrf_dev* @video_drvdata(%struct.file* %8)
  store %struct.hackrf_dev* %9, %struct.hackrf_dev** %7, align 8
  %10 = load %struct.hackrf_dev*, %struct.hackrf_dev** %7, align 8
  %11 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.v4l2_modulator*, %struct.v4l2_modulator** %6, align 8
  %14 = getelementptr inbounds %struct.v4l2_modulator, %struct.v4l2_modulator* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @dev_dbg(i32 %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.v4l2_modulator*, %struct.v4l2_modulator** %6, align 8
  %18 = getelementptr inbounds %struct.v4l2_modulator, %struct.v4l2_modulator* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp sgt i32 %19, 1
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  br label %25

24:                                               ; preds = %3
  br label %25

25:                                               ; preds = %24, %21
  %26 = phi i32 [ %23, %21 ], [ 0, %24 ]
  ret i32 %26
}

declare dso_local %struct.hackrf_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

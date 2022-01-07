; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/airspy/extr_airspy.c_airspy_g_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/airspy/extr_airspy.c_airspy_g_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_frequency = type { i32, i32, i32 }
%struct.airspy = type { i32, i32, i32 }

@V4L2_TUNER_ADC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"ADC frequency=%u Hz\0A\00", align 1
@V4L2_TUNER_RF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"RF frequency=%u Hz\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_frequency*)* @airspy_g_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @airspy_g_frequency(%struct.file* %0, i8* %1, %struct.v4l2_frequency* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_frequency*, align 8
  %7 = alloca %struct.airspy*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_frequency* %2, %struct.v4l2_frequency** %6, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = call %struct.airspy* @video_drvdata(%struct.file* %9)
  store %struct.airspy* %10, %struct.airspy** %7, align 8
  %11 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %6, align 8
  %12 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %3
  %16 = load i32, i32* @V4L2_TUNER_ADC, align 4
  %17 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %6, align 8
  %18 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load %struct.airspy*, %struct.airspy** %7, align 8
  %20 = getelementptr inbounds %struct.airspy, %struct.airspy* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %6, align 8
  %23 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.airspy*, %struct.airspy** %7, align 8
  %25 = getelementptr inbounds %struct.airspy, %struct.airspy* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.airspy*, %struct.airspy** %7, align 8
  %28 = getelementptr inbounds %struct.airspy, %struct.airspy* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_dbg(i32 %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %29)
  store i32 0, i32* %8, align 4
  br label %56

31:                                               ; preds = %3
  %32 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %6, align 8
  %33 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %52

36:                                               ; preds = %31
  %37 = load i32, i32* @V4L2_TUNER_RF, align 4
  %38 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %6, align 8
  %39 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load %struct.airspy*, %struct.airspy** %7, align 8
  %41 = getelementptr inbounds %struct.airspy, %struct.airspy* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %6, align 8
  %44 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.airspy*, %struct.airspy** %7, align 8
  %46 = getelementptr inbounds %struct.airspy, %struct.airspy* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.airspy*, %struct.airspy** %7, align 8
  %49 = getelementptr inbounds %struct.airspy, %struct.airspy* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @dev_dbg(i32 %47, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  store i32 0, i32* %8, align 4
  br label %55

52:                                               ; preds = %31
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %52, %36
  br label %56

56:                                               ; preds = %55, %15
  %57 = load i32, i32* %8, align 4
  ret i32 %57
}

declare dso_local %struct.airspy* @video_drvdata(%struct.file*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

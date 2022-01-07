; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/msi2500/extr_msi2500.c_msi2500_g_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/msi2500/extr_msi2500.c_msi2500_g_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_frequency = type { i32, i32, i32 }
%struct.msi2500_dev = type { i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"tuner=%d type=%d\0A\00", align 1
@V4L2_TUNER_RF = common dso_local global i32 0, align 4
@tuner = common dso_local global i32 0, align 4
@g_frequency = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_frequency*)* @msi2500_g_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msi2500_g_frequency(%struct.file* %0, i8* %1, %struct.v4l2_frequency* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_frequency*, align 8
  %7 = alloca %struct.msi2500_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_frequency* %2, %struct.v4l2_frequency** %6, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = call %struct.msi2500_dev* @video_drvdata(%struct.file* %9)
  store %struct.msi2500_dev* %10, %struct.msi2500_dev** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.msi2500_dev*, %struct.msi2500_dev** %7, align 8
  %12 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %6, align 8
  %15 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %6, align 8
  %18 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dev_dbg(i32 %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19)
  %21 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %6, align 8
  %22 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %3
  %26 = load %struct.msi2500_dev*, %struct.msi2500_dev** %7, align 8
  %27 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %6, align 8
  %30 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  store i32 0, i32* %8, align 4
  br label %51

31:                                               ; preds = %3
  %32 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %6, align 8
  %33 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %47

36:                                               ; preds = %31
  %37 = load i32, i32* @V4L2_TUNER_RF, align 4
  %38 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %6, align 8
  %39 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.msi2500_dev*, %struct.msi2500_dev** %7, align 8
  %41 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @tuner, align 4
  %44 = load i32, i32* @g_frequency, align 4
  %45 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %6, align 8
  %46 = call i32 @v4l2_subdev_call(i32 %42, i32 %43, i32 %44, %struct.v4l2_frequency* %45)
  store i32 %46, i32* %8, align 4
  br label %50

47:                                               ; preds = %31
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %47, %36
  br label %51

51:                                               ; preds = %50, %25
  %52 = load i32, i32* %8, align 4
  ret i32 %52
}

declare dso_local %struct.msi2500_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, %struct.v4l2_frequency*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/msi2500/extr_msi2500.c_msi2500_g_tuner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/msi2500/extr_msi2500.c_msi2500_g_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_tuner = type { i32, i32, i32, i32, i32, i32 }
%struct.msi2500_dev = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"index=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Mirics MSi2500\00", align 1
@V4L2_TUNER_ADC = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_1HZ = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_FREQ_BANDS = common dso_local global i32 0, align 4
@tuner = common dso_local global i32 0, align 4
@g_tuner = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_tuner*)* @msi2500_g_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msi2500_g_tuner(%struct.file* %0, i8* %1, %struct.v4l2_tuner* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_tuner*, align 8
  %7 = alloca %struct.msi2500_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_tuner* %2, %struct.v4l2_tuner** %6, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = call %struct.msi2500_dev* @video_drvdata(%struct.file* %9)
  store %struct.msi2500_dev* %10, %struct.msi2500_dev** %7, align 8
  %11 = load %struct.msi2500_dev*, %struct.msi2500_dev** %7, align 8
  %12 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %6, align 8
  %15 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dev_dbg(i32 %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %6, align 8
  %19 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %3
  %23 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %6, align 8
  %24 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @strscpy(i32 %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %27 = load i32, i32* @V4L2_TUNER_ADC, align 4
  %28 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %6, align 8
  %29 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @V4L2_TUNER_CAP_1HZ, align 4
  %31 = load i32, i32* @V4L2_TUNER_CAP_FREQ_BANDS, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %6, align 8
  %34 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %6, align 8
  %36 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %35, i32 0, i32 2
  store i32 1200000, i32* %36, align 4
  %37 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %6, align 8
  %38 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %37, i32 0, i32 3
  store i32 15000000, i32* %38, align 4
  store i32 0, i32* %8, align 4
  br label %56

39:                                               ; preds = %3
  %40 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %6, align 8
  %41 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load %struct.msi2500_dev*, %struct.msi2500_dev** %7, align 8
  %46 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @tuner, align 4
  %49 = load i32, i32* @g_tuner, align 4
  %50 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %6, align 8
  %51 = call i32 @v4l2_subdev_call(i32 %47, i32 %48, i32 %49, %struct.v4l2_tuner* %50)
  store i32 %51, i32* %8, align 4
  br label %55

52:                                               ; preds = %39
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %52, %44
  br label %56

56:                                               ; preds = %55, %22
  %57 = load i32, i32* %8, align 4
  ret i32 %57
}

declare dso_local %struct.msi2500_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, %struct.v4l2_tuner*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

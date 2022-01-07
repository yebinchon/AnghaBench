; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/hackrf/extr_hackrf.c_hackrf_g_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/hackrf/extr_hackrf.c_hackrf_g_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_frequency = type { i32, i32, i32 }
%struct.hackrf_dev = type { i32, i32, i32, i32, i32, %struct.usb_interface* }
%struct.usb_interface = type { i32 }
%struct.video_device = type { i64 }

@.str = private unnamed_addr constant [18 x i8] c"tuner=%d type=%d\0A\00", align 1
@V4L2_TUNER_SDR = common dso_local global i32 0, align 4
@VFL_DIR_RX = common dso_local global i64 0, align 8
@V4L2_TUNER_RF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_frequency*)* @hackrf_g_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hackrf_g_frequency(%struct.file* %0, i8* %1, %struct.v4l2_frequency* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_frequency*, align 8
  %8 = alloca %struct.hackrf_dev*, align 8
  %9 = alloca %struct.usb_interface*, align 8
  %10 = alloca %struct.video_device*, align 8
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_frequency* %2, %struct.v4l2_frequency** %7, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = call %struct.hackrf_dev* @video_drvdata(%struct.file* %12)
  store %struct.hackrf_dev* %13, %struct.hackrf_dev** %8, align 8
  %14 = load %struct.hackrf_dev*, %struct.hackrf_dev** %8, align 8
  %15 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %14, i32 0, i32 5
  %16 = load %struct.usb_interface*, %struct.usb_interface** %15, align 8
  store %struct.usb_interface* %16, %struct.usb_interface** %9, align 8
  %17 = load %struct.file*, %struct.file** %5, align 8
  %18 = call %struct.video_device* @video_devdata(%struct.file* %17)
  store %struct.video_device* %18, %struct.video_device** %10, align 8
  %19 = load %struct.hackrf_dev*, %struct.hackrf_dev** %8, align 8
  %20 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i32*
  %24 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %29)
  %31 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %32 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %57

35:                                               ; preds = %3
  %36 = load i32, i32* @V4L2_TUNER_SDR, align 4
  %37 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %38 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load %struct.video_device*, %struct.video_device** %10, align 8
  %40 = getelementptr inbounds %struct.video_device, %struct.video_device* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @VFL_DIR_RX, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %35
  %45 = load %struct.hackrf_dev*, %struct.hackrf_dev** %8, align 8
  %46 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %49 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  br label %56

50:                                               ; preds = %35
  %51 = load %struct.hackrf_dev*, %struct.hackrf_dev** %8, align 8
  %52 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %55 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %50, %44
  br label %88

57:                                               ; preds = %3
  %58 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %59 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %84

62:                                               ; preds = %57
  %63 = load i32, i32* @V4L2_TUNER_RF, align 4
  %64 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %65 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  %66 = load %struct.video_device*, %struct.video_device** %10, align 8
  %67 = getelementptr inbounds %struct.video_device, %struct.video_device* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @VFL_DIR_RX, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %62
  %72 = load %struct.hackrf_dev*, %struct.hackrf_dev** %8, align 8
  %73 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %76 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  br label %83

77:                                               ; preds = %62
  %78 = load %struct.hackrf_dev*, %struct.hackrf_dev** %8, align 8
  %79 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %82 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  br label %83

83:                                               ; preds = %77, %71
  br label %87

84:                                               ; preds = %57
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %11, align 4
  br label %89

87:                                               ; preds = %83
  br label %88

88:                                               ; preds = %87, %56
  store i32 0, i32* %4, align 4
  br label %95

89:                                               ; preds = %84
  %90 = load %struct.usb_interface*, %struct.usb_interface** %9, align 8
  %91 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %90, i32 0, i32 0
  %92 = load i32, i32* %11, align 4
  %93 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %91, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* %11, align 4
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %89, %88
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local %struct.hackrf_dev* @video_drvdata(%struct.file*) #1

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

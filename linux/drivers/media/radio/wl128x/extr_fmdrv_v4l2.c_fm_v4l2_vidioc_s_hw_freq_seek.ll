; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_v4l2.c_fm_v4l2_vidioc_s_hw_freq_seek.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_v4l2.c_fm_v4l2_vidioc_s_hw_freq_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_hw_freq_seek = type { i32, i32, i32 }
%struct.fmdev = type { i64 }

@O_NONBLOCK = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@FM_MODE_RX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Failed to set RX mode\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"RX seek failed - %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_hw_freq_seek*)* @fm_v4l2_vidioc_s_hw_freq_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm_v4l2_vidioc_s_hw_freq_seek(%struct.file* %0, i8* %1, %struct.v4l2_hw_freq_seek* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_hw_freq_seek*, align 8
  %8 = alloca %struct.fmdev*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_hw_freq_seek* %2, %struct.v4l2_hw_freq_seek** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.fmdev* @video_drvdata(%struct.file* %10)
  store %struct.fmdev* %11, %struct.fmdev** %8, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @O_NONBLOCK, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EWOULDBLOCK, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %56

21:                                               ; preds = %3
  %22 = load %struct.fmdev*, %struct.fmdev** %8, align 8
  %23 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @FM_MODE_RX, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %21
  %28 = load %struct.fmdev*, %struct.fmdev** %8, align 8
  %29 = load i64, i64* @FM_MODE_RX, align 8
  %30 = call i32 @fmc_set_mode(%struct.fmdev* %28, i64 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = call i32 (i8*, ...) @fmerr(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %4, align 4
  br label %56

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36, %21
  %38 = load %struct.fmdev*, %struct.fmdev** %8, align 8
  %39 = load %struct.v4l2_hw_freq_seek*, %struct.v4l2_hw_freq_seek** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_hw_freq_seek, %struct.v4l2_hw_freq_seek* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.v4l2_hw_freq_seek*, %struct.v4l2_hw_freq_seek** %7, align 8
  %43 = getelementptr inbounds %struct.v4l2_hw_freq_seek, %struct.v4l2_hw_freq_seek* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.v4l2_hw_freq_seek*, %struct.v4l2_hw_freq_seek** %7, align 8
  %46 = getelementptr inbounds %struct.v4l2_hw_freq_seek, %struct.v4l2_hw_freq_seek* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @fm_rx_seek(%struct.fmdev* %38, i32 %41, i32 %44, i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %37
  %52 = load i32, i32* %9, align 4
  %53 = call i32 (i8*, ...) @fmerr(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %51, %37
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %54, %33, %18
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.fmdev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @fmc_set_mode(%struct.fmdev*, i64) #1

declare dso_local i32 @fmerr(i8*, ...) #1

declare dso_local i32 @fm_rx_seek(%struct.fmdev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

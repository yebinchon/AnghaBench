; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/si470x/extr_radio-si470x-common.c_si470x_vidioc_s_hw_freq_seek.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/si470x/extr_radio-si470x-common.c_si470x_vidioc_s_hw_freq_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_hw_freq_seek = type { i64 }
%struct.si470x_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_hw_freq_seek*)* @si470x_vidioc_s_hw_freq_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si470x_vidioc_s_hw_freq_seek(%struct.file* %0, i8* %1, %struct.v4l2_hw_freq_seek* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_hw_freq_seek*, align 8
  %8 = alloca %struct.si470x_device*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_hw_freq_seek* %2, %struct.v4l2_hw_freq_seek** %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call %struct.si470x_device* @video_drvdata(%struct.file* %9)
  store %struct.si470x_device* %10, %struct.si470x_device** %8, align 8
  %11 = load %struct.v4l2_hw_freq_seek*, %struct.v4l2_hw_freq_seek** %7, align 8
  %12 = getelementptr inbounds %struct.v4l2_hw_freq_seek, %struct.v4l2_hw_freq_seek* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %32

18:                                               ; preds = %3
  %19 = load %struct.file*, %struct.file** %5, align 8
  %20 = getelementptr inbounds %struct.file, %struct.file* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @O_NONBLOCK, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i32, i32* @EWOULDBLOCK, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %32

28:                                               ; preds = %18
  %29 = load %struct.si470x_device*, %struct.si470x_device** %8, align 8
  %30 = load %struct.v4l2_hw_freq_seek*, %struct.v4l2_hw_freq_seek** %7, align 8
  %31 = call i32 @si470x_set_seek(%struct.si470x_device* %29, %struct.v4l2_hw_freq_seek* %30)
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %28, %25, %15
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local %struct.si470x_device* @video_drvdata(%struct.file*) #1

declare dso_local i32 @si470x_set_seek(%struct.si470x_device*, %struct.v4l2_hw_freq_seek*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

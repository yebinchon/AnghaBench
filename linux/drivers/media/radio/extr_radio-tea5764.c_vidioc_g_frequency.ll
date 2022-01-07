; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-tea5764.c_vidioc_g_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-tea5764.c_vidioc_g_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_frequency = type { i64, i32, i32 }
%struct.tea5764_device = type { %struct.tea5764_regs }
%struct.tea5764_regs = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_TUNER_RADIO = common dso_local global i32 0, align 4
@TEA5764_TNCTRL_PUPD0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_frequency*)* @vidioc_g_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_g_frequency(%struct.file* %0, i8* %1, %struct.v4l2_frequency* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_frequency*, align 8
  %8 = alloca %struct.tea5764_device*, align 8
  %9 = alloca %struct.tea5764_regs*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_frequency* %2, %struct.v4l2_frequency** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.tea5764_device* @video_drvdata(%struct.file* %10)
  store %struct.tea5764_device* %11, %struct.tea5764_device** %8, align 8
  %12 = load %struct.tea5764_device*, %struct.tea5764_device** %8, align 8
  %13 = getelementptr inbounds %struct.tea5764_device, %struct.tea5764_device* %12, i32 0, i32 0
  store %struct.tea5764_regs* %13, %struct.tea5764_regs** %9, align 8
  %14 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %15 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %44

21:                                               ; preds = %3
  %22 = load %struct.tea5764_device*, %struct.tea5764_device** %8, align 8
  %23 = call i32 @tea5764_i2c_read(%struct.tea5764_device* %22)
  %24 = load i32, i32* @V4L2_TUNER_RADIO, align 4
  %25 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %26 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load %struct.tea5764_regs*, %struct.tea5764_regs** %9, align 8
  %28 = getelementptr inbounds %struct.tea5764_regs, %struct.tea5764_regs* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @TEA5764_TNCTRL_PUPD0, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %21
  %34 = load %struct.tea5764_device*, %struct.tea5764_device** %8, align 8
  %35 = call i32 @tea5764_get_freq(%struct.tea5764_device* %34)
  %36 = mul nsw i32 %35, 2
  %37 = sdiv i32 %36, 125
  %38 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %39 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  br label %43

40:                                               ; preds = %21
  %41 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %42 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %41, i32 0, i32 1
  store i32 0, i32* %42, align 8
  br label %43

43:                                               ; preds = %40, %33
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %18
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local %struct.tea5764_device* @video_drvdata(%struct.file*) #1

declare dso_local i32 @tea5764_i2c_read(%struct.tea5764_device*) #1

declare dso_local i32 @tea5764_get_freq(%struct.tea5764_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

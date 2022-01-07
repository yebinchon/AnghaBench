; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-video.c_cx23885_set_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-video.c_cx23885_set_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx23885_dev = type { i64, i32, i32 }
%struct.v4l2_frequency = type { i64, i32 }
%struct.v4l2_ctrl = type { i32 }

@TUNER_ABSENT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_MUTE = common dso_local global i32 0, align 4
@tuner = common dso_local global i32 0, align 4
@s_frequency = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx23885_dev*, %struct.v4l2_frequency*)* @cx23885_set_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx23885_set_freq(%struct.cx23885_dev* %0, %struct.v4l2_frequency* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cx23885_dev*, align 8
  %5 = alloca %struct.v4l2_frequency*, align 8
  %6 = alloca %struct.v4l2_ctrl*, align 8
  %7 = alloca i32, align 4
  store %struct.cx23885_dev* %0, %struct.cx23885_dev** %4, align 8
  store %struct.v4l2_frequency* %1, %struct.v4l2_frequency** %5, align 8
  store i32 1, i32* %7, align 4
  %8 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %9 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @TUNER_ABSENT, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %62

16:                                               ; preds = %2
  %17 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %5, align 8
  %18 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %62

27:                                               ; preds = %16
  %28 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %5, align 8
  %29 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %32 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %34 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %33, i32 0, i32 1
  %35 = load i32, i32* @V4L2_CID_AUDIO_MUTE, align 4
  %36 = call %struct.v4l2_ctrl* @v4l2_ctrl_find(i32* %34, i32 %35)
  store %struct.v4l2_ctrl* %36, %struct.v4l2_ctrl** %6, align 8
  %37 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %38 = icmp ne %struct.v4l2_ctrl* %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %27
  %40 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %41 = call i32 @v4l2_ctrl_g_ctrl(%struct.v4l2_ctrl* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %46 = call i32 @v4l2_ctrl_s_ctrl(%struct.v4l2_ctrl* %45, i32 1)
  br label %47

47:                                               ; preds = %44, %39
  br label %48

48:                                               ; preds = %47, %27
  %49 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %50 = load i32, i32* @tuner, align 4
  %51 = load i32, i32* @s_frequency, align 4
  %52 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %5, align 8
  %53 = call i32 @call_all(%struct.cx23885_dev* %49, i32 %50, i32 %51, %struct.v4l2_frequency* %52)
  %54 = call i32 @msleep(i32 100)
  %55 = load i32, i32* %7, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %48
  %58 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @v4l2_ctrl_s_ctrl(%struct.v4l2_ctrl* %58, i32 %59)
  br label %61

61:                                               ; preds = %57, %48
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %24, %13
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.v4l2_ctrl* @v4l2_ctrl_find(i32*, i32) #1

declare dso_local i32 @v4l2_ctrl_g_ctrl(%struct.v4l2_ctrl*) #1

declare dso_local i32 @v4l2_ctrl_s_ctrl(%struct.v4l2_ctrl*, i32) #1

declare dso_local i32 @call_all(%struct.cx23885_dev*, i32, i32, %struct.v4l2_frequency*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

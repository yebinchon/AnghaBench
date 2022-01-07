; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_tuner-core.c_tuner_s_tuner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_tuner-core.c_tuner_s_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_tuner = type { i64, i32 }
%struct.tuner = type { i64, i64 }

@V4L2_TUNER_RADIO = common dso_local global i64 0, align 8
@V4L2_TUNER_MODE_MONO = common dso_local global i64 0, align 8
@V4L2_TUNER_MODE_STEREO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_tuner*)* @tuner_s_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tuner_s_tuner(%struct.v4l2_subdev* %0, %struct.v4l2_tuner* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_tuner*, align 8
  %6 = alloca %struct.tuner*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_tuner* %1, %struct.v4l2_tuner** %5, align 8
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %8 = call %struct.tuner* @to_tuner(%struct.v4l2_subdev* %7)
  store %struct.tuner* %8, %struct.tuner** %6, align 8
  %9 = load %struct.tuner*, %struct.tuner** %6, align 8
  %10 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %11 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @set_mode(%struct.tuner* %9, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %47

16:                                               ; preds = %2
  %17 = load %struct.tuner*, %struct.tuner** %6, align 8
  %18 = getelementptr inbounds %struct.tuner, %struct.tuner* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @V4L2_TUNER_RADIO, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %44

22:                                               ; preds = %16
  %23 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %24 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.tuner*, %struct.tuner** %6, align 8
  %27 = getelementptr inbounds %struct.tuner, %struct.tuner* %26, i32 0, i32 1
  store i64 %25, i64* %27, align 8
  %28 = load %struct.tuner*, %struct.tuner** %6, align 8
  %29 = getelementptr inbounds %struct.tuner, %struct.tuner* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @V4L2_TUNER_MODE_MONO, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %22
  %34 = load %struct.tuner*, %struct.tuner** %6, align 8
  %35 = getelementptr inbounds %struct.tuner, %struct.tuner* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @V4L2_TUNER_MODE_STEREO, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i64, i64* @V4L2_TUNER_MODE_STEREO, align 8
  %41 = load %struct.tuner*, %struct.tuner** %6, align 8
  %42 = getelementptr inbounds %struct.tuner, %struct.tuner* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  br label %43

43:                                               ; preds = %39, %33, %22
  br label %44

44:                                               ; preds = %43, %16
  %45 = load %struct.tuner*, %struct.tuner** %6, align 8
  %46 = call i32 @set_freq(%struct.tuner* %45, i32 0)
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %44, %15
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.tuner* @to_tuner(%struct.v4l2_subdev*) #1

declare dso_local i64 @set_mode(%struct.tuner*, i32) #1

declare dso_local i32 @set_freq(%struct.tuner*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

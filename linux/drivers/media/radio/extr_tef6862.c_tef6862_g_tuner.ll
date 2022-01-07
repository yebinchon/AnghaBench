; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_tef6862.c_tef6862_g_tuner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_tef6862.c_tef6862_g_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_tuner = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"FM\00", align 1
@V4L2_TUNER_RADIO = common dso_local global i32 0, align 4
@TEF6862_LO_FREQ = common dso_local global i32 0, align 4
@TEF6862_HI_FREQ = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_MONO = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_LOW = common dso_local global i32 0, align 4
@V4L2_TUNER_MODE_STEREO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_tuner*)* @tef6862_g_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tef6862_g_tuner(%struct.v4l2_subdev* %0, %struct.v4l2_tuner* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_tuner*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_tuner* %1, %struct.v4l2_tuner** %5, align 8
  %6 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %7 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %41

13:                                               ; preds = %2
  %14 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %15 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %14, i32 0, i32 8
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @strscpy(i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 4)
  %18 = load i32, i32* @V4L2_TUNER_RADIO, align 4
  %19 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %20 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %19, i32 0, i32 7
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* @TEF6862_LO_FREQ, align 4
  %22 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %23 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %22, i32 0, i32 6
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @TEF6862_HI_FREQ, align 4
  %25 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %26 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* @V4L2_TUNER_SUB_MONO, align 4
  %28 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %29 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @V4L2_TUNER_CAP_LOW, align 4
  %31 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %32 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* @V4L2_TUNER_MODE_STEREO, align 4
  %34 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %35 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %37 = call i32 @v4l2_get_subdevdata(%struct.v4l2_subdev* %36)
  %38 = call i32 @tef6862_sigstr(i32 %37)
  %39 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %40 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %13, %10
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @tef6862_sigstr(i32) #1

declare dso_local i32 @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

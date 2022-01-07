; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvaudio.c_tvaudio_g_tuner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvaudio.c_tvaudio_g_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_tuner = type { i32, i32, i32 }
%struct.CHIPSTATE = type { i32, i64, %struct.CHIPDESC* }
%struct.CHIPDESC = type { i32 (%struct.CHIPSTATE*)* }

@V4L2_TUNER_CAP_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_LANG1 = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_LANG2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_tuner*)* @tvaudio_g_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tvaudio_g_tuner(%struct.v4l2_subdev* %0, %struct.v4l2_tuner* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_tuner*, align 8
  %6 = alloca %struct.CHIPSTATE*, align 8
  %7 = alloca %struct.CHIPDESC*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_tuner* %1, %struct.v4l2_tuner** %5, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %9 = call %struct.CHIPSTATE* @to_state(%struct.v4l2_subdev* %8)
  store %struct.CHIPSTATE* %9, %struct.CHIPSTATE** %6, align 8
  %10 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %6, align 8
  %11 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %10, i32 0, i32 2
  %12 = load %struct.CHIPDESC*, %struct.CHIPDESC** %11, align 8
  store %struct.CHIPDESC* %12, %struct.CHIPDESC** %7, align 8
  %13 = load %struct.CHIPDESC*, %struct.CHIPDESC** %7, align 8
  %14 = getelementptr inbounds %struct.CHIPDESC, %struct.CHIPDESC* %13, i32 0, i32 0
  %15 = load i32 (%struct.CHIPSTATE*)*, i32 (%struct.CHIPSTATE*)** %14, align 8
  %16 = icmp ne i32 (%struct.CHIPSTATE*)* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %46

18:                                               ; preds = %2
  %19 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %6, align 8
  %20 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %46

24:                                               ; preds = %18
  %25 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %6, align 8
  %26 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %29 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load %struct.CHIPDESC*, %struct.CHIPDESC** %7, align 8
  %31 = getelementptr inbounds %struct.CHIPDESC, %struct.CHIPDESC* %30, i32 0, i32 0
  %32 = load i32 (%struct.CHIPSTATE*)*, i32 (%struct.CHIPSTATE*)** %31, align 8
  %33 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %6, align 8
  %34 = call i32 %32(%struct.CHIPSTATE* %33)
  %35 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %36 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @V4L2_TUNER_CAP_STEREO, align 4
  %38 = load i32, i32* @V4L2_TUNER_CAP_LANG1, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @V4L2_TUNER_CAP_LANG2, align 4
  %41 = or i32 %39, %40
  %42 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %43 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %24, %23, %17
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.CHIPSTATE* @to_state(%struct.v4l2_subdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

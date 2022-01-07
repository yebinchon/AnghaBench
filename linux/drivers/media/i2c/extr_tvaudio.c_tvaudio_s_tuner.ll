; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvaudio.c_tvaudio_s_tuner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvaudio.c_tvaudio_s_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_tuner = type { i32 }
%struct.CHIPSTATE = type { i64, i32, i64, %struct.CHIPDESC* }
%struct.CHIPDESC = type { i32 (%struct.CHIPSTATE*, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_tuner*)* @tvaudio_s_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tvaudio_s_tuner(%struct.v4l2_subdev* %0, %struct.v4l2_tuner* %1) #0 {
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
  %11 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %10, i32 0, i32 3
  %12 = load %struct.CHIPDESC*, %struct.CHIPDESC** %11, align 8
  store %struct.CHIPDESC* %12, %struct.CHIPDESC** %7, align 8
  %13 = load %struct.CHIPDESC*, %struct.CHIPDESC** %7, align 8
  %14 = getelementptr inbounds %struct.CHIPDESC, %struct.CHIPDESC* %13, i32 0, i32 0
  %15 = load i32 (%struct.CHIPSTATE*, i32)*, i32 (%struct.CHIPSTATE*, i32)** %14, align 8
  %16 = icmp ne i32 (%struct.CHIPSTATE*, i32)* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %57

18:                                               ; preds = %2
  %19 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %6, align 8
  %20 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %57

24:                                               ; preds = %18
  %25 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %26 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %29 [
    i32 129, label %28
    i32 128, label %28
    i32 132, label %28
    i32 130, label %28
    i32 131, label %28
  ]

28:                                               ; preds = %24, %24, %24, %24, %24
  br label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %57

32:                                               ; preds = %28
  %33 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %34 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %6, align 8
  %37 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %6, align 8
  %39 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %32
  %43 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %6, align 8
  %44 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @wake_up_process(i64 %45)
  br label %56

47:                                               ; preds = %32
  %48 = load %struct.CHIPDESC*, %struct.CHIPDESC** %7, align 8
  %49 = getelementptr inbounds %struct.CHIPDESC, %struct.CHIPDESC* %48, i32 0, i32 0
  %50 = load i32 (%struct.CHIPSTATE*, i32)*, i32 (%struct.CHIPSTATE*, i32)** %49, align 8
  %51 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %6, align 8
  %52 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %53 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 %50(%struct.CHIPSTATE* %51, i32 %54)
  br label %56

56:                                               ; preds = %47, %42
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %29, %23, %17
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.CHIPSTATE* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @wake_up_process(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

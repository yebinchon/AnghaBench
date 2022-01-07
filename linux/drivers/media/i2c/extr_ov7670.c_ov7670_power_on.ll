; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7670.c_ov7670_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7670.c_ov7670_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.ov7670_info = type { i32, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_subdev*)* @ov7670_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ov7670_power_on(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca %struct.v4l2_subdev*, align 8
  %3 = alloca %struct.ov7670_info*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %2, align 8
  %4 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %5 = call %struct.ov7670_info* @to_state(%struct.v4l2_subdev* %4)
  store %struct.ov7670_info* %5, %struct.ov7670_info** %3, align 8
  %6 = load %struct.ov7670_info*, %struct.ov7670_info** %3, align 8
  %7 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %60

11:                                               ; preds = %1
  %12 = load %struct.ov7670_info*, %struct.ov7670_info** %3, align 8
  %13 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @clk_prepare_enable(i64 %14)
  %16 = load %struct.ov7670_info*, %struct.ov7670_info** %3, align 8
  %17 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %11
  %21 = load %struct.ov7670_info*, %struct.ov7670_info** %3, align 8
  %22 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @gpiod_set_value(i64 %23, i32 0)
  br label %25

25:                                               ; preds = %20, %11
  %26 = load %struct.ov7670_info*, %struct.ov7670_info** %3, align 8
  %27 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %25
  %31 = load %struct.ov7670_info*, %struct.ov7670_info** %3, align 8
  %32 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @gpiod_set_value(i64 %33, i32 1)
  %35 = call i32 @usleep_range(i32 500, i32 1000)
  %36 = load %struct.ov7670_info*, %struct.ov7670_info** %3, align 8
  %37 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @gpiod_set_value(i64 %38, i32 0)
  br label %40

40:                                               ; preds = %30, %25
  %41 = load %struct.ov7670_info*, %struct.ov7670_info** %3, align 8
  %42 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %40
  %46 = load %struct.ov7670_info*, %struct.ov7670_info** %3, align 8
  %47 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %45
  %51 = load %struct.ov7670_info*, %struct.ov7670_info** %3, align 8
  %52 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50, %45, %40
  %56 = call i32 @usleep_range(i32 3000, i32 5000)
  br label %57

57:                                               ; preds = %55, %50
  %58 = load %struct.ov7670_info*, %struct.ov7670_info** %3, align 8
  %59 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  br label %60

60:                                               ; preds = %57, %10
  ret void
}

declare dso_local %struct.ov7670_info* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @clk_prepare_enable(i64) #1

declare dso_local i32 @gpiod_set_value(i64, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

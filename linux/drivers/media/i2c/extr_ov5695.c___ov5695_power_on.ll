; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5695.c___ov5695_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5695.c___ov5695_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov5695 = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Failed to enable xvclk\0A\00", align 1
@OV5695_NUM_SUPPLIES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to enable regulators\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov5695*)* @__ov5695_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ov5695_power_on(%struct.ov5695* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ov5695*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  store %struct.ov5695* %0, %struct.ov5695** %3, align 8
  %7 = load %struct.ov5695*, %struct.ov5695** %3, align 8
  %8 = getelementptr inbounds %struct.ov5695, %struct.ov5695* %7, i32 0, i32 3
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.ov5695*, %struct.ov5695** %3, align 8
  %12 = getelementptr inbounds %struct.ov5695, %struct.ov5695* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @clk_prepare_enable(i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = call i32 @dev_err(%struct.device* %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %52

21:                                               ; preds = %1
  %22 = load %struct.ov5695*, %struct.ov5695** %3, align 8
  %23 = getelementptr inbounds %struct.ov5695, %struct.ov5695* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @gpiod_set_value_cansleep(i32 %24, i32 1)
  %26 = load i32, i32* @OV5695_NUM_SUPPLIES, align 4
  %27 = load %struct.ov5695*, %struct.ov5695** %3, align 8
  %28 = getelementptr inbounds %struct.ov5695, %struct.ov5695* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @regulator_bulk_enable(i32 %26, i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %21
  %34 = load %struct.device*, %struct.device** %6, align 8
  %35 = call i32 @dev_err(%struct.device* %34, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %46

36:                                               ; preds = %21
  %37 = load %struct.ov5695*, %struct.ov5695** %3, align 8
  %38 = getelementptr inbounds %struct.ov5695, %struct.ov5695* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @gpiod_set_value_cansleep(i32 %39, i32 0)
  %41 = call i32 @ov5695_cal_delay(i32 8192)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = mul nsw i32 %43, 2
  %45 = call i32 @usleep_range(i32 %42, i32 %44)
  store i32 0, i32* %2, align 4
  br label %52

46:                                               ; preds = %33
  %47 = load %struct.ov5695*, %struct.ov5695** %3, align 8
  %48 = getelementptr inbounds %struct.ov5695, %struct.ov5695* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @clk_disable_unprepare(i32 %49)
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %46, %36, %17
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

declare dso_local i32 @regulator_bulk_enable(i32, i32) #1

declare dso_local i32 @ov5695_cal_delay(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

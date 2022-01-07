; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5645.c_ov5645_set_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5645.c_ov5645_set_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov5645 = type { i32, i32, i32, i32, i32 }

@OV5645_NUM_SUPPLIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"clk prepare enable failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov5645*)* @ov5645_set_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov5645_set_power_on(%struct.ov5645* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ov5645*, align 8
  %4 = alloca i32, align 4
  store %struct.ov5645* %0, %struct.ov5645** %3, align 8
  %5 = load i32, i32* @OV5645_NUM_SUPPLIES, align 4
  %6 = load %struct.ov5645*, %struct.ov5645** %3, align 8
  %7 = getelementptr inbounds %struct.ov5645, %struct.ov5645* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @regulator_bulk_enable(i32 %5, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %44

14:                                               ; preds = %1
  %15 = load %struct.ov5645*, %struct.ov5645** %3, align 8
  %16 = getelementptr inbounds %struct.ov5645, %struct.ov5645* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @clk_prepare_enable(i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %14
  %22 = load %struct.ov5645*, %struct.ov5645** %3, align 8
  %23 = getelementptr inbounds %struct.ov5645, %struct.ov5645* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @OV5645_NUM_SUPPLIES, align 4
  %27 = load %struct.ov5645*, %struct.ov5645** %3, align 8
  %28 = getelementptr inbounds %struct.ov5645, %struct.ov5645* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @regulator_bulk_disable(i32 %26, i32 %29)
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %44

32:                                               ; preds = %14
  %33 = call i32 @usleep_range(i32 5000, i32 15000)
  %34 = load %struct.ov5645*, %struct.ov5645** %3, align 8
  %35 = getelementptr inbounds %struct.ov5645, %struct.ov5645* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @gpiod_set_value_cansleep(i32 %36, i32 1)
  %38 = call i32 @usleep_range(i32 1000, i32 2000)
  %39 = load %struct.ov5645*, %struct.ov5645** %3, align 8
  %40 = getelementptr inbounds %struct.ov5645, %struct.ov5645* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @gpiod_set_value_cansleep(i32 %41, i32 0)
  %43 = call i32 @msleep(i32 20)
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %32, %21, %12
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @regulator_bulk_enable(i32, i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

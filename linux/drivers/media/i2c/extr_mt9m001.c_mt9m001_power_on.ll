; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9m001.c_mt9m001_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9m001.c_mt9m001_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.i2c_client = type { i32 }
%struct.mt9m001 = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @mt9m001_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9m001_power_on(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.mt9m001*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.i2c_client* @to_i2c_client(%struct.device* %7)
  store %struct.i2c_client* %8, %struct.i2c_client** %4, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = call %struct.mt9m001* @to_mt9m001(%struct.i2c_client* %9)
  store %struct.mt9m001* %10, %struct.mt9m001** %5, align 8
  %11 = load %struct.mt9m001*, %struct.mt9m001** %5, align 8
  %12 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @clk_prepare_enable(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %2, align 4
  br label %47

19:                                               ; preds = %1
  %20 = load %struct.mt9m001*, %struct.mt9m001** %5, align 8
  %21 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.mt9m001*, %struct.mt9m001** %5, align 8
  %26 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @gpiod_set_value_cansleep(i64 %27, i32 0)
  %29 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %30

30:                                               ; preds = %24, %19
  %31 = load %struct.mt9m001*, %struct.mt9m001** %5, align 8
  %32 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %30
  %36 = load %struct.mt9m001*, %struct.mt9m001** %5, align 8
  %37 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @gpiod_set_value_cansleep(i64 %38, i32 1)
  %40 = call i32 @usleep_range(i32 1000, i32 2000)
  %41 = load %struct.mt9m001*, %struct.mt9m001** %5, align 8
  %42 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @gpiod_set_value_cansleep(i64 %43, i32 0)
  %45 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %46

46:                                               ; preds = %35, %30
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %17
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.mt9m001* @to_mt9m001(%struct.i2c_client*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @gpiod_set_value_cansleep(i64, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

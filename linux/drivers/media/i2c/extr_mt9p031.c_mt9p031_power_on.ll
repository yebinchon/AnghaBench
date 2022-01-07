; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9p031.c_mt9p031_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9p031.c_mt9p031_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt9p031 = type { i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt9p031*)* @mt9p031_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9p031_power_on(%struct.mt9p031* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt9p031*, align 8
  %4 = alloca i32, align 4
  store %struct.mt9p031* %0, %struct.mt9p031** %3, align 8
  %5 = load %struct.mt9p031*, %struct.mt9p031** %3, align 8
  %6 = getelementptr inbounds %struct.mt9p031, %struct.mt9p031* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.mt9p031*, %struct.mt9p031** %3, align 8
  %11 = getelementptr inbounds %struct.mt9p031, %struct.mt9p031* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @gpiod_set_value(i64 %12, i32 1)
  %14 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %15

15:                                               ; preds = %9, %1
  %16 = load %struct.mt9p031*, %struct.mt9p031** %3, align 8
  %17 = getelementptr inbounds %struct.mt9p031, %struct.mt9p031* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @ARRAY_SIZE(i32 %18)
  %20 = load %struct.mt9p031*, %struct.mt9p031** %3, align 8
  %21 = getelementptr inbounds %struct.mt9p031, %struct.mt9p031* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @regulator_bulk_enable(i32 %19, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %15
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %63

28:                                               ; preds = %15
  %29 = load %struct.mt9p031*, %struct.mt9p031** %3, align 8
  %30 = getelementptr inbounds %struct.mt9p031, %struct.mt9p031* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %28
  %34 = load %struct.mt9p031*, %struct.mt9p031** %3, align 8
  %35 = getelementptr inbounds %struct.mt9p031, %struct.mt9p031* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @clk_prepare_enable(i64 %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %33
  %41 = load %struct.mt9p031*, %struct.mt9p031** %3, align 8
  %42 = getelementptr inbounds %struct.mt9p031, %struct.mt9p031* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @ARRAY_SIZE(i32 %43)
  %45 = load %struct.mt9p031*, %struct.mt9p031** %3, align 8
  %46 = getelementptr inbounds %struct.mt9p031, %struct.mt9p031* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @regulator_bulk_disable(i32 %44, i32 %47)
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %2, align 4
  br label %63

50:                                               ; preds = %33
  br label %51

51:                                               ; preds = %50, %28
  %52 = load %struct.mt9p031*, %struct.mt9p031** %3, align 8
  %53 = getelementptr inbounds %struct.mt9p031, %struct.mt9p031* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load %struct.mt9p031*, %struct.mt9p031** %3, align 8
  %58 = getelementptr inbounds %struct.mt9p031, %struct.mt9p031* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @gpiod_set_value(i64 %59, i32 0)
  %61 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %62

62:                                               ; preds = %56, %51
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %62, %40, %26
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @gpiod_set_value(i64, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @regulator_bulk_enable(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @clk_prepare_enable(i64) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

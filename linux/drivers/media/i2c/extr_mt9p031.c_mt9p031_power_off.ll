; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9p031.c_mt9p031_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9p031.c_mt9p031_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt9p031 = type { i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt9p031*)* @mt9p031_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt9p031_power_off(%struct.mt9p031* %0) #0 {
  %2 = alloca %struct.mt9p031*, align 8
  store %struct.mt9p031* %0, %struct.mt9p031** %2, align 8
  %3 = load %struct.mt9p031*, %struct.mt9p031** %2, align 8
  %4 = getelementptr inbounds %struct.mt9p031, %struct.mt9p031* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load %struct.mt9p031*, %struct.mt9p031** %2, align 8
  %9 = getelementptr inbounds %struct.mt9p031, %struct.mt9p031* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @gpiod_set_value(i64 %10, i32 1)
  %12 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %13

13:                                               ; preds = %7, %1
  %14 = load %struct.mt9p031*, %struct.mt9p031** %2, align 8
  %15 = getelementptr inbounds %struct.mt9p031, %struct.mt9p031* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @ARRAY_SIZE(i32 %16)
  %18 = load %struct.mt9p031*, %struct.mt9p031** %2, align 8
  %19 = getelementptr inbounds %struct.mt9p031, %struct.mt9p031* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @regulator_bulk_disable(i32 %17, i32 %20)
  %22 = load %struct.mt9p031*, %struct.mt9p031** %2, align 8
  %23 = getelementptr inbounds %struct.mt9p031, %struct.mt9p031* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %13
  %27 = load %struct.mt9p031*, %struct.mt9p031** %2, align 8
  %28 = getelementptr inbounds %struct.mt9p031, %struct.mt9p031* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @clk_disable_unprepare(i64 %29)
  br label %31

31:                                               ; preds = %26, %13
  ret void
}

declare dso_local i32 @gpiod_set_value(i64, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

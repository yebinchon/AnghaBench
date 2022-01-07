; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k6a3.c___s5k6a3_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k6a3.c___s5k6a3_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5k6a3 = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@S5K6A3_NUM_SUPPLIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5k6a3*)* @__s5k6a3_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__s5k6a3_power_off(%struct.s5k6a3* %0) #0 {
  %2 = alloca %struct.s5k6a3*, align 8
  %3 = alloca i32, align 4
  store %struct.s5k6a3* %0, %struct.s5k6a3** %2, align 8
  %4 = load %struct.s5k6a3*, %struct.s5k6a3** %2, align 8
  %5 = getelementptr inbounds %struct.s5k6a3, %struct.s5k6a3* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @gpio_set_value(i32 %6, i32 0)
  %8 = load i32, i32* @S5K6A3_NUM_SUPPLIES, align 4
  %9 = sub nsw i32 %8, 1
  store i32 %9, i32* %3, align 4
  br label %10

10:                                               ; preds = %23, %1
  %11 = load i32, i32* %3, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %10
  %14 = load %struct.s5k6a3*, %struct.s5k6a3** %2, align 8
  %15 = getelementptr inbounds %struct.s5k6a3, %struct.s5k6a3* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @regulator_disable(i32 %21)
  br label %23

23:                                               ; preds = %13
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %3, align 4
  br label %10

26:                                               ; preds = %10
  %27 = load %struct.s5k6a3*, %struct.s5k6a3** %2, align 8
  %28 = getelementptr inbounds %struct.s5k6a3, %struct.s5k6a3* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @clk_disable_unprepare(i32 %29)
  %31 = load %struct.s5k6a3*, %struct.s5k6a3** %2, align 8
  %32 = getelementptr inbounds %struct.s5k6a3, %struct.s5k6a3* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @pm_runtime_put(i32 %33)
  ret i32 0
}

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @pm_runtime_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

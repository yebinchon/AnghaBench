; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k4ecgx.c___s5k4ecgx_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k4ecgx.c___s5k4ecgx_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5k4ecgx = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@RST = common dso_local global i64 0, align 8
@STBY = common dso_local global i64 0, align 8
@S5K4ECGX_NUM_SUPPLIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5k4ecgx*)* @__s5k4ecgx_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__s5k4ecgx_power_off(%struct.s5k4ecgx* %0) #0 {
  %2 = alloca %struct.s5k4ecgx*, align 8
  store %struct.s5k4ecgx* %0, %struct.s5k4ecgx** %2, align 8
  %3 = load %struct.s5k4ecgx*, %struct.s5k4ecgx** %2, align 8
  %4 = load i64, i64* @RST, align 8
  %5 = load %struct.s5k4ecgx*, %struct.s5k4ecgx** %2, align 8
  %6 = getelementptr inbounds %struct.s5k4ecgx, %struct.s5k4ecgx* %5, i32 0, i32 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = load i64, i64* @RST, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @s5k4ecgx_gpio_set_value(%struct.s5k4ecgx* %3, i64 %4, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = call i32 @usleep_range(i32 30, i32 50)
  br label %19

19:                                               ; preds = %17, %1
  %20 = load %struct.s5k4ecgx*, %struct.s5k4ecgx** %2, align 8
  %21 = load i64, i64* @STBY, align 8
  %22 = load %struct.s5k4ecgx*, %struct.s5k4ecgx** %2, align 8
  %23 = getelementptr inbounds %struct.s5k4ecgx, %struct.s5k4ecgx* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i64, i64* @STBY, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i64 @s5k4ecgx_gpio_set_value(%struct.s5k4ecgx* %20, i64 %21, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %19
  %35 = call i32 @usleep_range(i32 30, i32 50)
  br label %36

36:                                               ; preds = %34, %19
  %37 = load %struct.s5k4ecgx*, %struct.s5k4ecgx** %2, align 8
  %38 = getelementptr inbounds %struct.s5k4ecgx, %struct.s5k4ecgx* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load i32, i32* @S5K4ECGX_NUM_SUPPLIES, align 4
  %40 = load %struct.s5k4ecgx*, %struct.s5k4ecgx** %2, align 8
  %41 = getelementptr inbounds %struct.s5k4ecgx, %struct.s5k4ecgx* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @regulator_bulk_disable(i32 %39, i32 %42)
  ret i32 %43
}

declare dso_local i64 @s5k4ecgx_gpio_set_value(%struct.s5k4ecgx*, i64, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

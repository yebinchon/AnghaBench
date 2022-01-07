; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k4ecgx.c___s5k4ecgx_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k4ecgx.c___s5k4ecgx_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5k4ecgx = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@S5K4ECGX_NUM_SUPPLIES = common dso_local global i32 0, align 4
@STBY = common dso_local global i64 0, align 8
@RST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5k4ecgx*)* @__s5k4ecgx_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__s5k4ecgx_power_on(%struct.s5k4ecgx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s5k4ecgx*, align 8
  %4 = alloca i32, align 4
  store %struct.s5k4ecgx* %0, %struct.s5k4ecgx** %3, align 8
  %5 = load i32, i32* @S5K4ECGX_NUM_SUPPLIES, align 4
  %6 = load %struct.s5k4ecgx*, %struct.s5k4ecgx** %3, align 8
  %7 = getelementptr inbounds %struct.s5k4ecgx, %struct.s5k4ecgx* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @regulator_bulk_enable(i32 %5, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %44

14:                                               ; preds = %1
  %15 = call i32 @usleep_range(i32 30, i32 50)
  %16 = load %struct.s5k4ecgx*, %struct.s5k4ecgx** %3, align 8
  %17 = load i64, i64* @STBY, align 8
  %18 = load %struct.s5k4ecgx*, %struct.s5k4ecgx** %3, align 8
  %19 = getelementptr inbounds %struct.s5k4ecgx, %struct.s5k4ecgx* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i64, i64* @STBY, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @s5k4ecgx_gpio_set_value(%struct.s5k4ecgx* %16, i64 %17, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %14
  %28 = call i32 @usleep_range(i32 30, i32 50)
  br label %29

29:                                               ; preds = %27, %14
  %30 = load %struct.s5k4ecgx*, %struct.s5k4ecgx** %3, align 8
  %31 = load i64, i64* @RST, align 8
  %32 = load %struct.s5k4ecgx*, %struct.s5k4ecgx** %3, align 8
  %33 = getelementptr inbounds %struct.s5k4ecgx, %struct.s5k4ecgx* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i64, i64* @RST, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @s5k4ecgx_gpio_set_value(%struct.s5k4ecgx* %30, i64 %31, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %29
  %42 = call i32 @usleep_range(i32 30, i32 50)
  br label %43

43:                                               ; preds = %41, %29
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %12
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @regulator_bulk_enable(i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @s5k4ecgx_gpio_set_value(%struct.s5k4ecgx*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

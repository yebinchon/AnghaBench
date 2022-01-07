; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7740.c_ov7740_set_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7740.c_ov7740_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov7740 = type { i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov7740*, i32)* @ov7740_set_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov7740_set_power(%struct.ov7740* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ov7740*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ov7740* %0, %struct.ov7740** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %45

9:                                                ; preds = %2
  %10 = load %struct.ov7740*, %struct.ov7740** %4, align 8
  %11 = getelementptr inbounds %struct.ov7740, %struct.ov7740* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @clk_prepare_enable(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %9
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %3, align 4
  br label %61

18:                                               ; preds = %9
  %19 = load %struct.ov7740*, %struct.ov7740** %4, align 8
  %20 = getelementptr inbounds %struct.ov7740, %struct.ov7740* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.ov7740*, %struct.ov7740** %4, align 8
  %25 = getelementptr inbounds %struct.ov7740, %struct.ov7740* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @gpiod_direction_output(i64 %26, i32 0)
  br label %28

28:                                               ; preds = %23, %18
  %29 = load %struct.ov7740*, %struct.ov7740** %4, align 8
  %30 = getelementptr inbounds %struct.ov7740, %struct.ov7740* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %28
  %34 = load %struct.ov7740*, %struct.ov7740** %4, align 8
  %35 = getelementptr inbounds %struct.ov7740, %struct.ov7740* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @gpiod_set_value(i64 %36, i32 1)
  %38 = call i32 @usleep_range(i32 500, i32 1000)
  %39 = load %struct.ov7740*, %struct.ov7740** %4, align 8
  %40 = getelementptr inbounds %struct.ov7740, %struct.ov7740* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @gpiod_set_value(i64 %41, i32 0)
  %43 = call i32 @usleep_range(i32 3000, i32 5000)
  br label %44

44:                                               ; preds = %33, %28
  br label %60

45:                                               ; preds = %2
  %46 = load %struct.ov7740*, %struct.ov7740** %4, align 8
  %47 = getelementptr inbounds %struct.ov7740, %struct.ov7740* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @clk_disable_unprepare(i32 %48)
  %50 = load %struct.ov7740*, %struct.ov7740** %4, align 8
  %51 = getelementptr inbounds %struct.ov7740, %struct.ov7740* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %45
  %55 = load %struct.ov7740*, %struct.ov7740** %4, align 8
  %56 = getelementptr inbounds %struct.ov7740, %struct.ov7740* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @gpiod_direction_output(i64 %57, i32 0)
  br label %59

59:                                               ; preds = %54, %45
  br label %60

60:                                               ; preds = %59, %44
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %16
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @gpiod_direction_output(i64, i32) #1

declare dso_local i32 @gpiod_set_value(i64, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

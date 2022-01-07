; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov9650.c___ov965x_set_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov9650.c___ov965x_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov965x = type { i64, i32, i32* }

@GPIO_PWDN = common dso_local global i64 0, align 8
@GPIO_RST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov965x*, i32)* @__ov965x_set_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ov965x_set_power(%struct.ov965x* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ov965x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ov965x* %0, %struct.ov965x** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %34

9:                                                ; preds = %2
  %10 = load %struct.ov965x*, %struct.ov965x** %4, align 8
  %11 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @clk_prepare_enable(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %9
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %3, align 4
  br label %56

18:                                               ; preds = %9
  %19 = load %struct.ov965x*, %struct.ov965x** %4, align 8
  %20 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* @GPIO_PWDN, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @gpiod_set_value_cansleep(i32 %24, i32 0)
  %26 = load %struct.ov965x*, %struct.ov965x** %4, align 8
  %27 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* @GPIO_RST, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @gpiod_set_value_cansleep(i32 %31, i32 0)
  %33 = call i32 @msleep(i32 25)
  br label %53

34:                                               ; preds = %2
  %35 = load %struct.ov965x*, %struct.ov965x** %4, align 8
  %36 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @GPIO_RST, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @gpiod_set_value_cansleep(i32 %40, i32 1)
  %42 = load %struct.ov965x*, %struct.ov965x** %4, align 8
  %43 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* @GPIO_PWDN, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @gpiod_set_value_cansleep(i32 %47, i32 1)
  %49 = load %struct.ov965x*, %struct.ov965x** %4, align 8
  %50 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @clk_disable_unprepare(i32 %51)
  br label %53

53:                                               ; preds = %34, %18
  %54 = load %struct.ov965x*, %struct.ov965x** %4, align 8
  %55 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %54, i32 0, i32 0
  store i64 0, i64* %55, align 8
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %53, %16
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

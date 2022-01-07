; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9v032.c_mt9v032_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9v032.c_mt9v032_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt9v032 = type { i32, i64, i32, %struct.regmap* }
%struct.regmap = type { i32 }

@MT9V032_RESET = common dso_local global i32 0, align 4
@MT9V032_CHIP_CONTROL = common dso_local global i32 0, align 4
@MT9V032_CHIP_CONTROL_MASTER_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt9v032*)* @mt9v032_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9v032_power_on(%struct.mt9v032* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt9v032*, align 8
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca i32, align 4
  store %struct.mt9v032* %0, %struct.mt9v032** %3, align 8
  %6 = load %struct.mt9v032*, %struct.mt9v032** %3, align 8
  %7 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %6, i32 0, i32 3
  %8 = load %struct.regmap*, %struct.regmap** %7, align 8
  store %struct.regmap* %8, %struct.regmap** %4, align 8
  %9 = load %struct.mt9v032*, %struct.mt9v032** %3, align 8
  %10 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @gpiod_set_value_cansleep(i64 %11, i32 1)
  %13 = load %struct.mt9v032*, %struct.mt9v032** %3, align 8
  %14 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.mt9v032*, %struct.mt9v032** %3, align 8
  %17 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @clk_set_rate(i32 %15, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %74

24:                                               ; preds = %1
  %25 = load %struct.mt9v032*, %struct.mt9v032** %3, align 8
  %26 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @clk_prepare_enable(i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %74

33:                                               ; preds = %24
  %34 = call i32 @udelay(i32 1)
  %35 = load %struct.mt9v032*, %struct.mt9v032** %3, align 8
  %36 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load %struct.mt9v032*, %struct.mt9v032** %3, align 8
  %41 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @gpiod_set_value_cansleep(i64 %42, i32 0)
  %44 = call i32 @udelay(i32 1)
  br label %45

45:                                               ; preds = %39, %33
  %46 = load %struct.regmap*, %struct.regmap** %4, align 8
  %47 = load i32, i32* @MT9V032_RESET, align 4
  %48 = call i32 @regmap_write(%struct.regmap* %46, i32 %47, i32 1)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %68

52:                                               ; preds = %45
  %53 = load %struct.regmap*, %struct.regmap** %4, align 8
  %54 = load i32, i32* @MT9V032_RESET, align 4
  %55 = call i32 @regmap_write(%struct.regmap* %53, i32 %54, i32 0)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %68

59:                                               ; preds = %52
  %60 = load %struct.regmap*, %struct.regmap** %4, align 8
  %61 = load i32, i32* @MT9V032_CHIP_CONTROL, align 4
  %62 = load i32, i32* @MT9V032_CHIP_CONTROL_MASTER_MODE, align 4
  %63 = call i32 @regmap_write(%struct.regmap* %60, i32 %61, i32 %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  br label %68

67:                                               ; preds = %59
  store i32 0, i32* %2, align 4
  br label %74

68:                                               ; preds = %66, %58, %51
  %69 = load %struct.mt9v032*, %struct.mt9v032** %3, align 8
  %70 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @clk_disable_unprepare(i32 %71)
  %73 = load i32, i32* %5, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %68, %67, %31, %22
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @gpiod_set_value_cansleep(i64, i32) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

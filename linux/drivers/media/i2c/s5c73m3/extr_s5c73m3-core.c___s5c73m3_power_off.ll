; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/s5c73m3/extr_s5c73m3-core.c___s5c73m3_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/s5c73m3/extr_s5c73m3-core.c___s5c73m3_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5c73m3 = type { i32, %struct.TYPE_2__*, i32, i64, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@RST = common dso_local global i32 0, align 4
@STBY = common dso_local global i32 0, align 4
@S5C73M3_MAX_SUPPLIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to re-enable %s: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5c73m3*)* @__s5c73m3_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__s5c73m3_power_off(%struct.s5c73m3* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s5c73m3*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.s5c73m3* %0, %struct.s5c73m3** %3, align 8
  %7 = load %struct.s5c73m3*, %struct.s5c73m3** %3, align 8
  %8 = load i32, i32* @RST, align 4
  %9 = call i64 @s5c73m3_gpio_assert(%struct.s5c73m3* %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 @usleep_range(i32 10, i32 50)
  br label %13

13:                                               ; preds = %11, %1
  %14 = load %struct.s5c73m3*, %struct.s5c73m3** %3, align 8
  %15 = load i32, i32* @STBY, align 4
  %16 = call i64 @s5c73m3_gpio_assert(%struct.s5c73m3* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = call i32 @usleep_range(i32 100, i32 200)
  br label %20

20:                                               ; preds = %18, %13
  %21 = load %struct.s5c73m3*, %struct.s5c73m3** %3, align 8
  %22 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @clk_disable_unprepare(i32 %23)
  %25 = load %struct.s5c73m3*, %struct.s5c73m3** %3, align 8
  %26 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %25, i32 0, i32 4
  store i64 0, i64* %26, align 8
  %27 = load %struct.s5c73m3*, %struct.s5c73m3** %3, align 8
  %28 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %27, i32 0, i32 3
  store i64 0, i64* %28, align 8
  %29 = load i32, i32* @S5C73M3_MAX_SUPPLIES, align 4
  %30 = sub nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %48, %20
  %32 = load i32, i32* %4, align 4
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %51

34:                                               ; preds = %31
  %35 = load %struct.s5c73m3*, %struct.s5c73m3** %3, align 8
  %36 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @regulator_disable(i32 %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %34
  br label %52

47:                                               ; preds = %34
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %4, align 4
  br label %31

51:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %94

52:                                               ; preds = %46
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %85, %52
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @S5C73M3_MAX_SUPPLIES, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %88

59:                                               ; preds = %55
  %60 = load %struct.s5c73m3*, %struct.s5c73m3** %3, align 8
  %61 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @regulator_enable(i32 %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %59
  %72 = load %struct.s5c73m3*, %struct.s5c73m3** %3, align 8
  %73 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %72, i32 0, i32 2
  %74 = load %struct.s5c73m3*, %struct.s5c73m3** %3, align 8
  %75 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %74, i32 0, i32 1
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @v4l2_err(i32* %73, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %71, %59
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %4, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %4, align 4
  br label %55

88:                                               ; preds = %55
  %89 = load %struct.s5c73m3*, %struct.s5c73m3** %3, align 8
  %90 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @clk_prepare_enable(i32 %91)
  %93 = load i32, i32* %5, align 4
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %88, %51
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i64 @s5c73m3_gpio_assert(%struct.s5c73m3*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @v4l2_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

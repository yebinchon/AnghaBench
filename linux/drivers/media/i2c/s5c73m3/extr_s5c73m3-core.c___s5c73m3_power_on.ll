; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/s5c73m3/extr_s5c73m3-core.c___s5c73m3_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/s5c73m3/extr_s5c73m3-core.c___s5c73m3_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5c73m3 = type { %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@S5C73M3_MAX_SUPPLIES = common dso_local global i32 0, align 4
@s5c73m3_dbg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"clock frequency: %ld\0A\00", align 1
@STBY = common dso_local global i32 0, align 4
@RST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5c73m3*)* @__s5c73m3_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__s5c73m3_power_on(%struct.s5c73m3* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s5c73m3*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.s5c73m3* %0, %struct.s5c73m3** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %24, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @S5C73M3_MAX_SUPPLIES, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %27

10:                                               ; preds = %6
  %11 = load %struct.s5c73m3*, %struct.s5c73m3** %3, align 8
  %12 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @regulator_enable(i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %10
  br label %63

23:                                               ; preds = %10
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %6

27:                                               ; preds = %6
  %28 = load %struct.s5c73m3*, %struct.s5c73m3** %3, align 8
  %29 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.s5c73m3*, %struct.s5c73m3** %3, align 8
  %32 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @clk_set_rate(i32 %30, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  br label %63

38:                                               ; preds = %27
  %39 = load %struct.s5c73m3*, %struct.s5c73m3** %3, align 8
  %40 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @clk_prepare_enable(i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %63

46:                                               ; preds = %38
  %47 = load i32, i32* @s5c73m3_dbg, align 4
  %48 = load %struct.s5c73m3*, %struct.s5c73m3** %3, align 8
  %49 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %48, i32 0, i32 2
  %50 = load %struct.s5c73m3*, %struct.s5c73m3** %3, align 8
  %51 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @clk_get_rate(i32 %52)
  %54 = call i32 @v4l2_dbg(i32 1, i32 %47, i32* %49, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load %struct.s5c73m3*, %struct.s5c73m3** %3, align 8
  %56 = load i32, i32* @STBY, align 4
  %57 = call i32 @s5c73m3_gpio_deassert(%struct.s5c73m3* %55, i32 %56)
  %58 = call i32 @usleep_range(i32 100, i32 200)
  %59 = load %struct.s5c73m3*, %struct.s5c73m3** %3, align 8
  %60 = load i32, i32* @RST, align 4
  %61 = call i32 @s5c73m3_gpio_deassert(%struct.s5c73m3* %59, i32 %60)
  %62 = call i32 @usleep_range(i32 50, i32 100)
  store i32 0, i32* %2, align 4
  br label %84

63:                                               ; preds = %45, %37, %22
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %79, %63
  %67 = load i32, i32* %4, align 4
  %68 = icmp sge i32 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %66
  %70 = load %struct.s5c73m3*, %struct.s5c73m3** %3, align 8
  %71 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @regulator_disable(i32 %77)
  br label %79

79:                                               ; preds = %69
  %80 = load i32, i32* %4, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %4, align 4
  br label %66

82:                                               ; preds = %66
  %83 = load i32, i32* %5, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %82, %46
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*, i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @s5c73m3_gpio_deassert(%struct.s5c73m3*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

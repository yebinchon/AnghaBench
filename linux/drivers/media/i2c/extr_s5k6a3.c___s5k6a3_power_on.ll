; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k6a3.c___s5k6a3_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k6a3.c___s5k6a3_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5k6a3 = type { i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@S5K6A3_SUPP_VDDA = common dso_local global i32 0, align 4
@S5K6A3_NUM_SUPPLIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5k6a3*)* @__s5k6a3_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__s5k6a3_power_on(%struct.s5k6a3* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s5k6a3*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.s5k6a3* %0, %struct.s5k6a3** %3, align 8
  %6 = load i32, i32* @S5K6A3_SUPP_VDDA, align 4
  store i32 %6, i32* %4, align 4
  %7 = load %struct.s5k6a3*, %struct.s5k6a3** %3, align 8
  %8 = getelementptr inbounds %struct.s5k6a3, %struct.s5k6a3* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.s5k6a3*, %struct.s5k6a3** %3, align 8
  %11 = getelementptr inbounds %struct.s5k6a3, %struct.s5k6a3* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @clk_set_rate(i32 %9, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %114

18:                                               ; preds = %1
  %19 = load %struct.s5k6a3*, %struct.s5k6a3** %3, align 8
  %20 = getelementptr inbounds %struct.s5k6a3, %struct.s5k6a3* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @pm_runtime_get(i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %114

27:                                               ; preds = %18
  %28 = load %struct.s5k6a3*, %struct.s5k6a3** %3, align 8
  %29 = getelementptr inbounds %struct.s5k6a3, %struct.s5k6a3* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @regulator_enable(i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %27
  br label %108

40:                                               ; preds = %27
  %41 = load %struct.s5k6a3*, %struct.s5k6a3** %3, align 8
  %42 = getelementptr inbounds %struct.s5k6a3, %struct.s5k6a3* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @clk_prepare_enable(i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %88

48:                                               ; preds = %40
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %69, %48
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @S5K6A3_NUM_SUPPLIES, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %72

55:                                               ; preds = %51
  %56 = load %struct.s5k6a3*, %struct.s5k6a3** %3, align 8
  %57 = getelementptr inbounds %struct.s5k6a3, %struct.s5k6a3* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @regulator_enable(i32 %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %55
  br label %88

68:                                               ; preds = %55
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %4, align 4
  br label %51

72:                                               ; preds = %51
  %73 = load %struct.s5k6a3*, %struct.s5k6a3** %3, align 8
  %74 = getelementptr inbounds %struct.s5k6a3, %struct.s5k6a3* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @gpio_set_value(i32 %75, i32 1)
  %77 = call i32 @usleep_range(i32 600, i32 800)
  %78 = load %struct.s5k6a3*, %struct.s5k6a3** %3, align 8
  %79 = getelementptr inbounds %struct.s5k6a3, %struct.s5k6a3* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @gpio_set_value(i32 %80, i32 0)
  %82 = call i32 @usleep_range(i32 600, i32 800)
  %83 = load %struct.s5k6a3*, %struct.s5k6a3** %3, align 8
  %84 = getelementptr inbounds %struct.s5k6a3, %struct.s5k6a3* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @gpio_set_value(i32 %85, i32 1)
  %87 = call i32 @msleep(i32 20)
  store i32 0, i32* %2, align 4
  br label %114

88:                                               ; preds = %67, %47
  %89 = load i32, i32* %4, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %104, %88
  %92 = load i32, i32* %4, align 4
  %93 = icmp sge i32 %92, 0
  br i1 %93, label %94, label %107

94:                                               ; preds = %91
  %95 = load %struct.s5k6a3*, %struct.s5k6a3** %3, align 8
  %96 = getelementptr inbounds %struct.s5k6a3, %struct.s5k6a3* %95, i32 0, i32 1
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = load i32, i32* %4, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @regulator_disable(i32 %102)
  br label %104

104:                                              ; preds = %94
  %105 = load i32, i32* %4, align 4
  %106 = add nsw i32 %105, -1
  store i32 %106, i32* %4, align 4
  br label %91

107:                                              ; preds = %91
  br label %108

108:                                              ; preds = %107, %39
  %109 = load %struct.s5k6a3*, %struct.s5k6a3** %3, align 8
  %110 = getelementptr inbounds %struct.s5k6a3, %struct.s5k6a3* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @pm_runtime_put(i32 %111)
  %113 = load i32, i32* %5, align 4
  store i32 %113, i32* %2, align 4
  br label %114

114:                                              ; preds = %108, %72, %25, %16
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @pm_runtime_get(i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @pm_runtime_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

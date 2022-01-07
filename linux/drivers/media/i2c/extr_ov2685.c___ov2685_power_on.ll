; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov2685.c___ov2685_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov2685.c___ov2685_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov2685 = type { i32, i32, %struct.TYPE_3__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Failed to enable xvclk\0A\00", align 1
@OV2685_NUM_SUPPLIES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to enable regulators\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov2685*)* @__ov2685_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ov2685_power_on(%struct.ov2685* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ov2685*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  store %struct.ov2685* %0, %struct.ov2685** %3, align 8
  %7 = load %struct.ov2685*, %struct.ov2685** %3, align 8
  %8 = getelementptr inbounds %struct.ov2685, %struct.ov2685* %7, i32 0, i32 3
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.ov2685*, %struct.ov2685** %3, align 8
  %12 = getelementptr inbounds %struct.ov2685, %struct.ov2685* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @clk_prepare_enable(i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = call i32 @dev_err(%struct.device* %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %71

21:                                               ; preds = %1
  %22 = load %struct.ov2685*, %struct.ov2685** %3, align 8
  %23 = getelementptr inbounds %struct.ov2685, %struct.ov2685* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @gpiod_set_value_cansleep(i32 %24, i32 1)
  %26 = load i32, i32* @OV2685_NUM_SUPPLIES, align 4
  %27 = load %struct.ov2685*, %struct.ov2685** %3, align 8
  %28 = getelementptr inbounds %struct.ov2685, %struct.ov2685* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @regulator_bulk_enable(i32 %26, i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %21
  %34 = load %struct.device*, %struct.device** %6, align 8
  %35 = call i32 @dev_err(%struct.device* %34, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %65

36:                                               ; preds = %21
  %37 = load %struct.ov2685*, %struct.ov2685** %3, align 8
  %38 = getelementptr inbounds %struct.ov2685, %struct.ov2685* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @gpiod_set_value_cansleep(i32 %39, i32 0)
  %41 = call i32 @ov2685_cal_delay(i32 8192)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = mul nsw i32 %43, 2
  %45 = call i32 @usleep_range(i32 %42, i32 %44)
  %46 = load %struct.ov2685*, %struct.ov2685** %3, align 8
  %47 = getelementptr inbounds %struct.ov2685, %struct.ov2685* %46, i32 0, i32 3
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load %struct.ov2685*, %struct.ov2685** %3, align 8
  %50 = getelementptr inbounds %struct.ov2685, %struct.ov2685* %49, i32 0, i32 2
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ov2685_write_array(%struct.TYPE_4__* %48, i32 %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %36
  br label %59

58:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %71

59:                                               ; preds = %57
  %60 = load i32, i32* @OV2685_NUM_SUPPLIES, align 4
  %61 = load %struct.ov2685*, %struct.ov2685** %3, align 8
  %62 = getelementptr inbounds %struct.ov2685, %struct.ov2685* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @regulator_bulk_disable(i32 %60, i32 %63)
  br label %65

65:                                               ; preds = %59, %33
  %66 = load %struct.ov2685*, %struct.ov2685** %3, align 8
  %67 = getelementptr inbounds %struct.ov2685, %struct.ov2685* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @clk_disable_unprepare(i32 %68)
  %70 = load i32, i32* %4, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %65, %58, %17
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

declare dso_local i32 @regulator_bulk_enable(i32, i32) #1

declare dso_local i32 @ov2685_cal_delay(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @ov2685_write_array(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

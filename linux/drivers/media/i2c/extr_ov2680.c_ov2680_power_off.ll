; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov2680.c_ov2680_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov2680.c_ov2680_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov2680_dev = type { i32, i32, i32 }

@OV2680_NUM_SUPPLIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov2680_dev*)* @ov2680_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov2680_power_off(%struct.ov2680_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ov2680_dev*, align 8
  store %struct.ov2680_dev* %0, %struct.ov2680_dev** %3, align 8
  %4 = load %struct.ov2680_dev*, %struct.ov2680_dev** %3, align 8
  %5 = getelementptr inbounds %struct.ov2680_dev, %struct.ov2680_dev* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %23

9:                                                ; preds = %1
  %10 = load %struct.ov2680_dev*, %struct.ov2680_dev** %3, align 8
  %11 = getelementptr inbounds %struct.ov2680_dev, %struct.ov2680_dev* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @clk_disable_unprepare(i32 %12)
  %14 = load %struct.ov2680_dev*, %struct.ov2680_dev** %3, align 8
  %15 = call i32 @ov2680_power_down(%struct.ov2680_dev* %14)
  %16 = load i32, i32* @OV2680_NUM_SUPPLIES, align 4
  %17 = load %struct.ov2680_dev*, %struct.ov2680_dev** %3, align 8
  %18 = getelementptr inbounds %struct.ov2680_dev, %struct.ov2680_dev* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @regulator_bulk_disable(i32 %16, i32 %19)
  %21 = load %struct.ov2680_dev*, %struct.ov2680_dev** %3, align 8
  %22 = getelementptr inbounds %struct.ov2680_dev, %struct.ov2680_dev* %21, i32 0, i32 0
  store i32 0, i32* %22, align 4
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %9, %8
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @ov2680_power_down(%struct.ov2680_dev*) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

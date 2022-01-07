; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_asic3.c_asic3_leds_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_asic3.c_asic3_leds_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mfd_cell = type { i64 }
%struct.asic3 = type { i32*, i32 }

@C = common dso_local global i32 0, align 4
@clock_ledn = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @asic3_leds_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asic3_leds_suspend(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.mfd_cell*, align 8
  %4 = alloca %struct.asic3*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.mfd_cell* @mfd_get_cell(%struct.platform_device* %5)
  store %struct.mfd_cell* %6, %struct.mfd_cell** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.asic3* @dev_get_drvdata(i32 %10)
  store %struct.asic3* %11, %struct.asic3** %4, align 8
  br label %12

12:                                               ; preds = %22, %1
  %13 = load %struct.asic3*, %struct.asic3** %4, align 8
  %14 = getelementptr inbounds %struct.asic3, %struct.asic3* %13, i32 0, i32 1
  %15 = load i32, i32* @C, align 4
  %16 = load %struct.mfd_cell*, %struct.mfd_cell** %3, align 8
  %17 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @ASIC3_GPIO(i32 %15, i64 %18)
  %20 = call i64 @asic3_gpio_get(i32* %14, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %12
  %23 = call i32 @usleep_range(i32 1000, i32 5000)
  br label %12

24:                                               ; preds = %12
  %25 = load %struct.asic3*, %struct.asic3** %4, align 8
  %26 = load %struct.asic3*, %struct.asic3** %4, align 8
  %27 = getelementptr inbounds %struct.asic3, %struct.asic3* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i64*, i64** @clock_ledn, align 8
  %30 = load %struct.mfd_cell*, %struct.mfd_cell** %3, align 8
  %31 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i64, i64* %29, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i32, i32* %28, i64 %34
  %36 = call i32 @asic3_clk_disable(%struct.asic3* %25, i32* %35)
  ret i32 0
}

declare dso_local %struct.mfd_cell* @mfd_get_cell(%struct.platform_device*) #1

declare dso_local %struct.asic3* @dev_get_drvdata(i32) #1

declare dso_local i64 @asic3_gpio_get(i32*, i32) #1

declare dso_local i32 @ASIC3_GPIO(i32, i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @asic3_clk_disable(%struct.asic3*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

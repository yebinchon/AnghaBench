; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/spi/extr_hi311x.c_hi3110_can_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/spi/extr_hi311x.c_hi3110_can_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.hi3110_priv = type { i32, i32, %struct.net_device* }
%struct.net_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @hi3110_can_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hi3110_can_remove(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca %struct.hi3110_priv*, align 8
  %4 = alloca %struct.net_device*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  %5 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %6 = call %struct.hi3110_priv* @spi_get_drvdata(%struct.spi_device* %5)
  store %struct.hi3110_priv* %6, %struct.hi3110_priv** %3, align 8
  %7 = load %struct.hi3110_priv*, %struct.hi3110_priv** %3, align 8
  %8 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %7, i32 0, i32 2
  %9 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %9, %struct.net_device** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call i32 @unregister_candev(%struct.net_device* %10)
  %12 = load %struct.hi3110_priv*, %struct.hi3110_priv** %3, align 8
  %13 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @hi3110_power_enable(i32 %14, i32 0)
  %16 = load %struct.hi3110_priv*, %struct.hi3110_priv** %3, align 8
  %17 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @IS_ERR(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %1
  %22 = load %struct.hi3110_priv*, %struct.hi3110_priv** %3, align 8
  %23 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @clk_disable_unprepare(i32 %24)
  br label %26

26:                                               ; preds = %21, %1
  %27 = load %struct.net_device*, %struct.net_device** %4, align 8
  %28 = call i32 @free_candev(%struct.net_device* %27)
  ret i32 0
}

declare dso_local %struct.hi3110_priv* @spi_get_drvdata(%struct.spi_device*) #1

declare dso_local i32 @unregister_candev(%struct.net_device*) #1

declare dso_local i32 @hi3110_power_enable(i32, i32) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @free_candev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

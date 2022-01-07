; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/sja1000/extr_tscan1.c_tscan1_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/sja1000/extr_tscan1.c_tscan1_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.net_device = type { i64 }
%struct.sja1000_priv = type { i64 }

@TSCAN1_MODE = common dso_local global i64 0, align 8
@TSCAN1_SJA1000_SIZE = common dso_local global i32 0, align 4
@TSCAN1_PLD_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @tscan1_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tscan1_remove(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.sja1000_priv*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.net_device* @dev_get_drvdata(%struct.device* %9)
  store %struct.net_device* %10, %struct.net_device** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call i32 @unregister_sja1000dev(%struct.net_device* %11)
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = call i32 @dev_set_drvdata(%struct.device* %13, i32* null)
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call %struct.sja1000_priv* @netdev_priv(%struct.net_device* %15)
  store %struct.sja1000_priv* %16, %struct.sja1000_priv** %6, align 8
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %7, align 8
  %20 = load %struct.sja1000_priv*, %struct.sja1000_priv** %6, align 8
  %21 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @TSCAN1_MODE, align 8
  %25 = add i64 %23, %24
  %26 = call i32 @outb(i32 0, i64 %25)
  %27 = load i64, i64* %8, align 8
  %28 = load i32, i32* @TSCAN1_SJA1000_SIZE, align 4
  %29 = call i32 @release_region(i64 %27, i32 %28)
  %30 = load i64, i64* %7, align 8
  %31 = load i32, i32* @TSCAN1_PLD_SIZE, align 4
  %32 = call i32 @release_region(i64 %30, i32 %31)
  %33 = load %struct.net_device*, %struct.net_device** %5, align 8
  %34 = call i32 @free_sja1000dev(%struct.net_device* %33)
  ret i32 0
}

declare dso_local %struct.net_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @unregister_sja1000dev(%struct.net_device*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, i32*) #1

declare dso_local %struct.sja1000_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @release_region(i64, i32) #1

declare dso_local i32 @free_sja1000dev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

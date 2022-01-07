; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/sja1000/extr_sja1000.c_sja1000_get_berr_counter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/sja1000/extr_sja1000.c_sja1000_get_berr_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.can_berr_counter = type { i32, i32 }
%struct.sja1000_priv = type { i32 (%struct.sja1000_priv*, i32)* }

@SJA1000_TXERR = common dso_local global i32 0, align 4
@SJA1000_RXERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.can_berr_counter*)* @sja1000_get_berr_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sja1000_get_berr_counter(%struct.net_device* %0, %struct.can_berr_counter* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.can_berr_counter*, align 8
  %5 = alloca %struct.sja1000_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.can_berr_counter* %1, %struct.can_berr_counter** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.sja1000_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.sja1000_priv* %7, %struct.sja1000_priv** %5, align 8
  %8 = load %struct.sja1000_priv*, %struct.sja1000_priv** %5, align 8
  %9 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %8, i32 0, i32 0
  %10 = load i32 (%struct.sja1000_priv*, i32)*, i32 (%struct.sja1000_priv*, i32)** %9, align 8
  %11 = load %struct.sja1000_priv*, %struct.sja1000_priv** %5, align 8
  %12 = load i32, i32* @SJA1000_TXERR, align 4
  %13 = call i32 %10(%struct.sja1000_priv* %11, i32 %12)
  %14 = load %struct.can_berr_counter*, %struct.can_berr_counter** %4, align 8
  %15 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load %struct.sja1000_priv*, %struct.sja1000_priv** %5, align 8
  %17 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %16, i32 0, i32 0
  %18 = load i32 (%struct.sja1000_priv*, i32)*, i32 (%struct.sja1000_priv*, i32)** %17, align 8
  %19 = load %struct.sja1000_priv*, %struct.sja1000_priv** %5, align 8
  %20 = load i32, i32* @SJA1000_RXERR, align 4
  %21 = call i32 %18(%struct.sja1000_priv* %19, i32 %20)
  %22 = load %struct.can_berr_counter*, %struct.can_berr_counter** %4, align 8
  %23 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  ret i32 0
}

declare dso_local %struct.sja1000_priv* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_dpaa_tx_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_dpaa_tx_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.dpaa_percpu_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.dpaa_priv = type { i32 }

@timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Transmit timeout latency: %u ms\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @dpaa_tx_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpaa_tx_timeout(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.dpaa_percpu_priv*, align 8
  %4 = alloca %struct.dpaa_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.dpaa_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.dpaa_priv* %6, %struct.dpaa_priv** %4, align 8
  %7 = load %struct.dpaa_priv*, %struct.dpaa_priv** %4, align 8
  %8 = getelementptr inbounds %struct.dpaa_priv, %struct.dpaa_priv* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.dpaa_percpu_priv* @this_cpu_ptr(i32 %9)
  store %struct.dpaa_percpu_priv* %10, %struct.dpaa_percpu_priv** %3, align 8
  %11 = load %struct.dpaa_priv*, %struct.dpaa_priv** %4, align 8
  %12 = load i32, i32* @timer, align 4
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = load i64, i64* @jiffies, align 8
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = call i64 @dev_trans_start(%struct.net_device* %15)
  %17 = sub nsw i64 %14, %16
  %18 = call i32 @jiffies_to_msecs(i64 %17)
  %19 = call i32 @netif_crit(%struct.dpaa_priv* %11, i32 %12, %struct.net_device* %13, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.dpaa_percpu_priv*, %struct.dpaa_percpu_priv** %3, align 8
  %21 = getelementptr inbounds %struct.dpaa_percpu_priv, %struct.dpaa_percpu_priv* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  ret void
}

declare dso_local %struct.dpaa_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.dpaa_percpu_priv* @this_cpu_ptr(i32) #1

declare dso_local i32 @netif_crit(%struct.dpaa_priv*, i32, %struct.net_device*, i8*, i32) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i64 @dev_trans_start(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

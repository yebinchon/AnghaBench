; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_encx24j600.c_encx24j600_tx_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_encx24j600.c_encx24j600_tx_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.encx24j600_priv = type { i32 }

@tx_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"TX timeout at %ld, latency %ld\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @encx24j600_tx_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encx24j600_tx_timeout(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.encx24j600_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.encx24j600_priv* @netdev_priv(%struct.net_device* %4)
  store %struct.encx24j600_priv* %5, %struct.encx24j600_priv** %3, align 8
  %6 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %3, align 8
  %7 = load i32, i32* @tx_err, align 4
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = load i64, i64* @jiffies, align 8
  %10 = load i64, i64* @jiffies, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call i64 @dev_trans_start(%struct.net_device* %11)
  %13 = sub nsw i64 %10, %12
  %14 = call i32 @netif_err(%struct.encx24j600_priv* %6, i32 %7, %struct.net_device* %8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %9, i64 %13)
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 4
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = call i32 @netif_wake_queue(%struct.net_device* %20)
  ret void
}

declare dso_local %struct.encx24j600_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_err(%struct.encx24j600_priv*, i32, %struct.net_device*, i8*, i64, i64) #1

declare dso_local i64 @dev_trans_start(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

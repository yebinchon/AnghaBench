; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/silan/extr_sc92031.c_sc92031_tx_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/silan/extr_sc92031.c_sc92031_tx_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sc92031_priv = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @sc92031_tx_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sc92031_tx_timeout(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.sc92031_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.sc92031_priv* @netdev_priv(%struct.net_device* %4)
  store %struct.sc92031_priv* %5, %struct.sc92031_priv** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call i32 @sc92031_disable_interrupts(%struct.net_device* %6)
  %8 = load %struct.sc92031_priv*, %struct.sc92031_priv** %3, align 8
  %9 = getelementptr inbounds %struct.sc92031_priv, %struct.sc92031_priv* %8, i32 0, i32 0
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.sc92031_priv*, %struct.sc92031_priv** %3, align 8
  %12 = getelementptr inbounds %struct.sc92031_priv, %struct.sc92031_priv* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %12, align 4
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = call i32 @_sc92031_reset(%struct.net_device* %15)
  %17 = load %struct.sc92031_priv*, %struct.sc92031_priv** %3, align 8
  %18 = getelementptr inbounds %struct.sc92031_priv, %struct.sc92031_priv* %17, i32 0, i32 0
  %19 = call i32 @spin_unlock(i32* %18)
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = call i32 @sc92031_enable_interrupts(%struct.net_device* %20)
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = call i64 @netif_carrier_ok(%struct.net_device* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load %struct.net_device*, %struct.net_device** %2, align 8
  %27 = call i32 @netif_wake_queue(%struct.net_device* %26)
  br label %28

28:                                               ; preds = %25, %1
  ret void
}

declare dso_local %struct.sc92031_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @sc92031_disable_interrupts(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @_sc92031_reset(%struct.net_device*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @sc92031_enable_interrupts(%struct.net_device*) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpmac.c_cpmac_tx_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpmac.c_cpmac_tx_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cpmac_priv = type { i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"transmit timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @cpmac_tx_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpmac_tx_timeout(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.cpmac_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.cpmac_priv* @netdev_priv(%struct.net_device* %4)
  store %struct.cpmac_priv* %5, %struct.cpmac_priv** %3, align 8
  %6 = load %struct.cpmac_priv*, %struct.cpmac_priv** %3, align 8
  %7 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %6, i32 0, i32 2
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %11, align 4
  %14 = load %struct.cpmac_priv*, %struct.cpmac_priv** %3, align 8
  %15 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %14, i32 0, i32 2
  %16 = call i32 @spin_unlock(i32* %15)
  %17 = load %struct.cpmac_priv*, %struct.cpmac_priv** %3, align 8
  %18 = call i64 @netif_msg_tx_err(%struct.cpmac_priv* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = call i64 (...) @net_ratelimit()
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load %struct.net_device*, %struct.net_device** %2, align 8
  %25 = call i32 @netdev_warn(%struct.net_device* %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %20, %1
  %27 = load %struct.cpmac_priv*, %struct.cpmac_priv** %3, align 8
  %28 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %27, i32 0, i32 1
  %29 = call i32 @atomic_inc(i32* %28)
  %30 = call i32 (...) @barrier()
  %31 = load %struct.net_device*, %struct.net_device** %2, align 8
  %32 = call i32 @cpmac_clear_tx(%struct.net_device* %31)
  %33 = call i32 (...) @barrier()
  %34 = load %struct.cpmac_priv*, %struct.cpmac_priv** %3, align 8
  %35 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %34, i32 0, i32 1
  %36 = call i32 @atomic_dec(i32* %35)
  %37 = load %struct.cpmac_priv*, %struct.cpmac_priv** %3, align 8
  %38 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @netif_tx_wake_all_queues(i32 %39)
  ret void
}

declare dso_local %struct.cpmac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @netif_msg_tx_err(%struct.cpmac_priv*) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @cpmac_clear_tx(%struct.net_device*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @netif_tx_wake_all_queues(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

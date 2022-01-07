; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar.c_startup_gfar.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar.c_startup_gfar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.gfar_private = type { i32, i64, i64, i32 }

@GFAR_DOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @startup_gfar(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.gfar_private*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.gfar_private* @netdev_priv(%struct.net_device* %6)
  store %struct.gfar_private* %7, %struct.gfar_private** %4, align 8
  %8 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %9 = call i32 @gfar_mac_reset(%struct.gfar_private* %8)
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call i32 @gfar_alloc_skb_resources(%struct.net_device* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %41

16:                                               ; preds = %1
  %17 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %18 = call i32 @gfar_init_tx_rx_base(%struct.gfar_private* %17)
  %19 = call i32 (...) @smp_mb__before_atomic()
  %20 = load i32, i32* @GFAR_DOWN, align 4
  %21 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %22 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %21, i32 0, i32 3
  %23 = call i32 @clear_bit(i32 %20, i32* %22)
  %24 = call i32 (...) @smp_mb__after_atomic()
  %25 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %26 = call i32 @gfar_start(%struct.gfar_private* %25)
  %27 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %28 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %30 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %32 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %31, i32 0, i32 0
  store i32 -1, i32* %32, align 8
  %33 = load %struct.net_device*, %struct.net_device** %3, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @phy_start(i32 %35)
  %37 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %38 = call i32 @enable_napi(%struct.gfar_private* %37)
  %39 = load %struct.net_device*, %struct.net_device** %3, align 8
  %40 = call i32 @netif_tx_wake_all_queues(%struct.net_device* %39)
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %16, %14
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.gfar_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @gfar_mac_reset(%struct.gfar_private*) #1

declare dso_local i32 @gfar_alloc_skb_resources(%struct.net_device*) #1

declare dso_local i32 @gfar_init_tx_rx_base(%struct.gfar_private*) #1

declare dso_local i32 @smp_mb__before_atomic(...) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

declare dso_local i32 @gfar_start(%struct.gfar_private*) #1

declare dso_local i32 @phy_start(i32) #1

declare dso_local i32 @enable_napi(%struct.gfar_private*) #1

declare dso_local i32 @netif_tx_wake_all_queues(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

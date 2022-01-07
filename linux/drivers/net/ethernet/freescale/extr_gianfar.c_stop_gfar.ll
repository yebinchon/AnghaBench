; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar.c_stop_gfar.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar.c_stop_gfar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.gfar_private = type { i32 }

@GFAR_DOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stop_gfar(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.gfar_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.gfar_private* @netdev_priv(%struct.net_device* %4)
  store %struct.gfar_private* %5, %struct.gfar_private** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call i32 @netif_tx_stop_all_queues(%struct.net_device* %6)
  %8 = call i32 (...) @smp_mb__before_atomic()
  %9 = load i32, i32* @GFAR_DOWN, align 4
  %10 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %11 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %10, i32 0, i32 0
  %12 = call i32 @set_bit(i32 %9, i32* %11)
  %13 = call i32 (...) @smp_mb__after_atomic()
  %14 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %15 = call i32 @disable_napi(%struct.gfar_private* %14)
  %16 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %17 = call i32 @gfar_halt(%struct.gfar_private* %16)
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @phy_stop(i32 %20)
  %22 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %23 = call i32 @free_skb_resources(%struct.gfar_private* %22)
  ret void
}

declare dso_local %struct.gfar_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_tx_stop_all_queues(%struct.net_device*) #1

declare dso_local i32 @smp_mb__before_atomic(...) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

declare dso_local i32 @disable_napi(%struct.gfar_private*) #1

declare dso_local i32 @gfar_halt(%struct.gfar_private*) #1

declare dso_local i32 @phy_stop(i32) #1

declare dso_local i32 @free_skb_resources(%struct.gfar_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c___e1000_maybe_stop_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c___e1000_maybe_stop_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.e1000_adapter = type { i32, %struct.e1000_tx_ring* }
%struct.e1000_tx_ring = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @__e1000_maybe_stop_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__e1000_maybe_stop_tx(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.e1000_adapter*, align 8
  %7 = alloca %struct.e1000_tx_ring*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.e1000_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.e1000_adapter* %9, %struct.e1000_adapter** %6, align 8
  %10 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %11 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %10, i32 0, i32 1
  %12 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %11, align 8
  store %struct.e1000_tx_ring* %12, %struct.e1000_tx_ring** %7, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call i32 @netif_stop_queue(%struct.net_device* %13)
  %15 = call i32 (...) @smp_mb()
  %16 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %7, align 8
  %17 = call i32 @E1000_DESC_UNUSED(%struct.e1000_tx_ring* %16)
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i64 @likely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %33

26:                                               ; preds = %2
  %27 = load %struct.net_device*, %struct.net_device** %4, align 8
  %28 = call i32 @netif_start_queue(%struct.net_device* %27)
  %29 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %30 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 8
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %26, %23
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.e1000_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @E1000_DESC_UNUSED(%struct.e1000_tx_ring*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

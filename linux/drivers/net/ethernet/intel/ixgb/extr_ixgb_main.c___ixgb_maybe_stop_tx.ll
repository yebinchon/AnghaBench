; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_main.c___ixgb_maybe_stop_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_main.c___ixgb_maybe_stop_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ixgb_adapter = type { i32, %struct.ixgb_desc_ring }
%struct.ixgb_desc_ring = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @__ixgb_maybe_stop_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ixgb_maybe_stop_tx(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ixgb_adapter*, align 8
  %7 = alloca %struct.ixgb_desc_ring*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.ixgb_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.ixgb_adapter* %9, %struct.ixgb_adapter** %6, align 8
  %10 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %6, align 8
  %11 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %10, i32 0, i32 1
  store %struct.ixgb_desc_ring* %11, %struct.ixgb_desc_ring** %7, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call i32 @netif_stop_queue(%struct.net_device* %12)
  %14 = call i32 (...) @smp_mb()
  %15 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %7, align 8
  %16 = call i32 @IXGB_DESC_UNUSED(%struct.ixgb_desc_ring* %15)
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i64 @likely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %32

25:                                               ; preds = %2
  %26 = load %struct.net_device*, %struct.net_device** %4, align 8
  %27 = call i32 @netif_start_queue(%struct.net_device* %26)
  %28 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %6, align 8
  %29 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %25, %22
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.ixgb_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @IXGB_DESC_UNUSED(%struct.ixgb_desc_ring*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

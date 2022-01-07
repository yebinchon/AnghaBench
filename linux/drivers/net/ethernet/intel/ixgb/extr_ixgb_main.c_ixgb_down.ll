; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_main.c_ixgb_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_main.c_ixgb_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgb_adapter = type { i64, i64, i32, %struct.TYPE_2__*, i64, i32, i32, %struct.net_device* }
%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32 }

@__IXGB_DOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgb_down(%struct.ixgb_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.ixgb_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  store %struct.ixgb_adapter* %0, %struct.ixgb_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %6, i32 0, i32 7
  %8 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %8, %struct.net_device** %5, align 8
  %9 = load i32, i32* @__IXGB_DOWN, align 4
  %10 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %10, i32 0, i32 6
  %12 = call i32 @set_bit(i32 %9, i32* %11)
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call i32 @netif_carrier_off(%struct.net_device* %13)
  %15 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %15, i32 0, i32 5
  %17 = call i32 @napi_disable(i32* %16)
  %18 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %19 = call i32 @ixgb_irq_disable(%struct.ixgb_adapter* %18)
  %20 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %20, i32 0, i32 3
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.net_device*, %struct.net_device** %5, align 8
  %26 = call i32 @free_irq(i32 %24, %struct.net_device* %25)
  %27 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %28 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %2
  %32 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %33 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %32, i32 0, i32 3
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = call i32 @pci_disable_msi(%struct.TYPE_2__* %34)
  br label %36

36:                                               ; preds = %31, %2
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %41 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %40, i32 0, i32 2
  %42 = call i32 @del_timer_sync(i32* %41)
  br label %43

43:                                               ; preds = %39, %36
  %44 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %45 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  %46 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %47 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  %48 = load %struct.net_device*, %struct.net_device** %5, align 8
  %49 = call i32 @netif_stop_queue(%struct.net_device* %48)
  %50 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %51 = call i32 @ixgb_reset(%struct.ixgb_adapter* %50)
  %52 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %53 = call i32 @ixgb_clean_tx_ring(%struct.ixgb_adapter* %52)
  %54 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %55 = call i32 @ixgb_clean_rx_ring(%struct.ixgb_adapter* %54)
  ret void
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @ixgb_irq_disable(%struct.ixgb_adapter*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @pci_disable_msi(%struct.TYPE_2__*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @ixgb_reset(%struct.ixgb_adapter*) #1

declare dso_local i32 @ixgb_clean_tx_ring(%struct.ixgb_adapter*) #1

declare dso_local i32 @ixgb_clean_rx_ring(%struct.ixgb_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

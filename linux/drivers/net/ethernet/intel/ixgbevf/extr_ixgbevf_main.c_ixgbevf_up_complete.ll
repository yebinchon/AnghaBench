; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_up_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_up_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_adapter = type { i32, i32, i32, %struct.ixgbe_hw, %struct.net_device* }
%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*, i32, i32, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.net_device = type { i32 }

@__IXGBEVF_DOWN = common dso_local global i32 0, align 4
@IXGBE_VTEICR = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbevf_adapter*)* @ixgbevf_up_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbevf_up_complete(%struct.ixgbevf_adapter* %0) #0 {
  %2 = alloca %struct.ixgbevf_adapter*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ixgbe_hw*, align 8
  store %struct.ixgbevf_adapter* %0, %struct.ixgbevf_adapter** %2, align 8
  %5 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %5, i32 0, i32 4
  %7 = load %struct.net_device*, %struct.net_device** %6, align 8
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  %8 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %8, i32 0, i32 3
  store %struct.ixgbe_hw* %9, %struct.ixgbe_hw** %4, align 8
  %10 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %11 = call i32 @ixgbevf_configure_msix(%struct.ixgbevf_adapter* %10)
  %12 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %12, i32 0, i32 2
  %14 = call i32 @spin_lock_bh(i32* %13)
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %16 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @is_valid_ether_addr(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %1
  %22 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %23 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32)** %25, align 8
  %27 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %28 = bitcast %struct.ixgbe_hw* %27 to %struct.ixgbe_hw.0*
  %29 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %30 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i32 %26(%struct.ixgbe_hw.0* %28, i32 0, i32 %32, i32 0)
  br label %47

34:                                               ; preds = %1
  %35 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %36 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32)** %38, align 8
  %40 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %41 = bitcast %struct.ixgbe_hw* %40 to %struct.ixgbe_hw.0*
  %42 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %43 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 %39(%struct.ixgbe_hw.0* %41, i32 0, i32 %45, i32 0)
  br label %47

47:                                               ; preds = %34, %21
  %48 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %49 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %48, i32 0, i32 2
  %50 = call i32 @spin_unlock_bh(i32* %49)
  %51 = call i32 (...) @smp_mb__before_atomic()
  %52 = load i32, i32* @__IXGBEVF_DOWN, align 4
  %53 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %54 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %53, i32 0, i32 1
  %55 = call i32 @clear_bit(i32 %52, i32* %54)
  %56 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %57 = call i32 @ixgbevf_napi_enable_all(%struct.ixgbevf_adapter* %56)
  %58 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %59 = load i32, i32* @IXGBE_VTEICR, align 4
  %60 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %58, i32 %59)
  %61 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %62 = call i32 @ixgbevf_irq_enable(%struct.ixgbevf_adapter* %61)
  %63 = load %struct.net_device*, %struct.net_device** %3, align 8
  %64 = call i32 @netif_tx_start_all_queues(%struct.net_device* %63)
  %65 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %66 = call i32 @ixgbevf_save_reset_stats(%struct.ixgbevf_adapter* %65)
  %67 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %68 = call i32 @ixgbevf_init_last_counter_stats(%struct.ixgbevf_adapter* %67)
  %69 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %70 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  store i32 1, i32* %71, align 8
  %72 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %73 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %72, i32 0, i32 0
  %74 = load i32, i32* @jiffies, align 4
  %75 = call i32 @mod_timer(i32* %73, i32 %74)
  ret void
}

declare dso_local i32 @ixgbevf_configure_msix(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @is_valid_ether_addr(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @smp_mb__before_atomic(...) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @ixgbevf_napi_enable_all(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @ixgbevf_irq_enable(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @netif_tx_start_all_queues(%struct.net_device*) #1

declare dso_local i32 @ixgbevf_save_reset_stats(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @ixgbevf_init_last_counter_stats(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

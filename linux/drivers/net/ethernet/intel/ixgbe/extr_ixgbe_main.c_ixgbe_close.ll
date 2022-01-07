; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ixgbe_adapter = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ixgbe_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %4)
  store %struct.ixgbe_adapter* %5, %struct.ixgbe_adapter** %3, align 8
  %6 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %7 = call i32 @ixgbe_ptp_stop(%struct.ixgbe_adapter* %6)
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call i64 @netif_device_present(%struct.net_device* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %13 = call i32 @ixgbe_close_suspend(%struct.ixgbe_adapter* %12)
  br label %14

14:                                               ; preds = %11, %1
  %15 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %16 = call i32 @ixgbe_fdir_filter_exit(%struct.ixgbe_adapter* %15)
  %17 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %18 = call i32 @ixgbe_release_hw_control(%struct.ixgbe_adapter* %17)
  ret i32 0
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ixgbe_ptp_stop(%struct.ixgbe_adapter*) #1

declare dso_local i64 @netif_device_present(%struct.net_device*) #1

declare dso_local i32 @ixgbe_close_suspend(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_fdir_filter_exit(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_release_hw_control(%struct.ixgbe_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

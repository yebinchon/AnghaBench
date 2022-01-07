; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_set_rx_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_set_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.i40e_netdev_priv = type { %struct.i40e_vsi* }
%struct.i40e_vsi = type { i64, %struct.TYPE_4__*, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@i40e_addr_sync = common dso_local global i32 0, align 4
@i40e_addr_unsync = common dso_local global i32 0, align 4
@I40E_VSI_FLAG_FILTER_CHANGED = common dso_local global i32 0, align 4
@__I40E_MACVLAN_SYNC_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @i40e_set_rx_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_set_rx_mode(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.i40e_netdev_priv*, align 8
  %4 = alloca %struct.i40e_vsi*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.i40e_netdev_priv* %6, %struct.i40e_netdev_priv** %3, align 8
  %7 = load %struct.i40e_netdev_priv*, %struct.i40e_netdev_priv** %3, align 8
  %8 = getelementptr inbounds %struct.i40e_netdev_priv, %struct.i40e_netdev_priv* %7, i32 0, i32 0
  %9 = load %struct.i40e_vsi*, %struct.i40e_vsi** %8, align 8
  store %struct.i40e_vsi* %9, %struct.i40e_vsi** %4, align 8
  %10 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %11 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %10, i32 0, i32 4
  %12 = call i32 @spin_lock_bh(i32* %11)
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = load i32, i32* @i40e_addr_sync, align 4
  %15 = load i32, i32* @i40e_addr_unsync, align 4
  %16 = call i32 @__dev_uc_sync(%struct.net_device* %13, i32 %14, i32 %15)
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = load i32, i32* @i40e_addr_sync, align 4
  %19 = load i32, i32* @i40e_addr_unsync, align 4
  %20 = call i32 @__dev_mc_sync(%struct.net_device* %17, i32 %18, i32 %19)
  %21 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %22 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %21, i32 0, i32 4
  %23 = call i32 @spin_unlock_bh(i32* %22)
  %24 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %25 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %28 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %27, i32 0, i32 3
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %26, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %1
  %34 = load i32, i32* @I40E_VSI_FLAG_FILTER_CHANGED, align 4
  %35 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %36 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 8
  %39 = load i32, i32* @__I40E_MACVLAN_SYNC_PENDING, align 4
  %40 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %41 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @set_bit(i32 %39, i32 %44)
  br label %46

46:                                               ; preds = %33, %1
  ret void
}

declare dso_local %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @__dev_uc_sync(%struct.net_device*, i32, i32) #1

declare dso_local i32 @__dev_mc_sync(%struct.net_device*, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

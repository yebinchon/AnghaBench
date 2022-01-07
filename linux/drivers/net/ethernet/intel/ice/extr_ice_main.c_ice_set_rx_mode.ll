; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_set_rx_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_set_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ice_netdev_priv = type { %struct.ice_vsi* }
%struct.ice_vsi = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@ICE_VSI_FLAG_UMAC_FLTR_CHANGED = common dso_local global i32 0, align 4
@ICE_VSI_FLAG_MMAC_FLTR_CHANGED = common dso_local global i32 0, align 4
@ICE_FLAG_FLTR_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ice_set_rx_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_set_rx_mode(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ice_netdev_priv*, align 8
  %4 = alloca %struct.ice_vsi*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.ice_netdev_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.ice_netdev_priv* %6, %struct.ice_netdev_priv** %3, align 8
  %7 = load %struct.ice_netdev_priv*, %struct.ice_netdev_priv** %3, align 8
  %8 = getelementptr inbounds %struct.ice_netdev_priv, %struct.ice_netdev_priv* %7, i32 0, i32 0
  %9 = load %struct.ice_vsi*, %struct.ice_vsi** %8, align 8
  store %struct.ice_vsi* %9, %struct.ice_vsi** %4, align 8
  %10 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %11 = icmp ne %struct.ice_vsi* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %35

13:                                               ; preds = %1
  %14 = load i32, i32* @ICE_VSI_FLAG_UMAC_FLTR_CHANGED, align 4
  %15 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %16 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @set_bit(i32 %14, i32 %17)
  %19 = load i32, i32* @ICE_VSI_FLAG_MMAC_FLTR_CHANGED, align 4
  %20 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %21 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @set_bit(i32 %19, i32 %22)
  %24 = load i32, i32* @ICE_FLAG_FLTR_SYNC, align 4
  %25 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %26 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @set_bit(i32 %24, i32 %29)
  %31 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %32 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = call i32 @ice_service_task_schedule(%struct.TYPE_2__* %33)
  br label %35

35:                                               ; preds = %13, %12
  ret void
}

declare dso_local %struct.ice_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @ice_service_task_schedule(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

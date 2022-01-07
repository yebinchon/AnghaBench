; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_netdevice_ipip_ul_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_netdevice_ipip_ul_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.net_device = type { i32 }
%struct.netdev_notifier_info = type { i32 }
%struct.mlxsw_sp_ipip_entry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp_netdevice_ipip_ul_event(%struct.mlxsw_sp* %0, %struct.net_device* %1, i64 %2, %struct.netdev_notifier_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.netdev_notifier_info*, align 8
  %10 = alloca %struct.mlxsw_sp_ipip_entry*, align 8
  %11 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.netdev_notifier_info* %3, %struct.netdev_notifier_info** %9, align 8
  store %struct.mlxsw_sp_ipip_entry* null, %struct.mlxsw_sp_ipip_entry** %10, align 8
  br label %12

12:                                               ; preds = %32, %4
  %13 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %14 = load %struct.net_device*, %struct.net_device** %7, align 8
  %15 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %10, align 8
  %16 = call %struct.mlxsw_sp_ipip_entry* @mlxsw_sp_ipip_entry_find_by_ul_dev(%struct.mlxsw_sp* %13, %struct.net_device* %14, %struct.mlxsw_sp_ipip_entry* %15)
  store %struct.mlxsw_sp_ipip_entry* %16, %struct.mlxsw_sp_ipip_entry** %10, align 8
  %17 = icmp ne %struct.mlxsw_sp_ipip_entry* %16, null
  br i1 %17, label %18, label %33

18:                                               ; preds = %12
  %19 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %20 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %10, align 8
  %21 = load %struct.net_device*, %struct.net_device** %7, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load %struct.netdev_notifier_info*, %struct.netdev_notifier_info** %9, align 8
  %24 = call i32 @__mlxsw_sp_netdevice_ipip_ul_event(%struct.mlxsw_sp* %19, %struct.mlxsw_sp_ipip_entry* %20, %struct.net_device* %21, i64 %22, %struct.netdev_notifier_info* %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %18
  %28 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %29 = load %struct.net_device*, %struct.net_device** %7, align 8
  %30 = call i32 @mlxsw_sp_ipip_demote_tunnel_by_ul_netdev(%struct.mlxsw_sp* %28, %struct.net_device* %29)
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %5, align 4
  br label %34

32:                                               ; preds = %18
  br label %12

33:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %33, %27
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local %struct.mlxsw_sp_ipip_entry* @mlxsw_sp_ipip_entry_find_by_ul_dev(%struct.mlxsw_sp*, %struct.net_device*, %struct.mlxsw_sp_ipip_entry*) #1

declare dso_local i32 @__mlxsw_sp_netdevice_ipip_ul_event(%struct.mlxsw_sp*, %struct.mlxsw_sp_ipip_entry*, %struct.net_device*, i64, %struct.netdev_notifier_info*) #1

declare dso_local i32 @mlxsw_sp_ipip_demote_tunnel_by_ul_netdev(%struct.mlxsw_sp*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

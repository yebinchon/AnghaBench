; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_netdevice_ipip_ol_update_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_netdevice_ipip_ol_update_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.net_device = type { i32 }
%struct.mlxsw_sp_ipip_entry = type { %struct.mlxsw_sp_rif_ipip_lb* }
%struct.mlxsw_sp_rif_ipip_lb = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.net_device*)* @mlxsw_sp_netdevice_ipip_ol_update_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_netdevice_ipip_ol_update_mtu(%struct.mlxsw_sp* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.mlxsw_sp*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.mlxsw_sp_ipip_entry*, align 8
  %6 = alloca %struct.mlxsw_sp_rif_ipip_lb*, align 8
  %7 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.mlxsw_sp_ipip_entry* @mlxsw_sp_ipip_entry_find_by_ol_dev(%struct.mlxsw_sp* %8, %struct.net_device* %9)
  store %struct.mlxsw_sp_ipip_entry* %10, %struct.mlxsw_sp_ipip_entry** %5, align 8
  %11 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %5, align 8
  %12 = icmp ne %struct.mlxsw_sp_ipip_entry* %11, null
  br i1 %12, label %13, label %35

13:                                               ; preds = %2
  %14 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %5, align 8
  %15 = getelementptr inbounds %struct.mlxsw_sp_ipip_entry, %struct.mlxsw_sp_ipip_entry* %14, i32 0, i32 0
  %16 = load %struct.mlxsw_sp_rif_ipip_lb*, %struct.mlxsw_sp_rif_ipip_lb** %15, align 8
  store %struct.mlxsw_sp_rif_ipip_lb* %16, %struct.mlxsw_sp_rif_ipip_lb** %6, align 8
  %17 = load %struct.mlxsw_sp_rif_ipip_lb*, %struct.mlxsw_sp_rif_ipip_lb** %6, align 8
  %18 = load %struct.mlxsw_sp_rif_ipip_lb*, %struct.mlxsw_sp_rif_ipip_lb** %6, align 8
  %19 = getelementptr inbounds %struct.mlxsw_sp_rif_ipip_lb, %struct.mlxsw_sp_rif_ipip_lb* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.mlxsw_sp_rif_ipip_lb*, %struct.mlxsw_sp_rif_ipip_lb** %6, align 8
  %22 = getelementptr inbounds %struct.mlxsw_sp_rif_ipip_lb, %struct.mlxsw_sp_rif_ipip_lb* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @mlxsw_sp_rif_ipip_lb_op(%struct.mlxsw_sp_rif_ipip_lb* %17, i32 %20, i32 %23, i32 1)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %13
  br label %36

28:                                               ; preds = %13
  %29 = load %struct.net_device*, %struct.net_device** %4, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.mlxsw_sp_rif_ipip_lb*, %struct.mlxsw_sp_rif_ipip_lb** %6, align 8
  %33 = getelementptr inbounds %struct.mlxsw_sp_rif_ipip_lb, %struct.mlxsw_sp_rif_ipip_lb* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  br label %35

35:                                               ; preds = %28, %2
  br label %36

36:                                               ; preds = %35, %27
  %37 = load i32, i32* %7, align 4
  ret i32 %37
}

declare dso_local %struct.mlxsw_sp_ipip_entry* @mlxsw_sp_ipip_entry_find_by_ol_dev(%struct.mlxsw_sp*, %struct.net_device*) #1

declare dso_local i32 @mlxsw_sp_rif_ipip_lb_op(%struct.mlxsw_sp_rif_ipip_lb*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

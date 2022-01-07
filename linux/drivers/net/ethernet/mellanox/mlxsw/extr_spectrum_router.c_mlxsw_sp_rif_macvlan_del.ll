; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_rif_macvlan_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_rif_macvlan_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.net_device = type { i32 }
%struct.macvlan_dev = type { i32 }
%struct.mlxsw_sp_rif = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlxsw_sp_rif_macvlan_del(%struct.mlxsw_sp* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.mlxsw_sp*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.macvlan_dev*, align 8
  %6 = alloca %struct.mlxsw_sp_rif*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.macvlan_dev* @netdev_priv(%struct.net_device* %7)
  store %struct.macvlan_dev* %8, %struct.macvlan_dev** %5, align 8
  %9 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %10 = load %struct.macvlan_dev*, %struct.macvlan_dev** %5, align 8
  %11 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.mlxsw_sp_rif* @mlxsw_sp_rif_find_by_dev(%struct.mlxsw_sp* %9, i32 %12)
  store %struct.mlxsw_sp_rif* %13, %struct.mlxsw_sp_rif** %6, align 8
  %14 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %6, align 8
  %15 = icmp ne %struct.mlxsw_sp_rif* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %35

17:                                               ; preds = %2
  %18 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %19 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %6, align 8
  %20 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.net_device*, %struct.net_device** %4, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @mlxsw_sp_rif_vrrp_op(%struct.mlxsw_sp* %18, i32 %21, i32 %24, i32 0)
  %26 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %27 = load %struct.net_device*, %struct.net_device** %4, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %6, align 8
  %31 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @mlxsw_sp_fid_index(i32 %32)
  %34 = call i32 @mlxsw_sp_rif_fdb_op(%struct.mlxsw_sp* %26, i32 %29, i32 %33, i32 0)
  br label %35

35:                                               ; preds = %17, %16
  ret void
}

declare dso_local %struct.macvlan_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.mlxsw_sp_rif* @mlxsw_sp_rif_find_by_dev(%struct.mlxsw_sp*, i32) #1

declare dso_local i32 @mlxsw_sp_rif_vrrp_op(%struct.mlxsw_sp*, i32, i32, i32) #1

declare dso_local i32 @mlxsw_sp_rif_fdb_op(%struct.mlxsw_sp*, i32, i32, i32) #1

declare dso_local i32 @mlxsw_sp_fid_index(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

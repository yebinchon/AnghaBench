; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_nve.c_mlxsw_sp_nve_fid_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_nve.c_mlxsw_sp_nve_fid_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_fid = type { i32 }
%struct.net_device = type { i32 }

@init_net = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlxsw_sp_nve_fid_disable(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_fid* %1) #0 {
  %3 = alloca %struct.mlxsw_sp*, align 8
  %4 = alloca %struct.mlxsw_sp_fid*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %3, align 8
  store %struct.mlxsw_sp_fid* %1, %struct.mlxsw_sp_fid** %4, align 8
  %9 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %4, align 8
  %10 = call i32 @mlxsw_sp_fid_index(%struct.mlxsw_sp_fid* %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %12 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %4, align 8
  %13 = call i32 @mlxsw_sp_nve_flood_ip_flush(%struct.mlxsw_sp* %11, %struct.mlxsw_sp_fid* %12)
  %14 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @mlxsw_sp_nve_fdb_flush_by_fid(%struct.mlxsw_sp* %14, i32 %15)
  %17 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %4, align 8
  %18 = call i64 @mlxsw_sp_fid_nve_ifindex(%struct.mlxsw_sp_fid* %17, i32* %7)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %4, align 8
  %22 = call i64 @mlxsw_sp_fid_vni(%struct.mlxsw_sp_fid* %21, i32* %8)
  %23 = icmp ne i64 %22, 0
  br label %24

24:                                               ; preds = %20, %2
  %25 = phi i1 [ true, %2 ], [ %23, %20 ]
  %26 = zext i1 %25 to i32
  %27 = call i64 @WARN_ON(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %47

30:                                               ; preds = %24
  %31 = load i32, i32* %7, align 4
  %32 = call %struct.net_device* @dev_get_by_index(i32* @init_net, i32 %31)
  store %struct.net_device* %32, %struct.net_device** %6, align 8
  %33 = load %struct.net_device*, %struct.net_device** %6, align 8
  %34 = icmp ne %struct.net_device* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  br label %47

36:                                               ; preds = %30
  %37 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %38 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %4, align 8
  %39 = load %struct.net_device*, %struct.net_device** %6, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @mlxsw_sp_nve_fdb_clear_offload(%struct.mlxsw_sp* %37, %struct.mlxsw_sp_fid* %38, %struct.net_device* %39, i32 %40)
  %42 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %4, align 8
  %43 = load %struct.net_device*, %struct.net_device** %6, align 8
  %44 = call i32 @mlxsw_sp_fid_fdb_clear_offload(%struct.mlxsw_sp_fid* %42, %struct.net_device* %43)
  %45 = load %struct.net_device*, %struct.net_device** %6, align 8
  %46 = call i32 @dev_put(%struct.net_device* %45)
  br label %47

47:                                               ; preds = %36, %35, %29
  %48 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %4, align 8
  %49 = call i32 @mlxsw_sp_fid_vni_clear(%struct.mlxsw_sp_fid* %48)
  %50 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %51 = call i32 @mlxsw_sp_nve_tunnel_fini(%struct.mlxsw_sp* %50)
  ret void
}

declare dso_local i32 @mlxsw_sp_fid_index(%struct.mlxsw_sp_fid*) #1

declare dso_local i32 @mlxsw_sp_nve_flood_ip_flush(%struct.mlxsw_sp*, %struct.mlxsw_sp_fid*) #1

declare dso_local i32 @mlxsw_sp_nve_fdb_flush_by_fid(%struct.mlxsw_sp*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @mlxsw_sp_fid_nve_ifindex(%struct.mlxsw_sp_fid*, i32*) #1

declare dso_local i64 @mlxsw_sp_fid_vni(%struct.mlxsw_sp_fid*, i32*) #1

declare dso_local %struct.net_device* @dev_get_by_index(i32*, i32) #1

declare dso_local i32 @mlxsw_sp_nve_fdb_clear_offload(%struct.mlxsw_sp*, %struct.mlxsw_sp_fid*, %struct.net_device*, i32) #1

declare dso_local i32 @mlxsw_sp_fid_fdb_clear_offload(%struct.mlxsw_sp_fid*, %struct.net_device*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @mlxsw_sp_fid_vni_clear(%struct.mlxsw_sp_fid*) #1

declare dso_local i32 @mlxsw_sp_nve_tunnel_fini(%struct.mlxsw_sp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

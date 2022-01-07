; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_netdevice_ipip_ol_vrf_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_netdevice_ipip_ol_vrf_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i32 }
%struct.net_device = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.mlxsw_sp_ipip_entry = type { i64 }
%union.mlxsw_sp_l3addr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.net_device*, %struct.netlink_ext_ack*)* @mlxsw_sp_netdevice_ipip_ol_vrf_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_netdevice_ipip_ol_vrf_event(%struct.mlxsw_sp* %0, %struct.net_device* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.mlxsw_sp_ipip_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %union.mlxsw_sp_l3addr, align 4
  %11 = alloca i32, align 4
  %12 = alloca %union.mlxsw_sp_l3addr, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %13 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = call %struct.mlxsw_sp_ipip_entry* @mlxsw_sp_ipip_entry_find_by_ol_dev(%struct.mlxsw_sp* %13, %struct.net_device* %14)
  store %struct.mlxsw_sp_ipip_entry* %15, %struct.mlxsw_sp_ipip_entry** %8, align 8
  %16 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %8, align 8
  %17 = icmp ne %struct.mlxsw_sp_ipip_entry* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %57

19:                                               ; preds = %3
  %20 = load %struct.net_device*, %struct.net_device** %6, align 8
  %21 = call i32 @mlxsw_sp_ipip_dev_ul_tb_id(%struct.net_device* %20)
  store i32 %21, i32* %11, align 4
  %22 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %23 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %25, align 8
  %27 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %8, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sp_ipip_entry, %struct.mlxsw_sp_ipip_entry* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %26, i64 %29
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.net_device*, %struct.net_device** %6, align 8
  %36 = call i32 @mlxsw_sp_ipip_netdev_saddr(i32 %34, %struct.net_device* %35)
  %37 = getelementptr inbounds %union.mlxsw_sp_l3addr, %union.mlxsw_sp_l3addr* %12, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = bitcast %union.mlxsw_sp_l3addr* %10 to i8*
  %39 = bitcast %union.mlxsw_sp_l3addr* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 4 %39, i64 4, i1 false)
  %40 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %8, align 8
  %44 = getelementptr inbounds %union.mlxsw_sp_l3addr, %union.mlxsw_sp_l3addr* %10, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @mlxsw_sp_ipip_demote_tunnel_by_saddr(%struct.mlxsw_sp* %40, i32 %41, i32 %45, i32 %42, %struct.mlxsw_sp_ipip_entry* %43)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %19
  %49 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %50 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %8, align 8
  %51 = call i32 @mlxsw_sp_ipip_entry_demote_tunnel(%struct.mlxsw_sp* %49, %struct.mlxsw_sp_ipip_entry* %50)
  store i32 0, i32* %4, align 4
  br label %57

52:                                               ; preds = %19
  %53 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %54 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %8, align 8
  %55 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %56 = call i32 @__mlxsw_sp_ipip_entry_update_tunnel(%struct.mlxsw_sp* %53, %struct.mlxsw_sp_ipip_entry* %54, i32 1, i32 0, i32 0, %struct.netlink_ext_ack* %55)
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %52, %48, %18
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local %struct.mlxsw_sp_ipip_entry* @mlxsw_sp_ipip_entry_find_by_ol_dev(%struct.mlxsw_sp*, %struct.net_device*) #1

declare dso_local i32 @mlxsw_sp_ipip_dev_ul_tb_id(%struct.net_device*) #1

declare dso_local i32 @mlxsw_sp_ipip_netdev_saddr(i32, %struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @mlxsw_sp_ipip_demote_tunnel_by_saddr(%struct.mlxsw_sp*, i32, i32, i32, %struct.mlxsw_sp_ipip_entry*) #1

declare dso_local i32 @mlxsw_sp_ipip_entry_demote_tunnel(%struct.mlxsw_sp*, %struct.mlxsw_sp_ipip_entry*) #1

declare dso_local i32 @__mlxsw_sp_ipip_entry_update_tunnel(%struct.mlxsw_sp*, %struct.mlxsw_sp_ipip_entry*, i32, i32, i32, %struct.netlink_ext_ack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

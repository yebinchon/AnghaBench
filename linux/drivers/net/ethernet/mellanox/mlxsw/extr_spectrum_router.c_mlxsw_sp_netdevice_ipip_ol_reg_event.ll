; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_netdevice_ipip_ol_reg_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_netdevice_ipip_ol_reg_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i32 }
%struct.net_device = type { i32 }
%struct.mlxsw_sp_ipip_entry = type { i32 }
%union.mlxsw_sp_l3addr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.net_device*)* @mlxsw_sp_netdevice_ipip_ol_reg_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_netdevice_ipip_ol_reg_event(%struct.mlxsw_sp* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.mlxsw_sp_ipip_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %union.mlxsw_sp_l3addr, align 4
  %10 = alloca i32, align 4
  %11 = alloca %union.mlxsw_sp_l3addr, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %12 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call i32 @mlxsw_sp_netdev_ipip_type(%struct.mlxsw_sp* %12, %struct.net_device* %13, i32* %8)
  %15 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i64 @mlxsw_sp_netdevice_ipip_can_offload(%struct.mlxsw_sp* %15, %struct.net_device* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %60

20:                                               ; preds = %2
  %21 = load %struct.net_device*, %struct.net_device** %5, align 8
  %22 = call i32 @mlxsw_sp_ipip_dev_ul_tb_id(%struct.net_device* %21)
  store i32 %22, i32* %10, align 4
  %23 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %24 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %27, i64 %29
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.net_device*, %struct.net_device** %5, align 8
  %36 = call i32 @mlxsw_sp_ipip_netdev_saddr(i32 %34, %struct.net_device* %35)
  %37 = getelementptr inbounds %union.mlxsw_sp_l3addr, %union.mlxsw_sp_l3addr* %11, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = bitcast %union.mlxsw_sp_l3addr* %9 to i8*
  %39 = bitcast %union.mlxsw_sp_l3addr* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 4 %39, i64 4, i1 false)
  %40 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %10, align 4
  %43 = getelementptr inbounds %union.mlxsw_sp_l3addr, %union.mlxsw_sp_l3addr* %9, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @mlxsw_sp_ipip_demote_tunnel_by_saddr(%struct.mlxsw_sp* %40, i32 %41, i32 %44, i32 %42, i32* null)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %59, label %47

47:                                               ; preds = %20
  %48 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.net_device*, %struct.net_device** %5, align 8
  %51 = call %struct.mlxsw_sp_ipip_entry* @mlxsw_sp_ipip_entry_create(%struct.mlxsw_sp* %48, i32 %49, %struct.net_device* %50)
  store %struct.mlxsw_sp_ipip_entry* %51, %struct.mlxsw_sp_ipip_entry** %6, align 8
  %52 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %6, align 8
  %53 = call i64 @IS_ERR(%struct.mlxsw_sp_ipip_entry* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %6, align 8
  %57 = call i32 @PTR_ERR(%struct.mlxsw_sp_ipip_entry* %56)
  store i32 %57, i32* %3, align 4
  br label %61

58:                                               ; preds = %47
  br label %59

59:                                               ; preds = %58, %20
  br label %60

60:                                               ; preds = %59, %2
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %55
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @mlxsw_sp_netdev_ipip_type(%struct.mlxsw_sp*, %struct.net_device*, i32*) #1

declare dso_local i64 @mlxsw_sp_netdevice_ipip_can_offload(%struct.mlxsw_sp*, %struct.net_device*, i32) #1

declare dso_local i32 @mlxsw_sp_ipip_dev_ul_tb_id(%struct.net_device*) #1

declare dso_local i32 @mlxsw_sp_ipip_netdev_saddr(i32, %struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mlxsw_sp_ipip_demote_tunnel_by_saddr(%struct.mlxsw_sp*, i32, i32, i32, i32*) #1

declare dso_local %struct.mlxsw_sp_ipip_entry* @mlxsw_sp_ipip_entry_create(%struct.mlxsw_sp*, i32, %struct.net_device*) #1

declare dso_local i64 @IS_ERR(%struct.mlxsw_sp_ipip_entry*) #1

declare dso_local i32 @PTR_ERR(%struct.mlxsw_sp_ipip_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

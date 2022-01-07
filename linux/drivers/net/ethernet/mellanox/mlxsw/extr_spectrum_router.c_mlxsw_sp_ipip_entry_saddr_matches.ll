; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_ipip_entry_saddr_matches.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_ipip_entry_saddr_matches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i32 }
%struct.mlxsw_sp_ipip_entry = type { i32, i32 }
%union.mlxsw_sp_l3addr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, i32, i32, i64, %struct.mlxsw_sp_ipip_entry*)* @mlxsw_sp_ipip_entry_saddr_matches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_ipip_entry_saddr_matches(%struct.mlxsw_sp* %0, i32 %1, i32 %2, i64 %3, %struct.mlxsw_sp_ipip_entry* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %union.mlxsw_sp_l3addr, align 4
  %8 = alloca %struct.mlxsw_sp*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.mlxsw_sp_ipip_entry*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %union.mlxsw_sp_l3addr, align 4
  %15 = alloca %union.mlxsw_sp_l3addr, align 4
  %16 = getelementptr inbounds %union.mlxsw_sp_l3addr, %union.mlxsw_sp_l3addr* %7, i32 0, i32 0
  store i32 %2, i32* %16, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store %struct.mlxsw_sp_ipip_entry* %4, %struct.mlxsw_sp_ipip_entry** %11, align 8
  %17 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %11, align 8
  %18 = getelementptr inbounds %struct.mlxsw_sp_ipip_entry, %struct.mlxsw_sp_ipip_entry* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @mlxsw_sp_ipip_dev_ul_tb_id(i32 %19)
  store i64 %20, i64* %12, align 8
  %21 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %11, align 8
  %22 = getelementptr inbounds %struct.mlxsw_sp_ipip_entry, %struct.mlxsw_sp_ipip_entry* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %13, align 4
  %24 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  %25 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %27, align 8
  %29 = load i32, i32* %13, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %28, i64 %30
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %56

38:                                               ; preds = %5
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %11, align 8
  %41 = getelementptr inbounds %struct.mlxsw_sp_ipip_entry, %struct.mlxsw_sp_ipip_entry* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @mlxsw_sp_ipip_netdev_saddr(i32 %39, i32 %42)
  %44 = getelementptr inbounds %union.mlxsw_sp_l3addr, %union.mlxsw_sp_l3addr* %15, i32 0, i32 0
  store i32 %43, i32* %44, align 4
  %45 = bitcast %union.mlxsw_sp_l3addr* %14 to i8*
  %46 = bitcast %union.mlxsw_sp_l3addr* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %45, i8* align 4 %46, i64 4, i1 false)
  %47 = load i64, i64* %12, align 8
  %48 = load i64, i64* %10, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %38
  %51 = call i64 @mlxsw_sp_l3addr_eq(%union.mlxsw_sp_l3addr* %14, %union.mlxsw_sp_l3addr* %7)
  %52 = icmp ne i64 %51, 0
  br label %53

53:                                               ; preds = %50, %38
  %54 = phi i1 [ false, %38 ], [ %52, %50 ]
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %53, %37
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local i64 @mlxsw_sp_ipip_dev_ul_tb_id(i32) #1

declare dso_local i32 @mlxsw_sp_ipip_netdev_saddr(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @mlxsw_sp_l3addr_eq(%union.mlxsw_sp_l3addr*, %union.mlxsw_sp_l3addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

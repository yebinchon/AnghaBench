; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_mr.c_mlxsw_sp_mr_route4_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_mr.c_mlxsw_sp_mr_route4_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_mr_table = type { i32 }
%struct.mlxsw_sp_mr_route_key = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i32 }
%struct.mr_mfc = type { i32 }
%struct.mfc_cache = type { i8*, i32 }

@INADDR_ANY = common dso_local global i32 0, align 4
@MLXSW_SP_L3_PROTO_IPV4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp_mr_table*, %struct.mlxsw_sp_mr_route_key*, %struct.mr_mfc*)* @mlxsw_sp_mr_route4_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_mr_route4_key(%struct.mlxsw_sp_mr_table* %0, %struct.mlxsw_sp_mr_route_key* %1, %struct.mr_mfc* %2) #0 {
  %4 = alloca %struct.mlxsw_sp_mr_table*, align 8
  %5 = alloca %struct.mlxsw_sp_mr_route_key*, align 8
  %6 = alloca %struct.mr_mfc*, align 8
  %7 = alloca %struct.mfc_cache*, align 8
  %8 = alloca i32, align 4
  store %struct.mlxsw_sp_mr_table* %0, %struct.mlxsw_sp_mr_table** %4, align 8
  store %struct.mlxsw_sp_mr_route_key* %1, %struct.mlxsw_sp_mr_route_key** %5, align 8
  store %struct.mr_mfc* %2, %struct.mr_mfc** %6, align 8
  %9 = load %struct.mr_mfc*, %struct.mr_mfc** %6, align 8
  %10 = bitcast %struct.mr_mfc* %9 to %struct.mfc_cache*
  store %struct.mfc_cache* %10, %struct.mfc_cache** %7, align 8
  %11 = load %struct.mfc_cache*, %struct.mfc_cache** %7, align 8
  %12 = getelementptr inbounds %struct.mfc_cache, %struct.mfc_cache* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load i32, i32* @INADDR_ANY, align 4
  %15 = call i8* @htonl(i32 %14)
  %16 = icmp eq i8* %13, %15
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %8, align 4
  %18 = load %struct.mlxsw_sp_mr_route_key*, %struct.mlxsw_sp_mr_route_key** %5, align 8
  %19 = call i32 @memset(%struct.mlxsw_sp_mr_route_key* %18, i32 0, i32 40)
  %20 = load %struct.mlxsw_sp_mr_table*, %struct.mlxsw_sp_mr_table** %4, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sp_mr_table, %struct.mlxsw_sp_mr_table* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.mlxsw_sp_mr_route_key*, %struct.mlxsw_sp_mr_route_key** %5, align 8
  %24 = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, %struct.mlxsw_sp_mr_route_key* %23, i32 0, i32 5
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* @MLXSW_SP_L3_PROTO_IPV4, align 4
  %26 = load %struct.mlxsw_sp_mr_route_key*, %struct.mlxsw_sp_mr_route_key** %5, align 8
  %27 = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, %struct.mlxsw_sp_mr_route_key* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 4
  %28 = load %struct.mfc_cache*, %struct.mfc_cache** %7, align 8
  %29 = getelementptr inbounds %struct.mfc_cache, %struct.mfc_cache* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.mlxsw_sp_mr_route_key*, %struct.mlxsw_sp_mr_route_key** %5, align 8
  %32 = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, %struct.mlxsw_sp_mr_route_key* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 8
  %34 = call i8* @htonl(i32 -1)
  %35 = load %struct.mlxsw_sp_mr_route_key*, %struct.mlxsw_sp_mr_route_key** %5, align 8
  %36 = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, %struct.mlxsw_sp_mr_route_key* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  store i8* %34, i8** %37, align 8
  %38 = load %struct.mfc_cache*, %struct.mfc_cache** %7, align 8
  %39 = getelementptr inbounds %struct.mfc_cache, %struct.mfc_cache* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.mlxsw_sp_mr_route_key*, %struct.mlxsw_sp_mr_route_key** %5, align 8
  %42 = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, %struct.mlxsw_sp_mr_route_key* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  store i8* %40, i8** %43, align 8
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 0, i32 -1
  %48 = call i8* @htonl(i32 %47)
  %49 = load %struct.mlxsw_sp_mr_route_key*, %struct.mlxsw_sp_mr_route_key** %5, align 8
  %50 = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, %struct.mlxsw_sp_mr_route_key* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  store i8* %48, i8** %51, align 8
  ret void
}

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @memset(%struct.mlxsw_sp_mr_route_key*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

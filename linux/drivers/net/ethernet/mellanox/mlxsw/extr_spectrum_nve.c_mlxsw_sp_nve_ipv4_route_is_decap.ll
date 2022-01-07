; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_nve.c_mlxsw_sp_nve_ipv4_route_is_decap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_nve.c_mlxsw_sp_nve_ipv4_route_is_decap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.mlxsw_sp_nve* }
%struct.mlxsw_sp_nve = type { i64, %struct.mlxsw_sp_nve_config }
%struct.mlxsw_sp_nve_config = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@MLXSW_SP_L3_PROTO_IPV4 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp_nve_ipv4_route_is_decap(%struct.mlxsw_sp* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mlxsw_sp_nve*, align 8
  %9 = alloca %struct.mlxsw_sp_nve_config*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %11 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %10, i32 0, i32 0
  %12 = load %struct.mlxsw_sp_nve*, %struct.mlxsw_sp_nve** %11, align 8
  store %struct.mlxsw_sp_nve* %12, %struct.mlxsw_sp_nve** %8, align 8
  %13 = load %struct.mlxsw_sp_nve*, %struct.mlxsw_sp_nve** %8, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sp_nve, %struct.mlxsw_sp_nve* %13, i32 0, i32 1
  store %struct.mlxsw_sp_nve_config* %14, %struct.mlxsw_sp_nve_config** %9, align 8
  %15 = load %struct.mlxsw_sp_nve*, %struct.mlxsw_sp_nve** %8, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp_nve, %struct.mlxsw_sp_nve* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %3
  %20 = load %struct.mlxsw_sp_nve_config*, %struct.mlxsw_sp_nve_config** %9, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sp_nve_config, %struct.mlxsw_sp_nve_config* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @MLXSW_SP_L3_PROTO_IPV4, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %19
  %26 = load %struct.mlxsw_sp_nve_config*, %struct.mlxsw_sp_nve_config** %9, align 8
  %27 = getelementptr inbounds %struct.mlxsw_sp_nve_config, %struct.mlxsw_sp_nve_config* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %25
  %33 = load %struct.mlxsw_sp_nve_config*, %struct.mlxsw_sp_nve_config** %9, align 8
  %34 = getelementptr inbounds %struct.mlxsw_sp_nve_config, %struct.mlxsw_sp_nve_config* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %6, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 1, i32* %4, align 4
  br label %40

39:                                               ; preds = %32, %25, %19, %3
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %39, %38
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_resource_size_params_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_resource_size_params_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_core = type { i32 }
%struct.devlink_resource_size_params = type { i32 }

@KVD_SINGLE_MIN_SIZE = common dso_local global i32 0, align 4
@KVD_DOUBLE_MIN_SIZE = common dso_local global i32 0, align 4
@KVD_SIZE = common dso_local global i32 0, align 4
@MLXSW_SP_KVD_GRANULARITY = common dso_local global i32 0, align 4
@DEVLINK_RESOURCE_UNIT_ENTRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_core*, %struct.devlink_resource_size_params*, %struct.devlink_resource_size_params*, %struct.devlink_resource_size_params*, %struct.devlink_resource_size_params*)* @mlxsw_sp_resource_size_params_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_resource_size_params_prepare(%struct.mlxsw_core* %0, %struct.devlink_resource_size_params* %1, %struct.devlink_resource_size_params* %2, %struct.devlink_resource_size_params* %3, %struct.devlink_resource_size_params* %4) #0 {
  %6 = alloca %struct.mlxsw_core*, align 8
  %7 = alloca %struct.devlink_resource_size_params*, align 8
  %8 = alloca %struct.devlink_resource_size_params*, align 8
  %9 = alloca %struct.devlink_resource_size_params*, align 8
  %10 = alloca %struct.devlink_resource_size_params*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.mlxsw_core* %0, %struct.mlxsw_core** %6, align 8
  store %struct.devlink_resource_size_params* %1, %struct.devlink_resource_size_params** %7, align 8
  store %struct.devlink_resource_size_params* %2, %struct.devlink_resource_size_params** %8, align 8
  store %struct.devlink_resource_size_params* %3, %struct.devlink_resource_size_params** %9, align 8
  store %struct.devlink_resource_size_params* %4, %struct.devlink_resource_size_params** %10, align 8
  %15 = load %struct.mlxsw_core*, %struct.mlxsw_core** %6, align 8
  %16 = load i32, i32* @KVD_SINGLE_MIN_SIZE, align 4
  %17 = call i64 @MLXSW_CORE_RES_GET(%struct.mlxsw_core* %15, i32 %16)
  store i64 %17, i64* %11, align 8
  %18 = load %struct.mlxsw_core*, %struct.mlxsw_core** %6, align 8
  %19 = load i32, i32* @KVD_DOUBLE_MIN_SIZE, align 4
  %20 = call i64 @MLXSW_CORE_RES_GET(%struct.mlxsw_core* %18, i32 %19)
  store i64 %20, i64* %12, align 8
  %21 = load %struct.mlxsw_core*, %struct.mlxsw_core** %6, align 8
  %22 = load i32, i32* @KVD_SIZE, align 4
  %23 = call i64 @MLXSW_CORE_RES_GET(%struct.mlxsw_core* %21, i32 %22)
  store i64 %23, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %24 = load %struct.devlink_resource_size_params*, %struct.devlink_resource_size_params** %7, align 8
  %25 = load i64, i64* %13, align 8
  %26 = load i64, i64* %13, align 8
  %27 = load i32, i32* @MLXSW_SP_KVD_GRANULARITY, align 4
  %28 = load i32, i32* @DEVLINK_RESOURCE_UNIT_ENTRY, align 4
  %29 = call i32 @devlink_resource_size_params_init(%struct.devlink_resource_size_params* %24, i64 %25, i64 %26, i32 %27, i32 %28)
  %30 = load %struct.devlink_resource_size_params*, %struct.devlink_resource_size_params** %8, align 8
  %31 = load i64, i64* %14, align 8
  %32 = load i64, i64* %13, align 8
  %33 = load i64, i64* %11, align 8
  %34 = sub nsw i64 %32, %33
  %35 = load i64, i64* %12, align 8
  %36 = sub nsw i64 %34, %35
  %37 = load i32, i32* @MLXSW_SP_KVD_GRANULARITY, align 4
  %38 = load i32, i32* @DEVLINK_RESOURCE_UNIT_ENTRY, align 4
  %39 = call i32 @devlink_resource_size_params_init(%struct.devlink_resource_size_params* %30, i64 %31, i64 %36, i32 %37, i32 %38)
  %40 = load %struct.devlink_resource_size_params*, %struct.devlink_resource_size_params** %9, align 8
  %41 = load i64, i64* %12, align 8
  %42 = load i64, i64* %13, align 8
  %43 = load i64, i64* %11, align 8
  %44 = sub nsw i64 %42, %43
  %45 = load i64, i64* %14, align 8
  %46 = sub nsw i64 %44, %45
  %47 = load i32, i32* @MLXSW_SP_KVD_GRANULARITY, align 4
  %48 = load i32, i32* @DEVLINK_RESOURCE_UNIT_ENTRY, align 4
  %49 = call i32 @devlink_resource_size_params_init(%struct.devlink_resource_size_params* %40, i64 %41, i64 %46, i32 %47, i32 %48)
  %50 = load %struct.devlink_resource_size_params*, %struct.devlink_resource_size_params** %10, align 8
  %51 = load i64, i64* %11, align 8
  %52 = load i64, i64* %13, align 8
  %53 = load i64, i64* %12, align 8
  %54 = sub nsw i64 %52, %53
  %55 = load i64, i64* %14, align 8
  %56 = sub nsw i64 %54, %55
  %57 = load i32, i32* @MLXSW_SP_KVD_GRANULARITY, align 4
  %58 = load i32, i32* @DEVLINK_RESOURCE_UNIT_ENTRY, align 4
  %59 = call i32 @devlink_resource_size_params_init(%struct.devlink_resource_size_params* %50, i64 %51, i64 %56, i32 %57, i32 %58)
  ret void
}

declare dso_local i64 @MLXSW_CORE_RES_GET(%struct.mlxsw_core*, i32) #1

declare dso_local i32 @devlink_resource_size_params_init(%struct.devlink_resource_size_params*, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

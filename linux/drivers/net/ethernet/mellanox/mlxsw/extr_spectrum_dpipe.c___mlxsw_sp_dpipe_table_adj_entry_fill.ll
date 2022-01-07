; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_dpipe.c___mlxsw_sp_dpipe_table_adj_entry_fill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_dpipe.c___mlxsw_sp_dpipe_table_adj_entry_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink_dpipe_entry = type { %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value* }
%struct.devlink_dpipe_value = type { i32, i32, i32* }
%struct.mlxsw_sp_rif = type { i32 }

@MLXSW_SP_DPIPE_TABLE_ADJ_MATCH_INDEX = common dso_local global i64 0, align 8
@MLXSW_SP_DPIPE_TABLE_ADJ_MATCH_SIZE = common dso_local global i64 0, align 8
@MLXSW_SP_DPIPE_TABLE_ADJ_MATCH_HASH_INDEX = common dso_local global i64 0, align 8
@MLXSW_SP_DPIPE_TABLE_ADJ_ACTION_DST_MAC = common dso_local global i64 0, align 8
@MLXSW_SP_DPIPE_TABLE_ADJ_ACTION_ERIF_PORT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.devlink_dpipe_entry*, i32, i32, i32, i8*, %struct.mlxsw_sp_rif*)* @__mlxsw_sp_dpipe_table_adj_entry_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__mlxsw_sp_dpipe_table_adj_entry_fill(%struct.devlink_dpipe_entry* %0, i32 %1, i32 %2, i32 %3, i8* %4, %struct.mlxsw_sp_rif* %5) #0 {
  %7 = alloca %struct.devlink_dpipe_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.mlxsw_sp_rif*, align 8
  %13 = alloca %struct.devlink_dpipe_value*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store %struct.devlink_dpipe_entry* %0, %struct.devlink_dpipe_entry** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store %struct.mlxsw_sp_rif* %5, %struct.mlxsw_sp_rif** %12, align 8
  %16 = load %struct.devlink_dpipe_entry*, %struct.devlink_dpipe_entry** %7, align 8
  %17 = getelementptr inbounds %struct.devlink_dpipe_entry, %struct.devlink_dpipe_entry* %16, i32 0, i32 1
  %18 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %17, align 8
  %19 = load i64, i64* @MLXSW_SP_DPIPE_TABLE_ADJ_MATCH_INDEX, align 8
  %20 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %18, i64 %19
  store %struct.devlink_dpipe_value* %20, %struct.devlink_dpipe_value** %13, align 8
  %21 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %13, align 8
  %22 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %15, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32*, i32** %15, align 8
  store i32 %24, i32* %25, align 4
  %26 = load %struct.devlink_dpipe_entry*, %struct.devlink_dpipe_entry** %7, align 8
  %27 = getelementptr inbounds %struct.devlink_dpipe_entry, %struct.devlink_dpipe_entry* %26, i32 0, i32 1
  %28 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %27, align 8
  %29 = load i64, i64* @MLXSW_SP_DPIPE_TABLE_ADJ_MATCH_SIZE, align 8
  %30 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %28, i64 %29
  store %struct.devlink_dpipe_value* %30, %struct.devlink_dpipe_value** %13, align 8
  %31 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %13, align 8
  %32 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %15, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load i32*, i32** %15, align 8
  store i32 %34, i32* %35, align 4
  %36 = load %struct.devlink_dpipe_entry*, %struct.devlink_dpipe_entry** %7, align 8
  %37 = getelementptr inbounds %struct.devlink_dpipe_entry, %struct.devlink_dpipe_entry* %36, i32 0, i32 1
  %38 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %37, align 8
  %39 = load i64, i64* @MLXSW_SP_DPIPE_TABLE_ADJ_MATCH_HASH_INDEX, align 8
  %40 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %38, i64 %39
  store %struct.devlink_dpipe_value* %40, %struct.devlink_dpipe_value** %13, align 8
  %41 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %13, align 8
  %42 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %15, align 8
  %44 = load i32, i32* %10, align 4
  %45 = load i32*, i32** %15, align 8
  store i32 %44, i32* %45, align 4
  %46 = load %struct.devlink_dpipe_entry*, %struct.devlink_dpipe_entry** %7, align 8
  %47 = getelementptr inbounds %struct.devlink_dpipe_entry, %struct.devlink_dpipe_entry* %46, i32 0, i32 0
  %48 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %47, align 8
  %49 = load i64, i64* @MLXSW_SP_DPIPE_TABLE_ADJ_ACTION_DST_MAC, align 8
  %50 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %48, i64 %49
  store %struct.devlink_dpipe_value* %50, %struct.devlink_dpipe_value** %13, align 8
  %51 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %13, align 8
  %52 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = call i32 @ether_addr_copy(i32* %53, i8* %54)
  %56 = load %struct.devlink_dpipe_entry*, %struct.devlink_dpipe_entry** %7, align 8
  %57 = getelementptr inbounds %struct.devlink_dpipe_entry, %struct.devlink_dpipe_entry* %56, i32 0, i32 0
  %58 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %57, align 8
  %59 = load i64, i64* @MLXSW_SP_DPIPE_TABLE_ADJ_ACTION_ERIF_PORT, align 8
  %60 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %58, i64 %59
  store %struct.devlink_dpipe_value* %60, %struct.devlink_dpipe_value** %13, align 8
  %61 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %13, align 8
  %62 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  store i32* %63, i32** %14, align 8
  %64 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %12, align 8
  %65 = call i32 @mlxsw_sp_rif_index(%struct.mlxsw_sp_rif* %64)
  %66 = load i32*, i32** %14, align 8
  store i32 %65, i32* %66, align 4
  %67 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %12, align 8
  %68 = call i32 @mlxsw_sp_rif_dev_ifindex(%struct.mlxsw_sp_rif* %67)
  %69 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %13, align 8
  %70 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %13, align 8
  %72 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %71, i32 0, i32 0
  store i32 1, i32* %72, align 8
  ret void
}

declare dso_local i32 @ether_addr_copy(i32*, i8*) #1

declare dso_local i32 @mlxsw_sp_rif_index(%struct.mlxsw_sp_rif*) #1

declare dso_local i32 @mlxsw_sp_rif_dev_ifindex(%struct.mlxsw_sp_rif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

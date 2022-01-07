; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_dpipe.c_mlxsw_sp_dpipe_table_adj_match_action_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_dpipe.c_mlxsw_sp_dpipe_table_adj_match_action_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink_dpipe_match = type { i32, i32*, i8* }
%struct.devlink_dpipe_action = type { i32, i32*, i8* }

@MLXSW_SP_DPIPE_TABLE_ADJ_MATCH_INDEX = common dso_local global i64 0, align 8
@DEVLINK_DPIPE_MATCH_TYPE_FIELD_EXACT = common dso_local global i8* null, align 8
@mlxsw_sp_dpipe_header_metadata = common dso_local global i32 0, align 4
@MLXSW_SP_DPIPE_FIELD_METADATA_ADJ_INDEX = common dso_local global i32 0, align 4
@MLXSW_SP_DPIPE_TABLE_ADJ_MATCH_SIZE = common dso_local global i64 0, align 8
@MLXSW_SP_DPIPE_FIELD_METADATA_ADJ_SIZE = common dso_local global i32 0, align 4
@MLXSW_SP_DPIPE_TABLE_ADJ_MATCH_HASH_INDEX = common dso_local global i64 0, align 8
@MLXSW_SP_DPIPE_FIELD_METADATA_ADJ_HASH_INDEX = common dso_local global i32 0, align 4
@MLXSW_SP_DPIPE_TABLE_ADJ_ACTION_DST_MAC = common dso_local global i64 0, align 8
@DEVLINK_DPIPE_ACTION_TYPE_FIELD_MODIFY = common dso_local global i8* null, align 8
@devlink_dpipe_header_ethernet = common dso_local global i32 0, align 4
@DEVLINK_DPIPE_FIELD_ETHERNET_DST_MAC = common dso_local global i32 0, align 4
@MLXSW_SP_DPIPE_TABLE_ADJ_ACTION_ERIF_PORT = common dso_local global i64 0, align 8
@MLXSW_SP_DPIPE_FIELD_METADATA_ERIF_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.devlink_dpipe_match*, %struct.devlink_dpipe_action*)* @mlxsw_sp_dpipe_table_adj_match_action_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_dpipe_table_adj_match_action_prepare(%struct.devlink_dpipe_match* %0, %struct.devlink_dpipe_action* %1) #0 {
  %3 = alloca %struct.devlink_dpipe_match*, align 8
  %4 = alloca %struct.devlink_dpipe_action*, align 8
  %5 = alloca %struct.devlink_dpipe_action*, align 8
  %6 = alloca %struct.devlink_dpipe_match*, align 8
  store %struct.devlink_dpipe_match* %0, %struct.devlink_dpipe_match** %3, align 8
  store %struct.devlink_dpipe_action* %1, %struct.devlink_dpipe_action** %4, align 8
  %7 = load %struct.devlink_dpipe_match*, %struct.devlink_dpipe_match** %3, align 8
  %8 = load i64, i64* @MLXSW_SP_DPIPE_TABLE_ADJ_MATCH_INDEX, align 8
  %9 = getelementptr inbounds %struct.devlink_dpipe_match, %struct.devlink_dpipe_match* %7, i64 %8
  store %struct.devlink_dpipe_match* %9, %struct.devlink_dpipe_match** %6, align 8
  %10 = load i8*, i8** @DEVLINK_DPIPE_MATCH_TYPE_FIELD_EXACT, align 8
  %11 = load %struct.devlink_dpipe_match*, %struct.devlink_dpipe_match** %6, align 8
  %12 = getelementptr inbounds %struct.devlink_dpipe_match, %struct.devlink_dpipe_match* %11, i32 0, i32 2
  store i8* %10, i8** %12, align 8
  %13 = load %struct.devlink_dpipe_match*, %struct.devlink_dpipe_match** %6, align 8
  %14 = getelementptr inbounds %struct.devlink_dpipe_match, %struct.devlink_dpipe_match* %13, i32 0, i32 1
  store i32* @mlxsw_sp_dpipe_header_metadata, i32** %14, align 8
  %15 = load i32, i32* @MLXSW_SP_DPIPE_FIELD_METADATA_ADJ_INDEX, align 4
  %16 = load %struct.devlink_dpipe_match*, %struct.devlink_dpipe_match** %6, align 8
  %17 = getelementptr inbounds %struct.devlink_dpipe_match, %struct.devlink_dpipe_match* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.devlink_dpipe_match*, %struct.devlink_dpipe_match** %3, align 8
  %19 = load i64, i64* @MLXSW_SP_DPIPE_TABLE_ADJ_MATCH_SIZE, align 8
  %20 = getelementptr inbounds %struct.devlink_dpipe_match, %struct.devlink_dpipe_match* %18, i64 %19
  store %struct.devlink_dpipe_match* %20, %struct.devlink_dpipe_match** %6, align 8
  %21 = load i8*, i8** @DEVLINK_DPIPE_MATCH_TYPE_FIELD_EXACT, align 8
  %22 = load %struct.devlink_dpipe_match*, %struct.devlink_dpipe_match** %6, align 8
  %23 = getelementptr inbounds %struct.devlink_dpipe_match, %struct.devlink_dpipe_match* %22, i32 0, i32 2
  store i8* %21, i8** %23, align 8
  %24 = load %struct.devlink_dpipe_match*, %struct.devlink_dpipe_match** %6, align 8
  %25 = getelementptr inbounds %struct.devlink_dpipe_match, %struct.devlink_dpipe_match* %24, i32 0, i32 1
  store i32* @mlxsw_sp_dpipe_header_metadata, i32** %25, align 8
  %26 = load i32, i32* @MLXSW_SP_DPIPE_FIELD_METADATA_ADJ_SIZE, align 4
  %27 = load %struct.devlink_dpipe_match*, %struct.devlink_dpipe_match** %6, align 8
  %28 = getelementptr inbounds %struct.devlink_dpipe_match, %struct.devlink_dpipe_match* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.devlink_dpipe_match*, %struct.devlink_dpipe_match** %3, align 8
  %30 = load i64, i64* @MLXSW_SP_DPIPE_TABLE_ADJ_MATCH_HASH_INDEX, align 8
  %31 = getelementptr inbounds %struct.devlink_dpipe_match, %struct.devlink_dpipe_match* %29, i64 %30
  store %struct.devlink_dpipe_match* %31, %struct.devlink_dpipe_match** %6, align 8
  %32 = load i8*, i8** @DEVLINK_DPIPE_MATCH_TYPE_FIELD_EXACT, align 8
  %33 = load %struct.devlink_dpipe_match*, %struct.devlink_dpipe_match** %6, align 8
  %34 = getelementptr inbounds %struct.devlink_dpipe_match, %struct.devlink_dpipe_match* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  %35 = load %struct.devlink_dpipe_match*, %struct.devlink_dpipe_match** %6, align 8
  %36 = getelementptr inbounds %struct.devlink_dpipe_match, %struct.devlink_dpipe_match* %35, i32 0, i32 1
  store i32* @mlxsw_sp_dpipe_header_metadata, i32** %36, align 8
  %37 = load i32, i32* @MLXSW_SP_DPIPE_FIELD_METADATA_ADJ_HASH_INDEX, align 4
  %38 = load %struct.devlink_dpipe_match*, %struct.devlink_dpipe_match** %6, align 8
  %39 = getelementptr inbounds %struct.devlink_dpipe_match, %struct.devlink_dpipe_match* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.devlink_dpipe_action*, %struct.devlink_dpipe_action** %4, align 8
  %41 = load i64, i64* @MLXSW_SP_DPIPE_TABLE_ADJ_ACTION_DST_MAC, align 8
  %42 = getelementptr inbounds %struct.devlink_dpipe_action, %struct.devlink_dpipe_action* %40, i64 %41
  store %struct.devlink_dpipe_action* %42, %struct.devlink_dpipe_action** %5, align 8
  %43 = load i8*, i8** @DEVLINK_DPIPE_ACTION_TYPE_FIELD_MODIFY, align 8
  %44 = load %struct.devlink_dpipe_action*, %struct.devlink_dpipe_action** %5, align 8
  %45 = getelementptr inbounds %struct.devlink_dpipe_action, %struct.devlink_dpipe_action* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  %46 = load %struct.devlink_dpipe_action*, %struct.devlink_dpipe_action** %5, align 8
  %47 = getelementptr inbounds %struct.devlink_dpipe_action, %struct.devlink_dpipe_action* %46, i32 0, i32 1
  store i32* @devlink_dpipe_header_ethernet, i32** %47, align 8
  %48 = load i32, i32* @DEVLINK_DPIPE_FIELD_ETHERNET_DST_MAC, align 4
  %49 = load %struct.devlink_dpipe_action*, %struct.devlink_dpipe_action** %5, align 8
  %50 = getelementptr inbounds %struct.devlink_dpipe_action, %struct.devlink_dpipe_action* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.devlink_dpipe_action*, %struct.devlink_dpipe_action** %4, align 8
  %52 = load i64, i64* @MLXSW_SP_DPIPE_TABLE_ADJ_ACTION_ERIF_PORT, align 8
  %53 = getelementptr inbounds %struct.devlink_dpipe_action, %struct.devlink_dpipe_action* %51, i64 %52
  store %struct.devlink_dpipe_action* %53, %struct.devlink_dpipe_action** %5, align 8
  %54 = load i8*, i8** @DEVLINK_DPIPE_ACTION_TYPE_FIELD_MODIFY, align 8
  %55 = load %struct.devlink_dpipe_action*, %struct.devlink_dpipe_action** %5, align 8
  %56 = getelementptr inbounds %struct.devlink_dpipe_action, %struct.devlink_dpipe_action* %55, i32 0, i32 2
  store i8* %54, i8** %56, align 8
  %57 = load %struct.devlink_dpipe_action*, %struct.devlink_dpipe_action** %5, align 8
  %58 = getelementptr inbounds %struct.devlink_dpipe_action, %struct.devlink_dpipe_action* %57, i32 0, i32 1
  store i32* @mlxsw_sp_dpipe_header_metadata, i32** %58, align 8
  %59 = load i32, i32* @MLXSW_SP_DPIPE_FIELD_METADATA_ERIF_PORT, align 4
  %60 = load %struct.devlink_dpipe_action*, %struct.devlink_dpipe_action** %5, align 8
  %61 = getelementptr inbounds %struct.devlink_dpipe_action, %struct.devlink_dpipe_action* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

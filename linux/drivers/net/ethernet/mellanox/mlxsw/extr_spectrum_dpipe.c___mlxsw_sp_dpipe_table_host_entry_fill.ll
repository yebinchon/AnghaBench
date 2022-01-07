; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_dpipe.c___mlxsw_sp_dpipe_table_host_entry_fill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_dpipe.c___mlxsw_sp_dpipe_table_host_entry_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink_dpipe_entry = type { %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value* }
%struct.devlink_dpipe_value = type { i32, i32*, i32, i32 }
%struct.mlxsw_sp_rif = type { i32 }

@MLXSW_SP_DPIPE_TABLE_HOST_MATCH_RIF = common dso_local global i64 0, align 8
@MLXSW_SP_DPIPE_TABLE_HOST_MATCH_DIP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.devlink_dpipe_entry*, %struct.mlxsw_sp_rif*, i8*, i8*)* @__mlxsw_sp_dpipe_table_host_entry_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__mlxsw_sp_dpipe_table_host_entry_fill(%struct.devlink_dpipe_entry* %0, %struct.mlxsw_sp_rif* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.devlink_dpipe_entry*, align 8
  %6 = alloca %struct.mlxsw_sp_rif*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.devlink_dpipe_value*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.devlink_dpipe_entry* %0, %struct.devlink_dpipe_entry** %5, align 8
  store %struct.mlxsw_sp_rif* %1, %struct.mlxsw_sp_rif** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load %struct.devlink_dpipe_entry*, %struct.devlink_dpipe_entry** %5, align 8
  %13 = getelementptr inbounds %struct.devlink_dpipe_entry, %struct.devlink_dpipe_entry* %12, i32 0, i32 1
  %14 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %13, align 8
  %15 = load i64, i64* @MLXSW_SP_DPIPE_TABLE_HOST_MATCH_RIF, align 8
  %16 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %14, i64 %15
  store %struct.devlink_dpipe_value* %16, %struct.devlink_dpipe_value** %9, align 8
  %17 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %9, align 8
  %18 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %10, align 8
  %20 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %6, align 8
  %21 = call i32 @mlxsw_sp_rif_index(%struct.mlxsw_sp_rif* %20)
  %22 = load i32*, i32** %10, align 8
  store i32 %21, i32* %22, align 4
  %23 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %6, align 8
  %24 = call i32 @mlxsw_sp_rif_dev_ifindex(%struct.mlxsw_sp_rif* %23)
  %25 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %9, align 8
  %26 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %9, align 8
  %28 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load %struct.devlink_dpipe_entry*, %struct.devlink_dpipe_entry** %5, align 8
  %30 = getelementptr inbounds %struct.devlink_dpipe_entry, %struct.devlink_dpipe_entry* %29, i32 0, i32 1
  %31 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %30, align 8
  %32 = load i64, i64* @MLXSW_SP_DPIPE_TABLE_HOST_MATCH_DIP, align 8
  %33 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %31, i64 %32
  store %struct.devlink_dpipe_value* %33, %struct.devlink_dpipe_value** %9, align 8
  %34 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %9, align 8
  %35 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %9, align 8
  %39 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @memcpy(i32* %36, i8* %37, i32 %40)
  %42 = load %struct.devlink_dpipe_entry*, %struct.devlink_dpipe_entry** %5, align 8
  %43 = getelementptr inbounds %struct.devlink_dpipe_entry, %struct.devlink_dpipe_entry* %42, i32 0, i32 0
  %44 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %43, align 8
  store %struct.devlink_dpipe_value* %44, %struct.devlink_dpipe_value** %9, align 8
  %45 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %9, align 8
  %46 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  store i32* %47, i32** %11, align 8
  %48 = load i32*, i32** %11, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 @ether_addr_copy(i32* %48, i8* %49)
  ret void
}

declare dso_local i32 @mlxsw_sp_rif_index(%struct.mlxsw_sp_rif*) #1

declare dso_local i32 @mlxsw_sp_rif_dev_ifindex(%struct.mlxsw_sp_rif*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @ether_addr_copy(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_neigh_counter_should_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_neigh_counter_should_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_neigh_entry = type { i32 }
%struct.devlink = type { i32 }

@MLXSW_SP_DPIPE_TABLE_NAME_HOST4 = common dso_local global i8* null, align 8
@MLXSW_SP_DPIPE_TABLE_NAME_HOST6 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.mlxsw_sp_neigh_entry*)* @mlxsw_sp_neigh_counter_should_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_neigh_counter_should_alloc(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_neigh_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca %struct.mlxsw_sp_neigh_entry*, align 8
  %6 = alloca %struct.devlink*, align 8
  %7 = alloca i8*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store %struct.mlxsw_sp_neigh_entry* %1, %struct.mlxsw_sp_neigh_entry** %5, align 8
  %8 = load %struct.mlxsw_sp_neigh_entry*, %struct.mlxsw_sp_neigh_entry** %5, align 8
  %9 = call i32 @mlxsw_sp_neigh_entry_type(%struct.mlxsw_sp_neigh_entry* %8)
  switch i32 %9, label %14 [
    i32 129, label %10
    i32 128, label %12
  ]

10:                                               ; preds = %2
  %11 = load i8*, i8** @MLXSW_SP_DPIPE_TABLE_NAME_HOST4, align 8
  store i8* %11, i8** %7, align 8
  br label %16

12:                                               ; preds = %2
  %13 = load i8*, i8** @MLXSW_SP_DPIPE_TABLE_NAME_HOST6, align 8
  store i8* %13, i8** %7, align 8
  br label %16

14:                                               ; preds = %2
  %15 = call i32 @WARN_ON(i32 1)
  store i32 0, i32* %3, align 4
  br label %24

16:                                               ; preds = %12, %10
  %17 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %18 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.devlink* @priv_to_devlink(i32 %19)
  store %struct.devlink* %20, %struct.devlink** %6, align 8
  %21 = load %struct.devlink*, %struct.devlink** %6, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @devlink_dpipe_table_counter_enabled(%struct.devlink* %21, i8* %22)
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %16, %14
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @mlxsw_sp_neigh_entry_type(%struct.mlxsw_sp_neigh_entry*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.devlink* @priv_to_devlink(i32) #1

declare dso_local i32 @devlink_dpipe_table_counter_enabled(%struct.devlink*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

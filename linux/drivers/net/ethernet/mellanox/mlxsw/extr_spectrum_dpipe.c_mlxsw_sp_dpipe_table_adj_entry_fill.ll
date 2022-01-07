; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_dpipe.c_mlxsw_sp_dpipe_table_adj_entry_fill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_dpipe.c_mlxsw_sp_dpipe_table_adj_entry_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_nexthop = type { i32 }
%struct.devlink_dpipe_entry = type { i32, i32 }
%struct.mlxsw_sp_rif = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp*, %struct.mlxsw_sp_nexthop*, %struct.devlink_dpipe_entry*)* @mlxsw_sp_dpipe_table_adj_entry_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_dpipe_table_adj_entry_fill(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_nexthop* %1, %struct.devlink_dpipe_entry* %2) #0 {
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca %struct.mlxsw_sp_nexthop*, align 8
  %6 = alloca %struct.devlink_dpipe_entry*, align 8
  %7 = alloca %struct.mlxsw_sp_rif*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store %struct.mlxsw_sp_nexthop* %1, %struct.mlxsw_sp_nexthop** %5, align 8
  store %struct.devlink_dpipe_entry* %2, %struct.devlink_dpipe_entry** %6, align 8
  %13 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %5, align 8
  %14 = call %struct.mlxsw_sp_rif* @mlxsw_sp_nexthop_rif(%struct.mlxsw_sp_nexthop* %13)
  store %struct.mlxsw_sp_rif* %14, %struct.mlxsw_sp_rif** %7, align 8
  %15 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %5, align 8
  %16 = call i8* @mlxsw_sp_nexthop_ha(%struct.mlxsw_sp_nexthop* %15)
  store i8* %16, i8** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %17 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %5, align 8
  %18 = call i32 @mlxsw_sp_nexthop_indexes(%struct.mlxsw_sp_nexthop* %17, i32* %10, i32* %11, i32* %9)
  %19 = load %struct.devlink_dpipe_entry*, %struct.devlink_dpipe_entry** %6, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i8*, i8** %8, align 8
  %24 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %7, align 8
  %25 = call i32 @__mlxsw_sp_dpipe_table_adj_entry_fill(%struct.devlink_dpipe_entry* %19, i32 %20, i32 %21, i32 %22, i8* %23, %struct.mlxsw_sp_rif* %24)
  %26 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %27 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %5, align 8
  %28 = load %struct.devlink_dpipe_entry*, %struct.devlink_dpipe_entry** %6, align 8
  %29 = getelementptr inbounds %struct.devlink_dpipe_entry, %struct.devlink_dpipe_entry* %28, i32 0, i32 1
  %30 = call i32 @mlxsw_sp_nexthop_counter_get(%struct.mlxsw_sp* %26, %struct.mlxsw_sp_nexthop* %27, i32* %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %3
  %34 = load %struct.devlink_dpipe_entry*, %struct.devlink_dpipe_entry** %6, align 8
  %35 = getelementptr inbounds %struct.devlink_dpipe_entry, %struct.devlink_dpipe_entry* %34, i32 0, i32 0
  store i32 1, i32* %35, align 4
  br label %36

36:                                               ; preds = %33, %3
  ret void
}

declare dso_local %struct.mlxsw_sp_rif* @mlxsw_sp_nexthop_rif(%struct.mlxsw_sp_nexthop*) #1

declare dso_local i8* @mlxsw_sp_nexthop_ha(%struct.mlxsw_sp_nexthop*) #1

declare dso_local i32 @mlxsw_sp_nexthop_indexes(%struct.mlxsw_sp_nexthop*, i32*, i32*, i32*) #1

declare dso_local i32 @__mlxsw_sp_dpipe_table_adj_entry_fill(%struct.devlink_dpipe_entry*, i32, i32, i32, i8*, %struct.mlxsw_sp_rif*) #1

declare dso_local i32 @mlxsw_sp_nexthop_counter_get(%struct.mlxsw_sp*, %struct.mlxsw_sp_nexthop*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

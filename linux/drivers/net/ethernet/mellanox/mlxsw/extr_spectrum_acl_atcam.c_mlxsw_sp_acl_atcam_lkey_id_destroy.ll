; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_atcam.c_mlxsw_sp_acl_atcam_lkey_id_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_atcam.c_mlxsw_sp_acl_atcam_lkey_id_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_acl_atcam_region = type { %struct.mlxsw_sp_acl_atcam_region_12kb* }
%struct.mlxsw_sp_acl_atcam_region_12kb = type { i32, i32 }
%struct.mlxsw_sp_acl_atcam_lkey_id = type { i32, i32 }

@mlxsw_sp_acl_atcam_lkey_id_ht_params = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_lkey_id*)* @mlxsw_sp_acl_atcam_lkey_id_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_acl_atcam_lkey_id_destroy(%struct.mlxsw_sp_acl_atcam_region* %0, %struct.mlxsw_sp_acl_atcam_lkey_id* %1) #0 {
  %3 = alloca %struct.mlxsw_sp_acl_atcam_region*, align 8
  %4 = alloca %struct.mlxsw_sp_acl_atcam_lkey_id*, align 8
  %5 = alloca %struct.mlxsw_sp_acl_atcam_region_12kb*, align 8
  %6 = alloca i32, align 4
  store %struct.mlxsw_sp_acl_atcam_region* %0, %struct.mlxsw_sp_acl_atcam_region** %3, align 8
  store %struct.mlxsw_sp_acl_atcam_lkey_id* %1, %struct.mlxsw_sp_acl_atcam_lkey_id** %4, align 8
  %7 = load %struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_region** %3, align 8
  %8 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, %struct.mlxsw_sp_acl_atcam_region* %7, i32 0, i32 0
  %9 = load %struct.mlxsw_sp_acl_atcam_region_12kb*, %struct.mlxsw_sp_acl_atcam_region_12kb** %8, align 8
  store %struct.mlxsw_sp_acl_atcam_region_12kb* %9, %struct.mlxsw_sp_acl_atcam_region_12kb** %5, align 8
  %10 = load %struct.mlxsw_sp_acl_atcam_lkey_id*, %struct.mlxsw_sp_acl_atcam_lkey_id** %4, align 8
  %11 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_lkey_id, %struct.mlxsw_sp_acl_atcam_lkey_id* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load %struct.mlxsw_sp_acl_atcam_region_12kb*, %struct.mlxsw_sp_acl_atcam_region_12kb** %5, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region_12kb, %struct.mlxsw_sp_acl_atcam_region_12kb* %13, i32 0, i32 1
  %15 = load %struct.mlxsw_sp_acl_atcam_lkey_id*, %struct.mlxsw_sp_acl_atcam_lkey_id** %4, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_lkey_id, %struct.mlxsw_sp_acl_atcam_lkey_id* %15, i32 0, i32 0
  %17 = load i32, i32* @mlxsw_sp_acl_atcam_lkey_id_ht_params, align 4
  %18 = call i32 @rhashtable_remove_fast(i32* %14, i32* %16, i32 %17)
  %19 = load %struct.mlxsw_sp_acl_atcam_lkey_id*, %struct.mlxsw_sp_acl_atcam_lkey_id** %4, align 8
  %20 = call i32 @kfree(%struct.mlxsw_sp_acl_atcam_lkey_id* %19)
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.mlxsw_sp_acl_atcam_region_12kb*, %struct.mlxsw_sp_acl_atcam_region_12kb** %5, align 8
  %23 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region_12kb, %struct.mlxsw_sp_acl_atcam_region_12kb* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @__clear_bit(i32 %21, i32 %24)
  ret void
}

declare dso_local i32 @rhashtable_remove_fast(i32*, i32*, i32) #1

declare dso_local i32 @kfree(%struct.mlxsw_sp_acl_atcam_lkey_id*) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

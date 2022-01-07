; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_atcam.c_mlxsw_sp_acl_atcam_generic_lkey_id_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_atcam.c_mlxsw_sp_acl_atcam_generic_lkey_id_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_acl_atcam_lkey_id = type { i32 }
%struct.mlxsw_sp_acl_atcam_region = type { %struct.mlxsw_sp_acl_atcam_region_generic* }
%struct.mlxsw_sp_acl_atcam_region_generic = type { %struct.mlxsw_sp_acl_atcam_lkey_id }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_sp_acl_atcam_lkey_id* (%struct.mlxsw_sp_acl_atcam_region*, i8*, i32)* @mlxsw_sp_acl_atcam_generic_lkey_id_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_sp_acl_atcam_lkey_id* @mlxsw_sp_acl_atcam_generic_lkey_id_get(%struct.mlxsw_sp_acl_atcam_region* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.mlxsw_sp_acl_atcam_region*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlxsw_sp_acl_atcam_region_generic*, align 8
  store %struct.mlxsw_sp_acl_atcam_region* %0, %struct.mlxsw_sp_acl_atcam_region** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_region** %4, align 8
  %9 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, %struct.mlxsw_sp_acl_atcam_region* %8, i32 0, i32 0
  %10 = load %struct.mlxsw_sp_acl_atcam_region_generic*, %struct.mlxsw_sp_acl_atcam_region_generic** %9, align 8
  store %struct.mlxsw_sp_acl_atcam_region_generic* %10, %struct.mlxsw_sp_acl_atcam_region_generic** %7, align 8
  %11 = load %struct.mlxsw_sp_acl_atcam_region_generic*, %struct.mlxsw_sp_acl_atcam_region_generic** %7, align 8
  %12 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region_generic, %struct.mlxsw_sp_acl_atcam_region_generic* %11, i32 0, i32 0
  ret %struct.mlxsw_sp_acl_atcam_lkey_id* %12
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

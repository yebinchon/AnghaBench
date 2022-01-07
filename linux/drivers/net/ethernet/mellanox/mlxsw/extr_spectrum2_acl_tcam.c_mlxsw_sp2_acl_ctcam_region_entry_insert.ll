; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum2_acl_tcam.c_mlxsw_sp2_acl_ctcam_region_entry_insert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum2_acl_tcam.c_mlxsw_sp2_acl_ctcam_region_entry_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_acl_ctcam_region = type { i32 }
%struct.mlxsw_sp_acl_ctcam_entry = type { i32 }
%struct.mlxsw_sp_acl_atcam_region = type { i32 }
%struct.mlxsw_sp_acl_atcam_entry = type { %struct.mlxsw_sp_acl_erp_mask* }
%struct.mlxsw_sp_acl_erp_mask = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_acl_ctcam_region*, %struct.mlxsw_sp_acl_ctcam_entry*, i8*)* @mlxsw_sp2_acl_ctcam_region_entry_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp2_acl_ctcam_region_entry_insert(%struct.mlxsw_sp_acl_ctcam_region* %0, %struct.mlxsw_sp_acl_ctcam_entry* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp_acl_ctcam_region*, align 8
  %6 = alloca %struct.mlxsw_sp_acl_ctcam_entry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mlxsw_sp_acl_atcam_region*, align 8
  %9 = alloca %struct.mlxsw_sp_acl_atcam_entry*, align 8
  %10 = alloca %struct.mlxsw_sp_acl_erp_mask*, align 8
  store %struct.mlxsw_sp_acl_ctcam_region* %0, %struct.mlxsw_sp_acl_ctcam_region** %5, align 8
  store %struct.mlxsw_sp_acl_ctcam_entry* %1, %struct.mlxsw_sp_acl_ctcam_entry** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.mlxsw_sp_acl_ctcam_region*, %struct.mlxsw_sp_acl_ctcam_region** %5, align 8
  %12 = call %struct.mlxsw_sp_acl_atcam_region* @mlxsw_sp_acl_tcam_cregion_aregion(%struct.mlxsw_sp_acl_ctcam_region* %11)
  store %struct.mlxsw_sp_acl_atcam_region* %12, %struct.mlxsw_sp_acl_atcam_region** %8, align 8
  %13 = load %struct.mlxsw_sp_acl_ctcam_entry*, %struct.mlxsw_sp_acl_ctcam_entry** %6, align 8
  %14 = call %struct.mlxsw_sp_acl_atcam_entry* @mlxsw_sp_acl_tcam_centry_aentry(%struct.mlxsw_sp_acl_ctcam_entry* %13)
  store %struct.mlxsw_sp_acl_atcam_entry* %14, %struct.mlxsw_sp_acl_atcam_entry** %9, align 8
  %15 = load %struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_region** %8, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call %struct.mlxsw_sp_acl_erp_mask* @mlxsw_sp_acl_erp_mask_get(%struct.mlxsw_sp_acl_atcam_region* %15, i8* %16, i32 1)
  store %struct.mlxsw_sp_acl_erp_mask* %17, %struct.mlxsw_sp_acl_erp_mask** %10, align 8
  %18 = load %struct.mlxsw_sp_acl_erp_mask*, %struct.mlxsw_sp_acl_erp_mask** %10, align 8
  %19 = call i64 @IS_ERR(%struct.mlxsw_sp_acl_erp_mask* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load %struct.mlxsw_sp_acl_erp_mask*, %struct.mlxsw_sp_acl_erp_mask** %10, align 8
  %23 = call i32 @PTR_ERR(%struct.mlxsw_sp_acl_erp_mask* %22)
  store i32 %23, i32* %4, align 4
  br label %28

24:                                               ; preds = %3
  %25 = load %struct.mlxsw_sp_acl_erp_mask*, %struct.mlxsw_sp_acl_erp_mask** %10, align 8
  %26 = load %struct.mlxsw_sp_acl_atcam_entry*, %struct.mlxsw_sp_acl_atcam_entry** %9, align 8
  %27 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_entry, %struct.mlxsw_sp_acl_atcam_entry* %26, i32 0, i32 0
  store %struct.mlxsw_sp_acl_erp_mask* %25, %struct.mlxsw_sp_acl_erp_mask** %27, align 8
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %24, %21
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local %struct.mlxsw_sp_acl_atcam_region* @mlxsw_sp_acl_tcam_cregion_aregion(%struct.mlxsw_sp_acl_ctcam_region*) #1

declare dso_local %struct.mlxsw_sp_acl_atcam_entry* @mlxsw_sp_acl_tcam_centry_aentry(%struct.mlxsw_sp_acl_ctcam_entry*) #1

declare dso_local %struct.mlxsw_sp_acl_erp_mask* @mlxsw_sp_acl_erp_mask_get(%struct.mlxsw_sp_acl_atcam_region*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.mlxsw_sp_acl_erp_mask*) #1

declare dso_local i32 @PTR_ERR(%struct.mlxsw_sp_acl_erp_mask*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

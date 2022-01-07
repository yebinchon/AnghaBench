; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_erp.c_mlxsw_sp_acl_erp_mask_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_erp.c_mlxsw_sp_acl_erp_mask_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_acl_erp_mask = type { i32 }
%struct.mlxsw_sp_acl_atcam_region = type { %struct.mlxsw_sp_acl_erp_table* }
%struct.mlxsw_sp_acl_erp_table = type { i32, i32 }
%struct.mlxsw_sp_acl_erp_key = type { i32, i32 }
%struct.objagg_obj = type { i32 }

@MLXSW_REG_PTCEX_FLEX_KEY_BLOCKS_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlxsw_sp_acl_erp_mask* @mlxsw_sp_acl_erp_mask_get(%struct.mlxsw_sp_acl_atcam_region* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.mlxsw_sp_acl_erp_mask*, align 8
  %5 = alloca %struct.mlxsw_sp_acl_atcam_region*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlxsw_sp_acl_erp_table*, align 8
  %9 = alloca %struct.mlxsw_sp_acl_erp_key, align 4
  %10 = alloca %struct.objagg_obj*, align 8
  store %struct.mlxsw_sp_acl_atcam_region* %0, %struct.mlxsw_sp_acl_atcam_region** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_region** %5, align 8
  %12 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, %struct.mlxsw_sp_acl_atcam_region* %11, i32 0, i32 0
  %13 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %12, align 8
  store %struct.mlxsw_sp_acl_erp_table* %13, %struct.mlxsw_sp_acl_erp_table** %8, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_key, %struct.mlxsw_sp_acl_erp_key* %9, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* @MLXSW_REG_PTCEX_FLEX_KEY_BLOCKS_LEN, align 4
  %18 = call i32 @memcpy(i32 %15, i8* %16, i32 %17)
  %19 = load i32, i32* %7, align 4
  %20 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_key, %struct.mlxsw_sp_acl_erp_key* %9, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %8, align 8
  %22 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, %struct.mlxsw_sp_acl_erp_table* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %8, align 8
  %25 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, %struct.mlxsw_sp_acl_erp_table* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.objagg_obj* @objagg_obj_get(i32 %26, %struct.mlxsw_sp_acl_erp_key* %9)
  store %struct.objagg_obj* %27, %struct.objagg_obj** %10, align 8
  %28 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %8, align 8
  %29 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, %struct.mlxsw_sp_acl_erp_table* %28, i32 0, i32 0
  %30 = call i32 @mutex_unlock(i32* %29)
  %31 = load %struct.objagg_obj*, %struct.objagg_obj** %10, align 8
  %32 = call i64 @IS_ERR(%struct.objagg_obj* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %3
  %35 = load %struct.objagg_obj*, %struct.objagg_obj** %10, align 8
  %36 = call %struct.mlxsw_sp_acl_erp_mask* @ERR_CAST(%struct.objagg_obj* %35)
  store %struct.mlxsw_sp_acl_erp_mask* %36, %struct.mlxsw_sp_acl_erp_mask** %4, align 8
  br label %40

37:                                               ; preds = %3
  %38 = load %struct.objagg_obj*, %struct.objagg_obj** %10, align 8
  %39 = bitcast %struct.objagg_obj* %38 to %struct.mlxsw_sp_acl_erp_mask*
  store %struct.mlxsw_sp_acl_erp_mask* %39, %struct.mlxsw_sp_acl_erp_mask** %4, align 8
  br label %40

40:                                               ; preds = %37, %34
  %41 = load %struct.mlxsw_sp_acl_erp_mask*, %struct.mlxsw_sp_acl_erp_mask** %4, align 8
  ret %struct.mlxsw_sp_acl_erp_mask* %41
}

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.objagg_obj* @objagg_obj_get(i32, %struct.mlxsw_sp_acl_erp_key*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @IS_ERR(%struct.objagg_obj*) #1

declare dso_local %struct.mlxsw_sp_acl_erp_mask* @ERR_CAST(%struct.objagg_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_atcam.c_mlxsw_sp_acl_atcam_12kb_lkey_id_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_atcam.c_mlxsw_sp_acl_atcam_12kb_lkey_id_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_acl_atcam_lkey_id = type { i32 }
%struct.mlxsw_sp_acl_atcam_region = type { %struct.mlxsw_sp_acl_tcam_region*, %struct.mlxsw_sp_acl_atcam_region_12kb* }
%struct.mlxsw_sp_acl_tcam_region = type { %struct.mlxsw_sp* }
%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_acl_atcam_region_12kb = type { i32 }
%struct.mlxsw_sp_acl_atcam_lkey_id_ht_key = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mlxsw_afk = type { i32 }

@MLXSW_SP_ACL_ATCAM_LKEY_ID_BLOCK_CLEAR_START = common dso_local global i32 0, align 4
@MLXSW_SP_ACL_ATCAM_LKEY_ID_BLOCK_CLEAR_END = common dso_local global i32 0, align 4
@mlxsw_sp_acl_atcam_lkey_id_ht_params = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_sp_acl_atcam_lkey_id* (%struct.mlxsw_sp_acl_atcam_region*, i8*, i32)* @mlxsw_sp_acl_atcam_12kb_lkey_id_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_sp_acl_atcam_lkey_id* @mlxsw_sp_acl_atcam_12kb_lkey_id_get(%struct.mlxsw_sp_acl_atcam_region* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.mlxsw_sp_acl_atcam_lkey_id*, align 8
  %5 = alloca %struct.mlxsw_sp_acl_atcam_region*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlxsw_sp_acl_atcam_region_12kb*, align 8
  %9 = alloca %struct.mlxsw_sp_acl_tcam_region*, align 8
  %10 = alloca %struct.mlxsw_sp_acl_atcam_lkey_id_ht_key, align 4
  %11 = alloca %struct.mlxsw_sp*, align 8
  %12 = alloca %struct.mlxsw_afk*, align 8
  %13 = alloca %struct.mlxsw_sp_acl_atcam_lkey_id*, align 8
  store %struct.mlxsw_sp_acl_atcam_region* %0, %struct.mlxsw_sp_acl_atcam_region** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_region** %5, align 8
  %15 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, %struct.mlxsw_sp_acl_atcam_region* %14, i32 0, i32 1
  %16 = load %struct.mlxsw_sp_acl_atcam_region_12kb*, %struct.mlxsw_sp_acl_atcam_region_12kb** %15, align 8
  store %struct.mlxsw_sp_acl_atcam_region_12kb* %16, %struct.mlxsw_sp_acl_atcam_region_12kb** %8, align 8
  %17 = load %struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_region** %5, align 8
  %18 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, %struct.mlxsw_sp_acl_atcam_region* %17, i32 0, i32 0
  %19 = load %struct.mlxsw_sp_acl_tcam_region*, %struct.mlxsw_sp_acl_tcam_region** %18, align 8
  store %struct.mlxsw_sp_acl_tcam_region* %19, %struct.mlxsw_sp_acl_tcam_region** %9, align 8
  %20 = bitcast %struct.mlxsw_sp_acl_atcam_lkey_id_ht_key* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 12, i1 false)
  %21 = load %struct.mlxsw_sp_acl_tcam_region*, %struct.mlxsw_sp_acl_tcam_region** %9, align 8
  %22 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, %struct.mlxsw_sp_acl_tcam_region* %21, i32 0, i32 0
  %23 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %22, align 8
  store %struct.mlxsw_sp* %23, %struct.mlxsw_sp** %11, align 8
  %24 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %11, align 8
  %25 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.mlxsw_afk* @mlxsw_sp_acl_afk(i32 %26)
  store %struct.mlxsw_afk* %27, %struct.mlxsw_afk** %12, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_lkey_id_ht_key, %struct.mlxsw_sp_acl_atcam_lkey_id_ht_key* %10, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @memcpy(i32 %29, i8* %30, i32 4)
  %32 = load %struct.mlxsw_afk*, %struct.mlxsw_afk** %12, align 8
  %33 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_lkey_id_ht_key, %struct.mlxsw_sp_acl_atcam_lkey_id_ht_key* %10, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @MLXSW_SP_ACL_ATCAM_LKEY_ID_BLOCK_CLEAR_START, align 4
  %36 = load i32, i32* @MLXSW_SP_ACL_ATCAM_LKEY_ID_BLOCK_CLEAR_END, align 4
  %37 = call i32 @mlxsw_afk_clear(%struct.mlxsw_afk* %32, i32 %34, i32 %35, i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_lkey_id_ht_key, %struct.mlxsw_sp_acl_atcam_lkey_id_ht_key* %10, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = load %struct.mlxsw_sp_acl_atcam_region_12kb*, %struct.mlxsw_sp_acl_atcam_region_12kb** %8, align 8
  %41 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region_12kb, %struct.mlxsw_sp_acl_atcam_region_12kb* %40, i32 0, i32 0
  %42 = load i32, i32* @mlxsw_sp_acl_atcam_lkey_id_ht_params, align 4
  %43 = call %struct.mlxsw_sp_acl_atcam_lkey_id* @rhashtable_lookup_fast(i32* %41, %struct.mlxsw_sp_acl_atcam_lkey_id_ht_key* %10, i32 %42)
  store %struct.mlxsw_sp_acl_atcam_lkey_id* %43, %struct.mlxsw_sp_acl_atcam_lkey_id** %13, align 8
  %44 = load %struct.mlxsw_sp_acl_atcam_lkey_id*, %struct.mlxsw_sp_acl_atcam_lkey_id** %13, align 8
  %45 = icmp ne %struct.mlxsw_sp_acl_atcam_lkey_id* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %3
  %47 = load %struct.mlxsw_sp_acl_atcam_lkey_id*, %struct.mlxsw_sp_acl_atcam_lkey_id** %13, align 8
  %48 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_lkey_id, %struct.mlxsw_sp_acl_atcam_lkey_id* %47, i32 0, i32 0
  %49 = call i32 @refcount_inc(i32* %48)
  %50 = load %struct.mlxsw_sp_acl_atcam_lkey_id*, %struct.mlxsw_sp_acl_atcam_lkey_id** %13, align 8
  store %struct.mlxsw_sp_acl_atcam_lkey_id* %50, %struct.mlxsw_sp_acl_atcam_lkey_id** %4, align 8
  br label %54

51:                                               ; preds = %3
  %52 = load %struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_region** %5, align 8
  %53 = call %struct.mlxsw_sp_acl_atcam_lkey_id* @mlxsw_sp_acl_atcam_lkey_id_create(%struct.mlxsw_sp_acl_atcam_region* %52, %struct.mlxsw_sp_acl_atcam_lkey_id_ht_key* %10)
  store %struct.mlxsw_sp_acl_atcam_lkey_id* %53, %struct.mlxsw_sp_acl_atcam_lkey_id** %4, align 8
  br label %54

54:                                               ; preds = %51, %46
  %55 = load %struct.mlxsw_sp_acl_atcam_lkey_id*, %struct.mlxsw_sp_acl_atcam_lkey_id** %4, align 8
  ret %struct.mlxsw_sp_acl_atcam_lkey_id* %55
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.mlxsw_afk* @mlxsw_sp_acl_afk(i32) #2

declare dso_local i32 @memcpy(i32, i8*, i32) #2

declare dso_local i32 @mlxsw_afk_clear(%struct.mlxsw_afk*, i32, i32, i32) #2

declare dso_local %struct.mlxsw_sp_acl_atcam_lkey_id* @rhashtable_lookup_fast(i32*, %struct.mlxsw_sp_acl_atcam_lkey_id_ht_key*, i32) #2

declare dso_local i32 @refcount_inc(i32*) #2

declare dso_local %struct.mlxsw_sp_acl_atcam_lkey_id* @mlxsw_sp_acl_atcam_lkey_id_create(%struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_lkey_id_ht_key*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

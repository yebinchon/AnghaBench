; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_erp.c_mlxsw_sp_acl_erp_tables_sizes_query.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_erp.c_mlxsw_sp_acl_erp_tables_sizes_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_acl_erp_core = type { i32* }

@ACL_ERPT_ENTRIES_2KB = common dso_local global i32 0, align 4
@ACL_ERPT_ENTRIES_4KB = common dso_local global i32 0, align 4
@ACL_ERPT_ENTRIES_8KB = common dso_local global i32 0, align 4
@ACL_ERPT_ENTRIES_12KB = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@MLXSW_SP_ACL_ATCAM_REGION_TYPE_2KB = common dso_local global i64 0, align 8
@MLXSW_SP_ACL_ATCAM_REGION_TYPE_4KB = common dso_local global i64 0, align 8
@MLXSW_SP_ACL_ATCAM_REGION_TYPE_8KB = common dso_local global i64 0, align 8
@MLXSW_SP_ACL_ATCAM_REGION_TYPE_12KB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_erp_core*)* @mlxsw_sp_acl_erp_tables_sizes_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_acl_erp_tables_sizes_query(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_acl_erp_core* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca %struct.mlxsw_sp_acl_erp_core*, align 8
  %6 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store %struct.mlxsw_sp_acl_erp_core* %1, %struct.mlxsw_sp_acl_erp_core** %5, align 8
  %7 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %8 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @ACL_ERPT_ENTRIES_2KB, align 4
  %11 = call i32 @MLXSW_CORE_RES_VALID(i32 %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %34

13:                                               ; preds = %2
  %14 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %15 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ACL_ERPT_ENTRIES_4KB, align 4
  %18 = call i32 @MLXSW_CORE_RES_VALID(i32 %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %13
  %21 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %22 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @ACL_ERPT_ENTRIES_8KB, align 4
  %25 = call i32 @MLXSW_CORE_RES_VALID(i32 %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %20
  %28 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %29 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @ACL_ERPT_ENTRIES_12KB, align 4
  %32 = call i32 @MLXSW_CORE_RES_VALID(i32 %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %27, %20, %13, %2
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %82

37:                                               ; preds = %27
  %38 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %39 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ACL_ERPT_ENTRIES_2KB, align 4
  %42 = call i32 @MLXSW_CORE_RES_GET(i32 %40, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.mlxsw_sp_acl_erp_core*, %struct.mlxsw_sp_acl_erp_core** %5, align 8
  %45 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_core, %struct.mlxsw_sp_acl_erp_core* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* @MLXSW_SP_ACL_ATCAM_REGION_TYPE_2KB, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  store i32 %43, i32* %48, align 4
  %49 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %50 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @ACL_ERPT_ENTRIES_4KB, align 4
  %53 = call i32 @MLXSW_CORE_RES_GET(i32 %51, i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.mlxsw_sp_acl_erp_core*, %struct.mlxsw_sp_acl_erp_core** %5, align 8
  %56 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_core, %struct.mlxsw_sp_acl_erp_core* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* @MLXSW_SP_ACL_ATCAM_REGION_TYPE_4KB, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  store i32 %54, i32* %59, align 4
  %60 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %61 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @ACL_ERPT_ENTRIES_8KB, align 4
  %64 = call i32 @MLXSW_CORE_RES_GET(i32 %62, i32 %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.mlxsw_sp_acl_erp_core*, %struct.mlxsw_sp_acl_erp_core** %5, align 8
  %67 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_core, %struct.mlxsw_sp_acl_erp_core* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i64, i64* @MLXSW_SP_ACL_ATCAM_REGION_TYPE_8KB, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  store i32 %65, i32* %70, align 4
  %71 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %72 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @ACL_ERPT_ENTRIES_12KB, align 4
  %75 = call i32 @MLXSW_CORE_RES_GET(i32 %73, i32 %74)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.mlxsw_sp_acl_erp_core*, %struct.mlxsw_sp_acl_erp_core** %5, align 8
  %78 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_core, %struct.mlxsw_sp_acl_erp_core* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i64, i64* @MLXSW_SP_ACL_ATCAM_REGION_TYPE_12KB, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  store i32 %76, i32* %81, align 4
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %37, %34
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @MLXSW_CORE_RES_VALID(i32, i32) #1

declare dso_local i32 @MLXSW_CORE_RES_GET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

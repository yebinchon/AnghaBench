; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_erp.c_mlxsw_sp_acl_erp_table_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_erp.c_mlxsw_sp_acl_erp_table_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_acl_erp_core = type { i32*, i32, i32 }

@MLXSW_SP_ACL_ERP_GENALLOC_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp_acl_erp_core*, i32, i32, i64)* @mlxsw_sp_acl_erp_table_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_acl_erp_table_free(%struct.mlxsw_sp_acl_erp_core* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.mlxsw_sp_acl_erp_core*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.mlxsw_sp_acl_erp_core* %0, %struct.mlxsw_sp_acl_erp_core** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %12 = load %struct.mlxsw_sp_acl_erp_core*, %struct.mlxsw_sp_acl_erp_core** %5, align 8
  %13 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_core, %struct.mlxsw_sp_acl_erp_core* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %7, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @MLXSW_SP_ACL_ERP_GENALLOC_OFFSET, align 8
  %21 = add i64 %19, %20
  store i64 %21, i64* %9, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.mlxsw_sp_acl_erp_core*, %struct.mlxsw_sp_acl_erp_core** %5, align 8
  %24 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_core, %struct.mlxsw_sp_acl_erp_core* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = udiv i32 %22, %25
  %27 = load i32, i32* %10, align 4
  %28 = mul i32 %26, %27
  %29 = zext i32 %28 to i64
  store i64 %29, i64* %11, align 8
  %30 = load %struct.mlxsw_sp_acl_erp_core*, %struct.mlxsw_sp_acl_erp_core** %5, align 8
  %31 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_core, %struct.mlxsw_sp_acl_erp_core* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* %11, align 8
  %35 = call i32 @gen_pool_free(i32 %32, i64 %33, i64 %34)
  ret void
}

declare dso_local i32 @gen_pool_free(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

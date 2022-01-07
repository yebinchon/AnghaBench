; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_erp.c_mlxsw_sp_acl_erp_table_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_erp.c_mlxsw_sp_acl_erp_table_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_acl_erp_core = type { i32, i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@MLXSW_SP_ACL_ERP_GENALLOC_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_acl_erp_core*, i32, i32, i64*)* @mlxsw_sp_acl_erp_table_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_acl_erp_table_alloc(%struct.mlxsw_sp_acl_erp_core* %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp_acl_erp_core*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mlxsw_sp_acl_erp_core* %0, %struct.mlxsw_sp_acl_erp_core** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.mlxsw_sp_acl_erp_core*, %struct.mlxsw_sp_acl_erp_core** %6, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_core, %struct.mlxsw_sp_acl_erp_core* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = urem i32 %12, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %53

21:                                               ; preds = %4
  %22 = load %struct.mlxsw_sp_acl_erp_core*, %struct.mlxsw_sp_acl_erp_core** %6, align 8
  %23 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_core, %struct.mlxsw_sp_acl_erp_core* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.mlxsw_sp_acl_erp_core*, %struct.mlxsw_sp_acl_erp_core** %6, align 8
  %31 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_core, %struct.mlxsw_sp_acl_erp_core* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = udiv i32 %29, %32
  store i32 %33, i32* %10, align 4
  %34 = load %struct.mlxsw_sp_acl_erp_core*, %struct.mlxsw_sp_acl_erp_core** %6, align 8
  %35 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_core, %struct.mlxsw_sp_acl_erp_core* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %11, align 4
  %39 = mul i32 %37, %38
  %40 = call i64 @gen_pool_alloc(i32 %36, i32 %39)
  %41 = load i64*, i64** %9, align 8
  store i64 %40, i64* %41, align 8
  %42 = load i64*, i64** %9, align 8
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %21
  %46 = load i32, i32* @ENOBUFS, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %53

48:                                               ; preds = %21
  %49 = load i64, i64* @MLXSW_SP_ACL_ERP_GENALLOC_OFFSET, align 8
  %50 = load i64*, i64** %9, align 8
  %51 = load i64, i64* %50, align 8
  %52 = sub i64 %51, %49
  store i64 %52, i64* %50, align 8
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %48, %45, %18
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i64 @gen_pool_alloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

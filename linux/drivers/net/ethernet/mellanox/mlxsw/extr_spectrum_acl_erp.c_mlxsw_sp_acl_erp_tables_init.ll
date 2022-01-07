; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_erp.c_mlxsw_sp_acl_erp_tables_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_erp.c_mlxsw_sp_acl_erp_tables_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_acl_erp_core = type { i32, i32, i8* }

@ACL_MAX_ERPT_BANK_SIZE = common dso_local global i32 0, align 4
@ACL_MAX_ERPT_BANKS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gen_pool_best_fit = common dso_local global i32 0, align 4
@MLXSW_SP_ACL_ERP_GENALLOC_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_erp_core*)* @mlxsw_sp_acl_erp_tables_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_acl_erp_tables_init(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_acl_erp_core* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca %struct.mlxsw_sp_acl_erp_core*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store %struct.mlxsw_sp_acl_erp_core* %1, %struct.mlxsw_sp_acl_erp_core** %5, align 8
  %8 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %9 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @ACL_MAX_ERPT_BANK_SIZE, align 4
  %12 = call i32 @MLXSW_CORE_RES_VALID(i32 %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @ACL_MAX_ERPT_BANKS, align 4
  %19 = call i32 @MLXSW_CORE_RES_VALID(i32 %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %14, %2
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %101

24:                                               ; preds = %14
  %25 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %26 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @ACL_MAX_ERPT_BANK_SIZE, align 4
  %29 = call i8* @MLXSW_CORE_RES_GET(i32 %27, i32 %28)
  %30 = ptrtoint i8* %29 to i32
  store i32 %30, i32* %6, align 4
  %31 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %32 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @ACL_MAX_ERPT_BANKS, align 4
  %35 = call i8* @MLXSW_CORE_RES_GET(i32 %33, i32 %34)
  %36 = load %struct.mlxsw_sp_acl_erp_core*, %struct.mlxsw_sp_acl_erp_core** %5, align 8
  %37 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_core, %struct.mlxsw_sp_acl_erp_core* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  %38 = call i32 @gen_pool_create(i32 0, i32 -1)
  %39 = load %struct.mlxsw_sp_acl_erp_core*, %struct.mlxsw_sp_acl_erp_core** %5, align 8
  %40 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_core, %struct.mlxsw_sp_acl_erp_core* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.mlxsw_sp_acl_erp_core*, %struct.mlxsw_sp_acl_erp_core** %5, align 8
  %42 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_core, %struct.mlxsw_sp_acl_erp_core* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %24
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %101

48:                                               ; preds = %24
  %49 = load %struct.mlxsw_sp_acl_erp_core*, %struct.mlxsw_sp_acl_erp_core** %5, align 8
  %50 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_core, %struct.mlxsw_sp_acl_erp_core* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @gen_pool_best_fit, align 4
  %53 = call i32 @gen_pool_set_algo(i32 %51, i32 %52, i32* null)
  %54 = load %struct.mlxsw_sp_acl_erp_core*, %struct.mlxsw_sp_acl_erp_core** %5, align 8
  %55 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_core, %struct.mlxsw_sp_acl_erp_core* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @MLXSW_SP_ACL_ERP_GENALLOC_OFFSET, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @gen_pool_add(i32 %56, i32 %57, i32 %58, i32 -1)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %48
  br label %95

63:                                               ; preds = %48
  %64 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %65 = load %struct.mlxsw_sp_acl_erp_core*, %struct.mlxsw_sp_acl_erp_core** %5, align 8
  %66 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_core, %struct.mlxsw_sp_acl_erp_core* %65, i32 0, i32 2
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @mlxsw_sp_acl_bf_init(%struct.mlxsw_sp* %64, i8* %67)
  %69 = load %struct.mlxsw_sp_acl_erp_core*, %struct.mlxsw_sp_acl_erp_core** %5, align 8
  %70 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_core, %struct.mlxsw_sp_acl_erp_core* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.mlxsw_sp_acl_erp_core*, %struct.mlxsw_sp_acl_erp_core** %5, align 8
  %72 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_core, %struct.mlxsw_sp_acl_erp_core* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @IS_ERR(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %63
  %77 = load %struct.mlxsw_sp_acl_erp_core*, %struct.mlxsw_sp_acl_erp_core** %5, align 8
  %78 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_core, %struct.mlxsw_sp_acl_erp_core* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @PTR_ERR(i32 %79)
  store i32 %80, i32* %7, align 4
  br label %94

81:                                               ; preds = %63
  %82 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %83 = load %struct.mlxsw_sp_acl_erp_core*, %struct.mlxsw_sp_acl_erp_core** %5, align 8
  %84 = call i32 @mlxsw_sp_acl_erp_tables_sizes_query(%struct.mlxsw_sp* %82, %struct.mlxsw_sp_acl_erp_core* %83)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %89

88:                                               ; preds = %81
  store i32 0, i32* %3, align 4
  br label %101

89:                                               ; preds = %87
  %90 = load %struct.mlxsw_sp_acl_erp_core*, %struct.mlxsw_sp_acl_erp_core** %5, align 8
  %91 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_core, %struct.mlxsw_sp_acl_erp_core* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @mlxsw_sp_acl_bf_fini(i32 %92)
  br label %94

94:                                               ; preds = %89, %76
  br label %95

95:                                               ; preds = %94, %62
  %96 = load %struct.mlxsw_sp_acl_erp_core*, %struct.mlxsw_sp_acl_erp_core** %5, align 8
  %97 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_core, %struct.mlxsw_sp_acl_erp_core* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @gen_pool_destroy(i32 %98)
  %100 = load i32, i32* %7, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %95, %88, %45, %21
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @MLXSW_CORE_RES_VALID(i32, i32) #1

declare dso_local i8* @MLXSW_CORE_RES_GET(i32, i32) #1

declare dso_local i32 @gen_pool_create(i32, i32) #1

declare dso_local i32 @gen_pool_set_algo(i32, i32, i32*) #1

declare dso_local i32 @gen_pool_add(i32, i32, i32, i32) #1

declare dso_local i32 @mlxsw_sp_acl_bf_init(%struct.mlxsw_sp*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @mlxsw_sp_acl_erp_tables_sizes_query(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_erp_core*) #1

declare dso_local i32 @mlxsw_sp_acl_bf_fini(i32) #1

declare dso_local i32 @gen_pool_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

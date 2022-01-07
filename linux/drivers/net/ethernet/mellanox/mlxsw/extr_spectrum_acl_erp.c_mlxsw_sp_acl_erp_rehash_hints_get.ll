; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_erp.c_mlxsw_sp_acl_erp_rehash_hints_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_erp.c_mlxsw_sp_acl_erp_rehash_hints_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_acl_atcam_region = type { %struct.TYPE_4__*, %struct.mlxsw_sp_acl_erp_table* }
%struct.TYPE_4__ = type { %struct.mlxsw_sp* }
%struct.mlxsw_sp = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mlxsw_sp_acl_erp_table = type { i32, i32 }
%struct.objagg_hints = type opaque

@OBJAGG_OPT_ALGO_SIMPLE_GREEDY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to create ERP hints\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mlxsw_sp_acl_erp_rehash_hints_get(%struct.mlxsw_sp_acl_atcam_region* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mlxsw_sp_acl_atcam_region*, align 8
  %4 = alloca %struct.mlxsw_sp_acl_erp_table*, align 8
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca %struct.objagg_hints*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlxsw_sp_acl_atcam_region* %0, %struct.mlxsw_sp_acl_atcam_region** %3, align 8
  %9 = load %struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_region** %3, align 8
  %10 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, %struct.mlxsw_sp_acl_atcam_region* %9, i32 0, i32 1
  %11 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %10, align 8
  store %struct.mlxsw_sp_acl_erp_table* %11, %struct.mlxsw_sp_acl_erp_table** %4, align 8
  %12 = load %struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_region** %3, align 8
  %13 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, %struct.mlxsw_sp_acl_atcam_region* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %15, align 8
  store %struct.mlxsw_sp* %16, %struct.mlxsw_sp** %5, align 8
  %17 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %4, align 8
  %18 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, %struct.mlxsw_sp_acl_erp_table* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %4, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, %struct.mlxsw_sp_acl_erp_table* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @OBJAGG_OPT_ALGO_SIMPLE_GREEDY, align 4
  %24 = call i8* @objagg_hints_get(i32 %22, i32 %23)
  %25 = bitcast i8* %24 to %struct.objagg_hints*
  store %struct.objagg_hints* %25, %struct.objagg_hints** %6, align 8
  %26 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %4, align 8
  %27 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, %struct.mlxsw_sp_acl_erp_table* %26, i32 0, i32 0
  %28 = call i32 @mutex_unlock(i32* %27)
  %29 = load %struct.objagg_hints*, %struct.objagg_hints** %6, align 8
  %30 = bitcast %struct.objagg_hints* %29 to i8*
  %31 = call i64 @IS_ERR(i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %1
  %34 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %35 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_err_ratelimited(i32 %38, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.objagg_hints*, %struct.objagg_hints** %6, align 8
  %41 = bitcast %struct.objagg_hints* %40 to i8*
  %42 = call i8* @ERR_CAST(i8* %41)
  store i8* %42, i8** %2, align 8
  br label %67

43:                                               ; preds = %1
  %44 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %45 = load %struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_region** %3, align 8
  %46 = load %struct.objagg_hints*, %struct.objagg_hints** %6, align 8
  %47 = bitcast %struct.objagg_hints* %46 to i8*
  %48 = call i32 @mlxsw_sp_acl_erp_hints_check(%struct.mlxsw_sp* %44, %struct.mlxsw_sp_acl_atcam_region* %45, i8* %47, i32* %7)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %61

52:                                               ; preds = %43
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* @EAGAIN, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %8, align 4
  br label %61

58:                                               ; preds = %52
  %59 = load %struct.objagg_hints*, %struct.objagg_hints** %6, align 8
  %60 = bitcast %struct.objagg_hints* %59 to i8*
  store i8* %60, i8** %2, align 8
  br label %67

61:                                               ; preds = %55, %51
  %62 = load %struct.objagg_hints*, %struct.objagg_hints** %6, align 8
  %63 = bitcast %struct.objagg_hints* %62 to i8*
  %64 = call i32 @objagg_hints_put(i8* %63)
  %65 = load i32, i32* %8, align 4
  %66 = call i8* @ERR_PTR(i32 %65)
  store i8* %66, i8** %2, align 8
  br label %67

67:                                               ; preds = %61, %58, %33
  %68 = load i8*, i8** %2, align 8
  ret i8* %68
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @objagg_hints_get(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err_ratelimited(i32, i8*) #1

declare dso_local i8* @ERR_CAST(i8*) #1

declare dso_local i32 @mlxsw_sp_acl_erp_hints_check(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_atcam_region*, i8*, i32*) #1

declare dso_local i32 @objagg_hints_put(i8*) #1

declare dso_local i8* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

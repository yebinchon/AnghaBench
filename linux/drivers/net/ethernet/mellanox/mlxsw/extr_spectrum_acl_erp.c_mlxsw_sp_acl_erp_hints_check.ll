; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_erp.c_mlxsw_sp_acl_erp_hints_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_erp.c_mlxsw_sp_acl_erp_hints_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mlxsw_sp_acl_atcam_region = type { %struct.mlxsw_sp_acl_erp_table* }
%struct.mlxsw_sp_acl_erp_table = type { i32, i32 }
%struct.objagg_hints = type { i32 }
%struct.objagg_stats = type { i64 }

@.str = private unnamed_addr constant [25 x i8] c"Failed to get ERP stats\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to get ERP hints stats\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_atcam_region*, %struct.objagg_hints*, i32*)* @mlxsw_sp_acl_erp_hints_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_acl_erp_hints_check(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_acl_atcam_region* %1, %struct.objagg_hints* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp*, align 8
  %7 = alloca %struct.mlxsw_sp_acl_atcam_region*, align 8
  %8 = alloca %struct.objagg_hints*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.mlxsw_sp_acl_erp_table*, align 8
  %11 = alloca %struct.objagg_stats*, align 8
  %12 = alloca %struct.objagg_stats*, align 8
  %13 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %6, align 8
  store %struct.mlxsw_sp_acl_atcam_region* %1, %struct.mlxsw_sp_acl_atcam_region** %7, align 8
  store %struct.objagg_hints* %2, %struct.objagg_hints** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_region** %7, align 8
  %15 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, %struct.mlxsw_sp_acl_atcam_region* %14, i32 0, i32 0
  %16 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %15, align 8
  store %struct.mlxsw_sp_acl_erp_table* %16, %struct.mlxsw_sp_acl_erp_table** %10, align 8
  %17 = load i32*, i32** %9, align 8
  store i32 0, i32* %17, align 4
  %18 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %10, align 8
  %19 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, %struct.mlxsw_sp_acl_erp_table* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %10, align 8
  %22 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, %struct.mlxsw_sp_acl_erp_table* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.objagg_stats* @objagg_stats_get(i32 %23)
  store %struct.objagg_stats* %24, %struct.objagg_stats** %11, align 8
  %25 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %10, align 8
  %26 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, %struct.mlxsw_sp_acl_erp_table* %25, i32 0, i32 0
  %27 = call i32 @mutex_unlock(i32* %26)
  %28 = load %struct.objagg_stats*, %struct.objagg_stats** %11, align 8
  %29 = call i64 @IS_ERR(%struct.objagg_stats* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %4
  %32 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %33 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dev_err_ratelimited(i32 %36, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.objagg_stats*, %struct.objagg_stats** %11, align 8
  %39 = call i32 @PTR_ERR(%struct.objagg_stats* %38)
  store i32 %39, i32* %5, align 4
  br label %72

40:                                               ; preds = %4
  %41 = load %struct.objagg_hints*, %struct.objagg_hints** %8, align 8
  %42 = call %struct.objagg_stats* @objagg_hints_stats_get(%struct.objagg_hints* %41)
  store %struct.objagg_stats* %42, %struct.objagg_stats** %12, align 8
  %43 = load %struct.objagg_stats*, %struct.objagg_stats** %12, align 8
  %44 = call i64 @IS_ERR(%struct.objagg_stats* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %40
  %47 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %48 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @dev_err_ratelimited(i32 %51, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.objagg_stats*, %struct.objagg_stats** %12, align 8
  %54 = call i32 @PTR_ERR(%struct.objagg_stats* %53)
  store i32 %54, i32* %13, align 4
  br label %68

55:                                               ; preds = %40
  %56 = load %struct.objagg_stats*, %struct.objagg_stats** %12, align 8
  %57 = getelementptr inbounds %struct.objagg_stats, %struct.objagg_stats* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.objagg_stats*, %struct.objagg_stats** %11, align 8
  %60 = getelementptr inbounds %struct.objagg_stats, %struct.objagg_stats* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp slt i64 %58, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = load i32*, i32** %9, align 8
  store i32 1, i32* %64, align 4
  br label %65

65:                                               ; preds = %63, %55
  store i32 0, i32* %13, align 4
  %66 = load %struct.objagg_stats*, %struct.objagg_stats** %12, align 8
  %67 = call i32 @objagg_stats_put(%struct.objagg_stats* %66)
  br label %68

68:                                               ; preds = %65, %46
  %69 = load %struct.objagg_stats*, %struct.objagg_stats** %11, align 8
  %70 = call i32 @objagg_stats_put(%struct.objagg_stats* %69)
  %71 = load i32, i32* %13, align 4
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %68, %31
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.objagg_stats* @objagg_stats_get(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @IS_ERR(%struct.objagg_stats*) #1

declare dso_local i32 @dev_err_ratelimited(i32, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.objagg_stats*) #1

declare dso_local %struct.objagg_stats* @objagg_hints_stats_get(%struct.objagg_hints*) #1

declare dso_local i32 @objagg_stats_put(%struct.objagg_stats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

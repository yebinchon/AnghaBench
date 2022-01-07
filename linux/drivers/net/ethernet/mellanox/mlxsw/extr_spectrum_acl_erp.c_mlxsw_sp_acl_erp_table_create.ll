; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_erp.c_mlxsw_sp_acl_erp_table_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_erp.c_mlxsw_sp_acl_erp_table_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_acl_erp_table = type { i32, %struct.mlxsw_sp_acl_atcam_region*, i32, i32*, i32, i32 }
%struct.mlxsw_sp_acl_atcam_region = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.objagg_hints = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mlxsw_sp_acl_erp_objagg_ops = common dso_local global i32 0, align 4
@erp_no_mask_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_sp_acl_erp_table* (%struct.mlxsw_sp_acl_atcam_region*, %struct.objagg_hints*)* @mlxsw_sp_acl_erp_table_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_sp_acl_erp_table* @mlxsw_sp_acl_erp_table_create(%struct.mlxsw_sp_acl_atcam_region* %0, %struct.objagg_hints* %1) #0 {
  %3 = alloca %struct.mlxsw_sp_acl_erp_table*, align 8
  %4 = alloca %struct.mlxsw_sp_acl_atcam_region*, align 8
  %5 = alloca %struct.objagg_hints*, align 8
  %6 = alloca %struct.mlxsw_sp_acl_erp_table*, align 8
  %7 = alloca i32, align 4
  store %struct.mlxsw_sp_acl_atcam_region* %0, %struct.mlxsw_sp_acl_atcam_region** %4, align 8
  store %struct.objagg_hints* %1, %struct.objagg_hints** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.mlxsw_sp_acl_erp_table* @kzalloc(i32 40, i32 %8)
  store %struct.mlxsw_sp_acl_erp_table* %9, %struct.mlxsw_sp_acl_erp_table** %6, align 8
  %10 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %6, align 8
  %11 = icmp ne %struct.mlxsw_sp_acl_erp_table* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.mlxsw_sp_acl_erp_table* @ERR_PTR(i32 %14)
  store %struct.mlxsw_sp_acl_erp_table* %15, %struct.mlxsw_sp_acl_erp_table** %3, align 8
  br label %57

16:                                               ; preds = %2
  %17 = load %struct.objagg_hints*, %struct.objagg_hints** %5, align 8
  %18 = load %struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_region** %4, align 8
  %19 = call i32 @objagg_create(i32* @mlxsw_sp_acl_erp_objagg_ops, %struct.objagg_hints* %17, %struct.mlxsw_sp_acl_atcam_region* %18)
  %20 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %6, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, %struct.mlxsw_sp_acl_erp_table* %20, i32 0, i32 5
  store i32 %19, i32* %21, align 4
  %22 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %6, align 8
  %23 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, %struct.mlxsw_sp_acl_erp_table* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @IS_ERR(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %16
  %28 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %6, align 8
  %29 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, %struct.mlxsw_sp_acl_erp_table* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @PTR_ERR(i32 %30)
  store i32 %31, i32* %7, align 4
  br label %52

32:                                               ; preds = %16
  %33 = load %struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_region** %4, align 8
  %34 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, %struct.mlxsw_sp_acl_atcam_region* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %6, align 8
  %39 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, %struct.mlxsw_sp_acl_erp_table* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 8
  %40 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %6, align 8
  %41 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, %struct.mlxsw_sp_acl_erp_table* %40, i32 0, i32 3
  store i32* @erp_no_mask_ops, i32** %41, align 8
  %42 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %6, align 8
  %43 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, %struct.mlxsw_sp_acl_erp_table* %42, i32 0, i32 2
  %44 = call i32 @INIT_LIST_HEAD(i32* %43)
  %45 = load %struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_region** %4, align 8
  %46 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %6, align 8
  %47 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, %struct.mlxsw_sp_acl_erp_table* %46, i32 0, i32 1
  store %struct.mlxsw_sp_acl_atcam_region* %45, %struct.mlxsw_sp_acl_atcam_region** %47, align 8
  %48 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %6, align 8
  %49 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, %struct.mlxsw_sp_acl_erp_table* %48, i32 0, i32 0
  %50 = call i32 @mutex_init(i32* %49)
  %51 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %6, align 8
  store %struct.mlxsw_sp_acl_erp_table* %51, %struct.mlxsw_sp_acl_erp_table** %3, align 8
  br label %57

52:                                               ; preds = %27
  %53 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %6, align 8
  %54 = call i32 @kfree(%struct.mlxsw_sp_acl_erp_table* %53)
  %55 = load i32, i32* %7, align 4
  %56 = call %struct.mlxsw_sp_acl_erp_table* @ERR_PTR(i32 %55)
  store %struct.mlxsw_sp_acl_erp_table* %56, %struct.mlxsw_sp_acl_erp_table** %3, align 8
  br label %57

57:                                               ; preds = %52, %32, %12
  %58 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %3, align 8
  ret %struct.mlxsw_sp_acl_erp_table* %58
}

declare dso_local %struct.mlxsw_sp_acl_erp_table* @kzalloc(i32, i32) #1

declare dso_local %struct.mlxsw_sp_acl_erp_table* @ERR_PTR(i32) #1

declare dso_local i32 @objagg_create(i32*, %struct.objagg_hints*, %struct.mlxsw_sp_acl_atcam_region*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @kfree(%struct.mlxsw_sp_acl_erp_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

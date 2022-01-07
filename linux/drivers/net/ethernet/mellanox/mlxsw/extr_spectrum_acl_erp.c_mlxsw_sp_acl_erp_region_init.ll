; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_erp.c_mlxsw_sp_acl_erp_region_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_erp.c_mlxsw_sp_acl_erp_region_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_acl_atcam_region = type { %struct.mlxsw_sp_acl_erp_table* }
%struct.mlxsw_sp_acl_erp_table = type { i32 }
%struct.objagg_hints = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp_acl_erp_region_init(%struct.mlxsw_sp_acl_atcam_region* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_sp_acl_atcam_region*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mlxsw_sp_acl_erp_table*, align 8
  %7 = alloca %struct.objagg_hints*, align 8
  %8 = alloca i32, align 4
  store %struct.mlxsw_sp_acl_atcam_region* %0, %struct.mlxsw_sp_acl_atcam_region** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.objagg_hints*
  store %struct.objagg_hints* %10, %struct.objagg_hints** %7, align 8
  %11 = load %struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_region** %4, align 8
  %12 = load %struct.objagg_hints*, %struct.objagg_hints** %7, align 8
  %13 = call %struct.mlxsw_sp_acl_erp_table* @mlxsw_sp_acl_erp_table_create(%struct.mlxsw_sp_acl_atcam_region* %11, %struct.objagg_hints* %12)
  store %struct.mlxsw_sp_acl_erp_table* %13, %struct.mlxsw_sp_acl_erp_table** %6, align 8
  %14 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %6, align 8
  %15 = call i64 @IS_ERR(%struct.mlxsw_sp_acl_erp_table* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %6, align 8
  %19 = call i32 @PTR_ERR(%struct.mlxsw_sp_acl_erp_table* %18)
  store i32 %19, i32* %3, align 4
  br label %41

20:                                               ; preds = %2
  %21 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %6, align 8
  %22 = load %struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_region** %4, align 8
  %23 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, %struct.mlxsw_sp_acl_atcam_region* %22, i32 0, i32 0
  store %struct.mlxsw_sp_acl_erp_table* %21, %struct.mlxsw_sp_acl_erp_table** %23, align 8
  %24 = load %struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_region** %4, align 8
  %25 = call i32 @mlxsw_sp_acl_erp_master_mask_init(%struct.mlxsw_sp_acl_atcam_region* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %37

29:                                               ; preds = %20
  %30 = load %struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_region** %4, align 8
  %31 = call i32 @mlxsw_sp_acl_erp_region_param_init(%struct.mlxsw_sp_acl_atcam_region* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %36

35:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %41

36:                                               ; preds = %34
  br label %37

37:                                               ; preds = %36, %28
  %38 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %6, align 8
  %39 = call i32 @mlxsw_sp_acl_erp_table_destroy(%struct.mlxsw_sp_acl_erp_table* %38)
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %37, %35, %17
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.mlxsw_sp_acl_erp_table* @mlxsw_sp_acl_erp_table_create(%struct.mlxsw_sp_acl_atcam_region*, %struct.objagg_hints*) #1

declare dso_local i64 @IS_ERR(%struct.mlxsw_sp_acl_erp_table*) #1

declare dso_local i32 @PTR_ERR(%struct.mlxsw_sp_acl_erp_table*) #1

declare dso_local i32 @mlxsw_sp_acl_erp_master_mask_init(%struct.mlxsw_sp_acl_atcam_region*) #1

declare dso_local i32 @mlxsw_sp_acl_erp_region_param_init(%struct.mlxsw_sp_acl_atcam_region*) #1

declare dso_local i32 @mlxsw_sp_acl_erp_table_destroy(%struct.mlxsw_sp_acl_erp_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_erp.c_mlxsw_sp_acl_erp_second_mask_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_erp.c_mlxsw_sp_acl_erp_second_mask_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_acl_erp = type { i32 }
%struct.mlxsw_sp_acl_erp_table = type { i32* }
%struct.mlxsw_sp_acl_erp_key = type { i64 }

@erp_two_masks_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_sp_acl_erp* (%struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_key*)* @mlxsw_sp_acl_erp_second_mask_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_sp_acl_erp* @mlxsw_sp_acl_erp_second_mask_create(%struct.mlxsw_sp_acl_erp_table* %0, %struct.mlxsw_sp_acl_erp_key* %1) #0 {
  %3 = alloca %struct.mlxsw_sp_acl_erp*, align 8
  %4 = alloca %struct.mlxsw_sp_acl_erp_table*, align 8
  %5 = alloca %struct.mlxsw_sp_acl_erp_key*, align 8
  %6 = alloca %struct.mlxsw_sp_acl_erp*, align 8
  %7 = alloca i32, align 4
  store %struct.mlxsw_sp_acl_erp_table* %0, %struct.mlxsw_sp_acl_erp_table** %4, align 8
  store %struct.mlxsw_sp_acl_erp_key* %1, %struct.mlxsw_sp_acl_erp_key** %5, align 8
  %8 = load %struct.mlxsw_sp_acl_erp_key*, %struct.mlxsw_sp_acl_erp_key** %5, align 8
  %9 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_key, %struct.mlxsw_sp_acl_erp_key* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %4, align 8
  %14 = load %struct.mlxsw_sp_acl_erp_key*, %struct.mlxsw_sp_acl_erp_key** %5, align 8
  %15 = call %struct.mlxsw_sp_acl_erp* @mlxsw_sp_acl_erp_ctcam_mask_create(%struct.mlxsw_sp_acl_erp_table* %13, %struct.mlxsw_sp_acl_erp_key* %14)
  store %struct.mlxsw_sp_acl_erp* %15, %struct.mlxsw_sp_acl_erp** %3, align 8
  br label %77

16:                                               ; preds = %2
  %17 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %4, align 8
  %18 = call i32 @mlxsw_sp_acl_erp_region_table_trans(%struct.mlxsw_sp_acl_erp_table* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* %7, align 4
  %23 = call %struct.mlxsw_sp_acl_erp* @ERR_PTR(i32 %22)
  store %struct.mlxsw_sp_acl_erp* %23, %struct.mlxsw_sp_acl_erp** %3, align 8
  br label %77

24:                                               ; preds = %16
  %25 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %4, align 8
  %26 = load %struct.mlxsw_sp_acl_erp_key*, %struct.mlxsw_sp_acl_erp_key** %5, align 8
  %27 = call %struct.mlxsw_sp_acl_erp* @mlxsw_sp_acl_erp_generic_create(%struct.mlxsw_sp_acl_erp_table* %25, %struct.mlxsw_sp_acl_erp_key* %26)
  store %struct.mlxsw_sp_acl_erp* %27, %struct.mlxsw_sp_acl_erp** %6, align 8
  %28 = load %struct.mlxsw_sp_acl_erp*, %struct.mlxsw_sp_acl_erp** %6, align 8
  %29 = call i64 @IS_ERR(%struct.mlxsw_sp_acl_erp* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load %struct.mlxsw_sp_acl_erp*, %struct.mlxsw_sp_acl_erp** %6, align 8
  %33 = call i32 @PTR_ERR(%struct.mlxsw_sp_acl_erp* %32)
  store i32 %33, i32* %7, align 4
  br label %72

34:                                               ; preds = %24
  %35 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %4, align 8
  %36 = load %struct.mlxsw_sp_acl_erp*, %struct.mlxsw_sp_acl_erp** %6, align 8
  %37 = getelementptr inbounds %struct.mlxsw_sp_acl_erp, %struct.mlxsw_sp_acl_erp* %36, i32 0, i32 0
  %38 = call i32 @mlxsw_sp_acl_erp_index_get(%struct.mlxsw_sp_acl_erp_table* %35, i32* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %69

42:                                               ; preds = %34
  %43 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %4, align 8
  %44 = load %struct.mlxsw_sp_acl_erp*, %struct.mlxsw_sp_acl_erp** %6, align 8
  %45 = call i32 @mlxsw_sp_acl_erp_table_erp_add(%struct.mlxsw_sp_acl_erp_table* %43, %struct.mlxsw_sp_acl_erp* %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %63

49:                                               ; preds = %42
  %50 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %4, align 8
  %51 = load %struct.mlxsw_sp_acl_erp*, %struct.mlxsw_sp_acl_erp** %6, align 8
  %52 = call i32 @mlxsw_sp_acl_erp_region_erp_add(%struct.mlxsw_sp_acl_erp_table* %50, %struct.mlxsw_sp_acl_erp* %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %60

56:                                               ; preds = %49
  %57 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %4, align 8
  %58 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, %struct.mlxsw_sp_acl_erp_table* %57, i32 0, i32 0
  store i32* @erp_two_masks_ops, i32** %58, align 8
  %59 = load %struct.mlxsw_sp_acl_erp*, %struct.mlxsw_sp_acl_erp** %6, align 8
  store %struct.mlxsw_sp_acl_erp* %59, %struct.mlxsw_sp_acl_erp** %3, align 8
  br label %77

60:                                               ; preds = %55
  %61 = load %struct.mlxsw_sp_acl_erp*, %struct.mlxsw_sp_acl_erp** %6, align 8
  %62 = call i32 @mlxsw_sp_acl_erp_table_erp_del(%struct.mlxsw_sp_acl_erp* %61)
  br label %63

63:                                               ; preds = %60, %48
  %64 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %4, align 8
  %65 = load %struct.mlxsw_sp_acl_erp*, %struct.mlxsw_sp_acl_erp** %6, align 8
  %66 = getelementptr inbounds %struct.mlxsw_sp_acl_erp, %struct.mlxsw_sp_acl_erp* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @mlxsw_sp_acl_erp_index_put(%struct.mlxsw_sp_acl_erp_table* %64, i32 %67)
  br label %69

69:                                               ; preds = %63, %41
  %70 = load %struct.mlxsw_sp_acl_erp*, %struct.mlxsw_sp_acl_erp** %6, align 8
  %71 = call i32 @mlxsw_sp_acl_erp_generic_destroy(%struct.mlxsw_sp_acl_erp* %70)
  br label %72

72:                                               ; preds = %69, %31
  %73 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %4, align 8
  %74 = call i32 @mlxsw_sp_acl_erp_region_master_mask_trans(%struct.mlxsw_sp_acl_erp_table* %73)
  %75 = load i32, i32* %7, align 4
  %76 = call %struct.mlxsw_sp_acl_erp* @ERR_PTR(i32 %75)
  store %struct.mlxsw_sp_acl_erp* %76, %struct.mlxsw_sp_acl_erp** %3, align 8
  br label %77

77:                                               ; preds = %72, %56, %21, %12
  %78 = load %struct.mlxsw_sp_acl_erp*, %struct.mlxsw_sp_acl_erp** %3, align 8
  ret %struct.mlxsw_sp_acl_erp* %78
}

declare dso_local %struct.mlxsw_sp_acl_erp* @mlxsw_sp_acl_erp_ctcam_mask_create(%struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_key*) #1

declare dso_local i32 @mlxsw_sp_acl_erp_region_table_trans(%struct.mlxsw_sp_acl_erp_table*) #1

declare dso_local %struct.mlxsw_sp_acl_erp* @ERR_PTR(i32) #1

declare dso_local %struct.mlxsw_sp_acl_erp* @mlxsw_sp_acl_erp_generic_create(%struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_key*) #1

declare dso_local i64 @IS_ERR(%struct.mlxsw_sp_acl_erp*) #1

declare dso_local i32 @PTR_ERR(%struct.mlxsw_sp_acl_erp*) #1

declare dso_local i32 @mlxsw_sp_acl_erp_index_get(%struct.mlxsw_sp_acl_erp_table*, i32*) #1

declare dso_local i32 @mlxsw_sp_acl_erp_table_erp_add(%struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp*) #1

declare dso_local i32 @mlxsw_sp_acl_erp_region_erp_add(%struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp*) #1

declare dso_local i32 @mlxsw_sp_acl_erp_table_erp_del(%struct.mlxsw_sp_acl_erp*) #1

declare dso_local i32 @mlxsw_sp_acl_erp_index_put(%struct.mlxsw_sp_acl_erp_table*, i32) #1

declare dso_local i32 @mlxsw_sp_acl_erp_generic_destroy(%struct.mlxsw_sp_acl_erp*) #1

declare dso_local i32 @mlxsw_sp_acl_erp_region_master_mask_trans(%struct.mlxsw_sp_acl_erp_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

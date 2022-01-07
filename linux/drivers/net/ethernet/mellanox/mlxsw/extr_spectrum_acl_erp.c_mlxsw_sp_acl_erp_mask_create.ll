; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_erp.c_mlxsw_sp_acl_erp_mask_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_erp.c_mlxsw_sp_acl_erp_mask_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_acl_erp = type { i32 }
%struct.mlxsw_sp_acl_erp_table = type { i32* }
%struct.mlxsw_sp_acl_erp_key = type { i64 }

@erp_multiple_masks_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_sp_acl_erp* (%struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_key*)* @mlxsw_sp_acl_erp_mask_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_sp_acl_erp* @mlxsw_sp_acl_erp_mask_create(%struct.mlxsw_sp_acl_erp_table* %0, %struct.mlxsw_sp_acl_erp_key* %1) #0 {
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
  br label %73

16:                                               ; preds = %2
  %17 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %4, align 8
  %18 = call i32 @mlxsw_sp_acl_erp_table_expand(%struct.mlxsw_sp_acl_erp_table* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* %7, align 4
  %23 = call %struct.mlxsw_sp_acl_erp* @ERR_PTR(i32 %22)
  store %struct.mlxsw_sp_acl_erp* %23, %struct.mlxsw_sp_acl_erp** %3, align 8
  br label %73

24:                                               ; preds = %16
  %25 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %4, align 8
  %26 = load %struct.mlxsw_sp_acl_erp_key*, %struct.mlxsw_sp_acl_erp_key** %5, align 8
  %27 = call %struct.mlxsw_sp_acl_erp* @mlxsw_sp_acl_erp_generic_create(%struct.mlxsw_sp_acl_erp_table* %25, %struct.mlxsw_sp_acl_erp_key* %26)
  store %struct.mlxsw_sp_acl_erp* %27, %struct.mlxsw_sp_acl_erp** %6, align 8
  %28 = load %struct.mlxsw_sp_acl_erp*, %struct.mlxsw_sp_acl_erp** %6, align 8
  %29 = call i64 @IS_ERR(%struct.mlxsw_sp_acl_erp* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load %struct.mlxsw_sp_acl_erp*, %struct.mlxsw_sp_acl_erp** %6, align 8
  store %struct.mlxsw_sp_acl_erp* %32, %struct.mlxsw_sp_acl_erp** %3, align 8
  br label %73

33:                                               ; preds = %24
  %34 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %4, align 8
  %35 = load %struct.mlxsw_sp_acl_erp*, %struct.mlxsw_sp_acl_erp** %6, align 8
  %36 = getelementptr inbounds %struct.mlxsw_sp_acl_erp, %struct.mlxsw_sp_acl_erp* %35, i32 0, i32 0
  %37 = call i32 @mlxsw_sp_acl_erp_index_get(%struct.mlxsw_sp_acl_erp_table* %34, i32* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %68

41:                                               ; preds = %33
  %42 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %4, align 8
  %43 = load %struct.mlxsw_sp_acl_erp*, %struct.mlxsw_sp_acl_erp** %6, align 8
  %44 = call i32 @mlxsw_sp_acl_erp_table_erp_add(%struct.mlxsw_sp_acl_erp_table* %42, %struct.mlxsw_sp_acl_erp* %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %62

48:                                               ; preds = %41
  %49 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %4, align 8
  %50 = load %struct.mlxsw_sp_acl_erp*, %struct.mlxsw_sp_acl_erp** %6, align 8
  %51 = call i32 @mlxsw_sp_acl_erp_region_erp_add(%struct.mlxsw_sp_acl_erp_table* %49, %struct.mlxsw_sp_acl_erp* %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %59

55:                                               ; preds = %48
  %56 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %4, align 8
  %57 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, %struct.mlxsw_sp_acl_erp_table* %56, i32 0, i32 0
  store i32* @erp_multiple_masks_ops, i32** %57, align 8
  %58 = load %struct.mlxsw_sp_acl_erp*, %struct.mlxsw_sp_acl_erp** %6, align 8
  store %struct.mlxsw_sp_acl_erp* %58, %struct.mlxsw_sp_acl_erp** %3, align 8
  br label %73

59:                                               ; preds = %54
  %60 = load %struct.mlxsw_sp_acl_erp*, %struct.mlxsw_sp_acl_erp** %6, align 8
  %61 = call i32 @mlxsw_sp_acl_erp_table_erp_del(%struct.mlxsw_sp_acl_erp* %60)
  br label %62

62:                                               ; preds = %59, %47
  %63 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %4, align 8
  %64 = load %struct.mlxsw_sp_acl_erp*, %struct.mlxsw_sp_acl_erp** %6, align 8
  %65 = getelementptr inbounds %struct.mlxsw_sp_acl_erp, %struct.mlxsw_sp_acl_erp* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @mlxsw_sp_acl_erp_index_put(%struct.mlxsw_sp_acl_erp_table* %63, i32 %66)
  br label %68

68:                                               ; preds = %62, %40
  %69 = load %struct.mlxsw_sp_acl_erp*, %struct.mlxsw_sp_acl_erp** %6, align 8
  %70 = call i32 @mlxsw_sp_acl_erp_generic_destroy(%struct.mlxsw_sp_acl_erp* %69)
  %71 = load i32, i32* %7, align 4
  %72 = call %struct.mlxsw_sp_acl_erp* @ERR_PTR(i32 %71)
  store %struct.mlxsw_sp_acl_erp* %72, %struct.mlxsw_sp_acl_erp** %3, align 8
  br label %73

73:                                               ; preds = %68, %55, %31, %21, %12
  %74 = load %struct.mlxsw_sp_acl_erp*, %struct.mlxsw_sp_acl_erp** %3, align 8
  ret %struct.mlxsw_sp_acl_erp* %74
}

declare dso_local %struct.mlxsw_sp_acl_erp* @mlxsw_sp_acl_erp_ctcam_mask_create(%struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_key*) #1

declare dso_local i32 @mlxsw_sp_acl_erp_table_expand(%struct.mlxsw_sp_acl_erp_table*) #1

declare dso_local %struct.mlxsw_sp_acl_erp* @ERR_PTR(i32) #1

declare dso_local %struct.mlxsw_sp_acl_erp* @mlxsw_sp_acl_erp_generic_create(%struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_key*) #1

declare dso_local i64 @IS_ERR(%struct.mlxsw_sp_acl_erp*) #1

declare dso_local i32 @mlxsw_sp_acl_erp_index_get(%struct.mlxsw_sp_acl_erp_table*, i32*) #1

declare dso_local i32 @mlxsw_sp_acl_erp_table_erp_add(%struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp*) #1

declare dso_local i32 @mlxsw_sp_acl_erp_region_erp_add(%struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp*) #1

declare dso_local i32 @mlxsw_sp_acl_erp_table_erp_del(%struct.mlxsw_sp_acl_erp*) #1

declare dso_local i32 @mlxsw_sp_acl_erp_index_put(%struct.mlxsw_sp_acl_erp_table*, i32) #1

declare dso_local i32 @mlxsw_sp_acl_erp_generic_destroy(%struct.mlxsw_sp_acl_erp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

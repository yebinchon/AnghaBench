; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_erp.c_mlxsw_sp_acl_erp_ctcam_mask_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_erp.c_mlxsw_sp_acl_erp_ctcam_mask_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_acl_erp = type { i32, %struct.mlxsw_sp_acl_erp_table*, i32 }
%struct.mlxsw_sp_acl_erp_table = type { i32 }
%struct.mlxsw_sp_acl_erp_key = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLXSW_SP_ACL_TCAM_MASK_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_sp_acl_erp* (%struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_key*)* @mlxsw_sp_acl_erp_ctcam_mask_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_sp_acl_erp* @mlxsw_sp_acl_erp_ctcam_mask_create(%struct.mlxsw_sp_acl_erp_table* %0, %struct.mlxsw_sp_acl_erp_key* %1) #0 {
  %3 = alloca %struct.mlxsw_sp_acl_erp*, align 8
  %4 = alloca %struct.mlxsw_sp_acl_erp_table*, align 8
  %5 = alloca %struct.mlxsw_sp_acl_erp_key*, align 8
  %6 = alloca %struct.mlxsw_sp_acl_erp*, align 8
  %7 = alloca i32, align 4
  store %struct.mlxsw_sp_acl_erp_table* %0, %struct.mlxsw_sp_acl_erp_table** %4, align 8
  store %struct.mlxsw_sp_acl_erp_key* %1, %struct.mlxsw_sp_acl_erp_key** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.mlxsw_sp_acl_erp* @kzalloc(i32 24, i32 %8)
  store %struct.mlxsw_sp_acl_erp* %9, %struct.mlxsw_sp_acl_erp** %6, align 8
  %10 = load %struct.mlxsw_sp_acl_erp*, %struct.mlxsw_sp_acl_erp** %6, align 8
  %11 = icmp ne %struct.mlxsw_sp_acl_erp* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.mlxsw_sp_acl_erp* @ERR_PTR(i32 %14)
  store %struct.mlxsw_sp_acl_erp* %15, %struct.mlxsw_sp_acl_erp** %3, align 8
  br label %67

16:                                               ; preds = %2
  %17 = load %struct.mlxsw_sp_acl_erp*, %struct.mlxsw_sp_acl_erp** %6, align 8
  %18 = getelementptr inbounds %struct.mlxsw_sp_acl_erp, %struct.mlxsw_sp_acl_erp* %17, i32 0, i32 0
  %19 = load %struct.mlxsw_sp_acl_erp_key*, %struct.mlxsw_sp_acl_erp_key** %5, align 8
  %20 = call i32 @memcpy(i32* %18, %struct.mlxsw_sp_acl_erp_key* %19, i32 8)
  %21 = load %struct.mlxsw_sp_acl_erp*, %struct.mlxsw_sp_acl_erp** %6, align 8
  %22 = getelementptr inbounds %struct.mlxsw_sp_acl_erp, %struct.mlxsw_sp_acl_erp* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.mlxsw_sp_acl_erp_key*, %struct.mlxsw_sp_acl_erp_key** %5, align 8
  %25 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_key, %struct.mlxsw_sp_acl_erp_key* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i32*
  %28 = load i32, i32* @MLXSW_SP_ACL_TCAM_MASK_LEN, align 4
  %29 = call i32 @bitmap_from_arr32(i32 %23, i32* %27, i32 %28)
  %30 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %4, align 8
  %31 = call i32 @mlxsw_sp_acl_erp_ctcam_inc(%struct.mlxsw_sp_acl_erp_table* %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %16
  br label %62

35:                                               ; preds = %16
  %36 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %4, align 8
  %37 = load %struct.mlxsw_sp_acl_erp*, %struct.mlxsw_sp_acl_erp** %6, align 8
  %38 = getelementptr inbounds %struct.mlxsw_sp_acl_erp, %struct.mlxsw_sp_acl_erp* %37, i32 0, i32 1
  store %struct.mlxsw_sp_acl_erp_table* %36, %struct.mlxsw_sp_acl_erp_table** %38, align 8
  %39 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %4, align 8
  %40 = load %struct.mlxsw_sp_acl_erp*, %struct.mlxsw_sp_acl_erp** %6, align 8
  %41 = getelementptr inbounds %struct.mlxsw_sp_acl_erp, %struct.mlxsw_sp_acl_erp* %40, i32 0, i32 0
  %42 = call i32 @mlxsw_sp_acl_erp_master_mask_set(%struct.mlxsw_sp_acl_erp_table* %39, i32* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  br label %59

46:                                               ; preds = %35
  %47 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %4, align 8
  %48 = call i32 @mlxsw_sp_acl_erp_region_ctcam_enable(%struct.mlxsw_sp_acl_erp_table* %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %54

52:                                               ; preds = %46
  %53 = load %struct.mlxsw_sp_acl_erp*, %struct.mlxsw_sp_acl_erp** %6, align 8
  store %struct.mlxsw_sp_acl_erp* %53, %struct.mlxsw_sp_acl_erp** %3, align 8
  br label %67

54:                                               ; preds = %51
  %55 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %4, align 8
  %56 = load %struct.mlxsw_sp_acl_erp*, %struct.mlxsw_sp_acl_erp** %6, align 8
  %57 = getelementptr inbounds %struct.mlxsw_sp_acl_erp, %struct.mlxsw_sp_acl_erp* %56, i32 0, i32 0
  %58 = call i32 @mlxsw_sp_acl_erp_master_mask_clear(%struct.mlxsw_sp_acl_erp_table* %55, i32* %57)
  br label %59

59:                                               ; preds = %54, %45
  %60 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %4, align 8
  %61 = call i32 @mlxsw_sp_acl_erp_ctcam_dec(%struct.mlxsw_sp_acl_erp_table* %60)
  br label %62

62:                                               ; preds = %59, %34
  %63 = load %struct.mlxsw_sp_acl_erp*, %struct.mlxsw_sp_acl_erp** %6, align 8
  %64 = call i32 @kfree(%struct.mlxsw_sp_acl_erp* %63)
  %65 = load i32, i32* %7, align 4
  %66 = call %struct.mlxsw_sp_acl_erp* @ERR_PTR(i32 %65)
  store %struct.mlxsw_sp_acl_erp* %66, %struct.mlxsw_sp_acl_erp** %3, align 8
  br label %67

67:                                               ; preds = %62, %52, %12
  %68 = load %struct.mlxsw_sp_acl_erp*, %struct.mlxsw_sp_acl_erp** %3, align 8
  ret %struct.mlxsw_sp_acl_erp* %68
}

declare dso_local %struct.mlxsw_sp_acl_erp* @kzalloc(i32, i32) #1

declare dso_local %struct.mlxsw_sp_acl_erp* @ERR_PTR(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.mlxsw_sp_acl_erp_key*, i32) #1

declare dso_local i32 @bitmap_from_arr32(i32, i32*, i32) #1

declare dso_local i32 @mlxsw_sp_acl_erp_ctcam_inc(%struct.mlxsw_sp_acl_erp_table*) #1

declare dso_local i32 @mlxsw_sp_acl_erp_master_mask_set(%struct.mlxsw_sp_acl_erp_table*, i32*) #1

declare dso_local i32 @mlxsw_sp_acl_erp_region_ctcam_enable(%struct.mlxsw_sp_acl_erp_table*) #1

declare dso_local i32 @mlxsw_sp_acl_erp_master_mask_clear(%struct.mlxsw_sp_acl_erp_table*, i32*) #1

declare dso_local i32 @mlxsw_sp_acl_erp_ctcam_dec(%struct.mlxsw_sp_acl_erp_table*) #1

declare dso_local i32 @kfree(%struct.mlxsw_sp_acl_erp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

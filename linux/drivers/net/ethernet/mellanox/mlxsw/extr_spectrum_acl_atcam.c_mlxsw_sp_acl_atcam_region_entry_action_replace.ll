; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_atcam.c_mlxsw_sp_acl_atcam_region_entry_action_replace.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_atcam.c_mlxsw_sp_acl_atcam_region_entry_action_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_acl_atcam_region = type { %struct.mlxsw_sp_acl_tcam_region* }
%struct.mlxsw_sp_acl_tcam_region = type { i32 }
%struct.mlxsw_sp_acl_atcam_entry = type { %struct.TYPE_2__, i32, i32, %struct.mlxsw_sp_acl_atcam_lkey_id* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.mlxsw_sp_acl_atcam_lkey_id = type { i32, i32 }
%struct.mlxsw_sp_acl_rule_info = type { i32 }

@MLXSW_REG_PTCE3_LEN = common dso_local global i32 0, align 4
@MLXSW_REG_PTCE3_OP_WRITE_UPDATE = common dso_local global i32 0, align 4
@ptce3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_entry*, %struct.mlxsw_sp_acl_rule_info*)* @mlxsw_sp_acl_atcam_region_entry_action_replace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_acl_atcam_region_entry_action_replace(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_acl_atcam_region* %1, %struct.mlxsw_sp_acl_atcam_entry* %2, %struct.mlxsw_sp_acl_rule_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp*, align 8
  %7 = alloca %struct.mlxsw_sp_acl_atcam_region*, align 8
  %8 = alloca %struct.mlxsw_sp_acl_atcam_entry*, align 8
  %9 = alloca %struct.mlxsw_sp_acl_rule_info*, align 8
  %10 = alloca %struct.mlxsw_sp_acl_atcam_lkey_id*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mlxsw_sp_acl_tcam_region*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %6, align 8
  store %struct.mlxsw_sp_acl_atcam_region* %1, %struct.mlxsw_sp_acl_atcam_region** %7, align 8
  store %struct.mlxsw_sp_acl_atcam_entry* %2, %struct.mlxsw_sp_acl_atcam_entry** %8, align 8
  store %struct.mlxsw_sp_acl_rule_info* %3, %struct.mlxsw_sp_acl_rule_info** %9, align 8
  %19 = load %struct.mlxsw_sp_acl_atcam_entry*, %struct.mlxsw_sp_acl_atcam_entry** %8, align 8
  %20 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_entry, %struct.mlxsw_sp_acl_atcam_entry* %19, i32 0, i32 3
  %21 = load %struct.mlxsw_sp_acl_atcam_lkey_id*, %struct.mlxsw_sp_acl_atcam_lkey_id** %20, align 8
  store %struct.mlxsw_sp_acl_atcam_lkey_id* %21, %struct.mlxsw_sp_acl_atcam_lkey_id** %10, align 8
  %22 = load %struct.mlxsw_sp_acl_atcam_entry*, %struct.mlxsw_sp_acl_atcam_entry** %8, align 8
  %23 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_entry, %struct.mlxsw_sp_acl_atcam_entry* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @mlxsw_sp_acl_erp_mask_erp_id(i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load %struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_region** %7, align 8
  %27 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, %struct.mlxsw_sp_acl_atcam_region* %26, i32 0, i32 0
  %28 = load %struct.mlxsw_sp_acl_tcam_region*, %struct.mlxsw_sp_acl_tcam_region** %27, align 8
  store %struct.mlxsw_sp_acl_tcam_region* %28, %struct.mlxsw_sp_acl_tcam_region** %12, align 8
  %29 = load i32, i32* @MLXSW_REG_PTCE3_LEN, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %13, align 8
  %32 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %14, align 8
  %33 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %34 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %9, align 8
  %35 = call i32 @mlxsw_sp_acl_tcam_priority_get(%struct.mlxsw_sp* %33, %struct.mlxsw_sp_acl_rule_info* %34, i32* %16, i32 1)
  store i32 %35, i32* %17, align 4
  %36 = load i32, i32* %17, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %4
  %39 = load i32, i32* %17, align 4
  store i32 %39, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %82

40:                                               ; preds = %4
  %41 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %9, align 8
  %42 = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, %struct.mlxsw_sp_acl_rule_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @mlxsw_afa_block_first_kvdl_index(i32 %43)
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* @MLXSW_REG_PTCE3_OP_WRITE_UPDATE, align 4
  %46 = load i32, i32* %16, align 4
  %47 = load %struct.mlxsw_sp_acl_tcam_region*, %struct.mlxsw_sp_acl_tcam_region** %12, align 8
  %48 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, %struct.mlxsw_sp_acl_tcam_region* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.mlxsw_sp_acl_atcam_entry*, %struct.mlxsw_sp_acl_atcam_entry** %8, align 8
  %51 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_entry, %struct.mlxsw_sp_acl_atcam_entry* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.mlxsw_sp_acl_atcam_entry*, %struct.mlxsw_sp_acl_atcam_entry** %8, align 8
  %55 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_entry, %struct.mlxsw_sp_acl_atcam_entry* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.mlxsw_sp_acl_atcam_entry*, %struct.mlxsw_sp_acl_atcam_entry** %8, align 8
  %59 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_entry, %struct.mlxsw_sp_acl_atcam_entry* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.mlxsw_sp_acl_atcam_entry*, %struct.mlxsw_sp_acl_atcam_entry** %8, align 8
  %63 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_entry, %struct.mlxsw_sp_acl_atcam_entry* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.mlxsw_sp_acl_atcam_lkey_id*, %struct.mlxsw_sp_acl_atcam_lkey_id** %10, align 8
  %67 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_lkey_id, %struct.mlxsw_sp_acl_atcam_lkey_id* %66, i32 0, i32 1
  %68 = call i32 @refcount_read(i32* %67)
  %69 = icmp ne i32 %68, 1
  %70 = zext i1 %69 to i32
  %71 = load %struct.mlxsw_sp_acl_atcam_lkey_id*, %struct.mlxsw_sp_acl_atcam_lkey_id** %10, align 8
  %72 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_lkey_id, %struct.mlxsw_sp_acl_atcam_lkey_id* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %15, align 4
  %75 = call i32 @mlxsw_reg_ptce3_pack(i8* %32, i32 1, i32 %45, i32 %46, i32 %49, i32 %52, i32 %53, i32 %57, i32 %61, i32 %65, i32 %70, i32 %73, i32 %74)
  %76 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %77 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @ptce3, align 4
  %80 = call i32 @MLXSW_REG(i32 %79)
  %81 = call i32 @mlxsw_reg_write(i32 %78, i32 %80, i8* %32)
  store i32 %81, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %82

82:                                               ; preds = %40, %38
  %83 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %83)
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i32 @mlxsw_sp_acl_erp_mask_erp_id(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mlxsw_sp_acl_tcam_priority_get(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_rule_info*, i32*, i32) #1

declare dso_local i32 @mlxsw_afa_block_first_kvdl_index(i32) #1

declare dso_local i32 @mlxsw_reg_ptce3_pack(i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i32 @mlxsw_reg_write(i32, i32, i8*) #1

declare dso_local i32 @MLXSW_REG(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

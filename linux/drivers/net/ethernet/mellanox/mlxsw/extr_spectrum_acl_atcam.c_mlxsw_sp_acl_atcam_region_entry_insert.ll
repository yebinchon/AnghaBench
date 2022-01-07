; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_atcam.c_mlxsw_sp_acl_atcam_region_entry_insert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_atcam.c_mlxsw_sp_acl_atcam_region_entry_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_acl_atcam_region = type { %struct.TYPE_4__*, %struct.mlxsw_sp_acl_tcam_region* }
%struct.TYPE_4__ = type { i32 (%struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_lkey_id*)*, %struct.mlxsw_sp_acl_atcam_lkey_id* (%struct.mlxsw_sp_acl_atcam_region*, i32, i32)* }
%struct.mlxsw_sp_acl_atcam_lkey_id = type { i32, i32 }
%struct.mlxsw_sp_acl_tcam_region = type { i32 }
%struct.mlxsw_sp_acl_atcam_entry = type { %struct.TYPE_3__, i32, %struct.mlxsw_sp_acl_atcam_lkey_id*, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.mlxsw_sp_acl_rule_info = type { i32 }

@MLXSW_REG_PTCE3_LEN = common dso_local global i32 0, align 4
@MLXSW_REG_PTCE3_OP_WRITE_WRITE = common dso_local global i32 0, align 4
@ptce3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_entry*, %struct.mlxsw_sp_acl_rule_info*)* @mlxsw_sp_acl_atcam_region_entry_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_acl_atcam_region_entry_insert(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_acl_atcam_region* %1, %struct.mlxsw_sp_acl_atcam_entry* %2, %struct.mlxsw_sp_acl_rule_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp*, align 8
  %7 = alloca %struct.mlxsw_sp_acl_atcam_region*, align 8
  %8 = alloca %struct.mlxsw_sp_acl_atcam_entry*, align 8
  %9 = alloca %struct.mlxsw_sp_acl_rule_info*, align 8
  %10 = alloca %struct.mlxsw_sp_acl_tcam_region*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mlxsw_sp_acl_atcam_lkey_id*, align 8
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
  %19 = load %struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_region** %7, align 8
  %20 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, %struct.mlxsw_sp_acl_atcam_region* %19, i32 0, i32 1
  %21 = load %struct.mlxsw_sp_acl_tcam_region*, %struct.mlxsw_sp_acl_tcam_region** %20, align 8
  store %struct.mlxsw_sp_acl_tcam_region* %21, %struct.mlxsw_sp_acl_tcam_region** %10, align 8
  %22 = load %struct.mlxsw_sp_acl_atcam_entry*, %struct.mlxsw_sp_acl_atcam_entry** %8, align 8
  %23 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_entry, %struct.mlxsw_sp_acl_atcam_entry* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @mlxsw_sp_acl_erp_mask_erp_id(i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* @MLXSW_REG_PTCE3_LEN, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %13, align 8
  %29 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %14, align 8
  %30 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %31 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %9, align 8
  %32 = call i32 @mlxsw_sp_acl_tcam_priority_get(%struct.mlxsw_sp* %30, %struct.mlxsw_sp_acl_rule_info* %31, i32* %16, i32 1)
  store i32 %32, i32* %17, align 4
  %33 = load i32, i32* %17, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %4
  %36 = load i32, i32* %17, align 4
  store i32 %36, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %114

37:                                               ; preds = %4
  %38 = load %struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_region** %7, align 8
  %39 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, %struct.mlxsw_sp_acl_atcam_region* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load %struct.mlxsw_sp_acl_atcam_lkey_id* (%struct.mlxsw_sp_acl_atcam_region*, i32, i32)*, %struct.mlxsw_sp_acl_atcam_lkey_id* (%struct.mlxsw_sp_acl_atcam_region*, i32, i32)** %41, align 8
  %43 = load %struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_region** %7, align 8
  %44 = load %struct.mlxsw_sp_acl_atcam_entry*, %struct.mlxsw_sp_acl_atcam_entry** %8, align 8
  %45 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_entry, %struct.mlxsw_sp_acl_atcam_entry* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call %struct.mlxsw_sp_acl_atcam_lkey_id* %42(%struct.mlxsw_sp_acl_atcam_region* %43, i32 %46, i32 %47)
  store %struct.mlxsw_sp_acl_atcam_lkey_id* %48, %struct.mlxsw_sp_acl_atcam_lkey_id** %12, align 8
  %49 = load %struct.mlxsw_sp_acl_atcam_lkey_id*, %struct.mlxsw_sp_acl_atcam_lkey_id** %12, align 8
  %50 = call i64 @IS_ERR(%struct.mlxsw_sp_acl_atcam_lkey_id* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %37
  %53 = load %struct.mlxsw_sp_acl_atcam_lkey_id*, %struct.mlxsw_sp_acl_atcam_lkey_id** %12, align 8
  %54 = call i32 @PTR_ERR(%struct.mlxsw_sp_acl_atcam_lkey_id* %53)
  store i32 %54, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %114

55:                                               ; preds = %37
  %56 = load %struct.mlxsw_sp_acl_atcam_lkey_id*, %struct.mlxsw_sp_acl_atcam_lkey_id** %12, align 8
  %57 = load %struct.mlxsw_sp_acl_atcam_entry*, %struct.mlxsw_sp_acl_atcam_entry** %8, align 8
  %58 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_entry, %struct.mlxsw_sp_acl_atcam_entry* %57, i32 0, i32 2
  store %struct.mlxsw_sp_acl_atcam_lkey_id* %56, %struct.mlxsw_sp_acl_atcam_lkey_id** %58, align 8
  %59 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %9, align 8
  %60 = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, %struct.mlxsw_sp_acl_rule_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @mlxsw_afa_block_first_kvdl_index(i32 %61)
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* @MLXSW_REG_PTCE3_OP_WRITE_WRITE, align 4
  %64 = load i32, i32* %16, align 4
  %65 = load %struct.mlxsw_sp_acl_tcam_region*, %struct.mlxsw_sp_acl_tcam_region** %10, align 8
  %66 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, %struct.mlxsw_sp_acl_tcam_region* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.mlxsw_sp_acl_atcam_entry*, %struct.mlxsw_sp_acl_atcam_entry** %8, align 8
  %69 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_entry, %struct.mlxsw_sp_acl_atcam_entry* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %11, align 4
  %72 = load %struct.mlxsw_sp_acl_atcam_entry*, %struct.mlxsw_sp_acl_atcam_entry** %8, align 8
  %73 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_entry, %struct.mlxsw_sp_acl_atcam_entry* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.mlxsw_sp_acl_atcam_entry*, %struct.mlxsw_sp_acl_atcam_entry** %8, align 8
  %77 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_entry, %struct.mlxsw_sp_acl_atcam_entry* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.mlxsw_sp_acl_atcam_entry*, %struct.mlxsw_sp_acl_atcam_entry** %8, align 8
  %81 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_entry, %struct.mlxsw_sp_acl_atcam_entry* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.mlxsw_sp_acl_atcam_lkey_id*, %struct.mlxsw_sp_acl_atcam_lkey_id** %12, align 8
  %85 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_lkey_id, %struct.mlxsw_sp_acl_atcam_lkey_id* %84, i32 0, i32 1
  %86 = call i32 @refcount_read(i32* %85)
  %87 = icmp ne i32 %86, 1
  %88 = zext i1 %87 to i32
  %89 = load %struct.mlxsw_sp_acl_atcam_lkey_id*, %struct.mlxsw_sp_acl_atcam_lkey_id** %12, align 8
  %90 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_lkey_id, %struct.mlxsw_sp_acl_atcam_lkey_id* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %15, align 4
  %93 = call i32 @mlxsw_reg_ptce3_pack(i8* %29, i32 1, i32 %63, i32 %64, i32 %67, i32 %70, i32 %71, i32 %75, i32 %79, i32 %83, i32 %88, i32 %91, i32 %92)
  %94 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %95 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @ptce3, align 4
  %98 = call i32 @MLXSW_REG(i32 %97)
  %99 = call i32 @mlxsw_reg_write(i32 %96, i32 %98, i8* %29)
  store i32 %99, i32* %17, align 4
  %100 = load i32, i32* %17, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %55
  br label %104

103:                                              ; preds = %55
  store i32 0, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %114

104:                                              ; preds = %102
  %105 = load %struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_region** %7, align 8
  %106 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, %struct.mlxsw_sp_acl_atcam_region* %105, i32 0, i32 0
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32 (%struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_lkey_id*)*, i32 (%struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_lkey_id*)** %108, align 8
  %110 = load %struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_region** %7, align 8
  %111 = load %struct.mlxsw_sp_acl_atcam_lkey_id*, %struct.mlxsw_sp_acl_atcam_lkey_id** %12, align 8
  %112 = call i32 %109(%struct.mlxsw_sp_acl_atcam_region* %110, %struct.mlxsw_sp_acl_atcam_lkey_id* %111)
  %113 = load i32, i32* %17, align 4
  store i32 %113, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %114

114:                                              ; preds = %104, %103, %52, %35
  %115 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %115)
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

declare dso_local i32 @mlxsw_sp_acl_erp_mask_erp_id(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mlxsw_sp_acl_tcam_priority_get(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_rule_info*, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.mlxsw_sp_acl_atcam_lkey_id*) #1

declare dso_local i32 @PTR_ERR(%struct.mlxsw_sp_acl_atcam_lkey_id*) #1

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

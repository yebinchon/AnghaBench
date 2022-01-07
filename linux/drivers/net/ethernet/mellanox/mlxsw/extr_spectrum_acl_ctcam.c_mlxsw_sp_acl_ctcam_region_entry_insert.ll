; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_ctcam.c_mlxsw_sp_acl_ctcam_region_entry_insert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_ctcam.c_mlxsw_sp_acl_ctcam_region_entry_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32, i32 }
%struct.mlxsw_sp_acl_ctcam_region = type { %struct.TYPE_4__*, %struct.mlxsw_sp_acl_tcam_region* }
%struct.TYPE_4__ = type { i32 (%struct.mlxsw_sp_acl_ctcam_region*, %struct.mlxsw_sp_acl_ctcam_entry*, i8*)*, i32 (%struct.mlxsw_sp_acl_ctcam_region*, %struct.mlxsw_sp_acl_ctcam_entry*)* }
%struct.mlxsw_sp_acl_tcam_region = type { i32, i32 }
%struct.mlxsw_sp_acl_ctcam_entry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mlxsw_sp_acl_rule_info = type { i32, i32 }
%struct.mlxsw_afk = type { i32 }

@MLXSW_REG_PTCE2_LEN = common dso_local global i32 0, align 4
@MLXSW_REG_PTCE2_OP_WRITE_WRITE = common dso_local global i32 0, align 4
@ptce2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_ctcam_region*, %struct.mlxsw_sp_acl_ctcam_entry*, %struct.mlxsw_sp_acl_rule_info*, i32)* @mlxsw_sp_acl_ctcam_region_entry_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_acl_ctcam_region_entry_insert(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_acl_ctcam_region* %1, %struct.mlxsw_sp_acl_ctcam_entry* %2, %struct.mlxsw_sp_acl_rule_info* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlxsw_sp*, align 8
  %8 = alloca %struct.mlxsw_sp_acl_ctcam_region*, align 8
  %9 = alloca %struct.mlxsw_sp_acl_ctcam_entry*, align 8
  %10 = alloca %struct.mlxsw_sp_acl_rule_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mlxsw_sp_acl_tcam_region*, align 8
  %13 = alloca %struct.mlxsw_afk*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %7, align 8
  store %struct.mlxsw_sp_acl_ctcam_region* %1, %struct.mlxsw_sp_acl_ctcam_region** %8, align 8
  store %struct.mlxsw_sp_acl_ctcam_entry* %2, %struct.mlxsw_sp_acl_ctcam_entry** %9, align 8
  store %struct.mlxsw_sp_acl_rule_info* %3, %struct.mlxsw_sp_acl_rule_info** %10, align 8
  store i32 %4, i32* %11, align 4
  %22 = load %struct.mlxsw_sp_acl_ctcam_region*, %struct.mlxsw_sp_acl_ctcam_region** %8, align 8
  %23 = getelementptr inbounds %struct.mlxsw_sp_acl_ctcam_region, %struct.mlxsw_sp_acl_ctcam_region* %22, i32 0, i32 1
  %24 = load %struct.mlxsw_sp_acl_tcam_region*, %struct.mlxsw_sp_acl_tcam_region** %23, align 8
  store %struct.mlxsw_sp_acl_tcam_region* %24, %struct.mlxsw_sp_acl_tcam_region** %12, align 8
  %25 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %7, align 8
  %26 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.mlxsw_afk* @mlxsw_sp_acl_afk(i32 %27)
  store %struct.mlxsw_afk* %28, %struct.mlxsw_afk** %13, align 8
  %29 = load i32, i32* @MLXSW_REG_PTCE2_LEN, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %14, align 8
  %32 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %15, align 8
  %33 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %7, align 8
  %34 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %10, align 8
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @mlxsw_sp_acl_tcam_priority_get(%struct.mlxsw_sp* %33, %struct.mlxsw_sp_acl_rule_info* %34, i32* %17, i32 %35)
  store i32 %36, i32* %20, align 4
  %37 = load i32, i32* %20, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %5
  %40 = load i32, i32* %20, align 4
  store i32 %40, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %103

41:                                               ; preds = %5
  %42 = load i32, i32* @MLXSW_REG_PTCE2_OP_WRITE_WRITE, align 4
  %43 = load %struct.mlxsw_sp_acl_tcam_region*, %struct.mlxsw_sp_acl_tcam_region** %12, align 8
  %44 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, %struct.mlxsw_sp_acl_tcam_region* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.mlxsw_sp_acl_ctcam_entry*, %struct.mlxsw_sp_acl_ctcam_entry** %9, align 8
  %47 = getelementptr inbounds %struct.mlxsw_sp_acl_ctcam_entry, %struct.mlxsw_sp_acl_ctcam_entry* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %17, align 4
  %51 = call i32 @mlxsw_reg_ptce2_pack(i8* %32, i32 1, i32 %42, i32 %45, i32 %49, i32 %50)
  %52 = call i8* @mlxsw_reg_ptce2_flex_key_blocks_data(i8* %32)
  store i8* %52, i8** %19, align 8
  %53 = call i8* @mlxsw_reg_ptce2_mask_data(i8* %32)
  store i8* %53, i8** %18, align 8
  %54 = load %struct.mlxsw_afk*, %struct.mlxsw_afk** %13, align 8
  %55 = load %struct.mlxsw_sp_acl_tcam_region*, %struct.mlxsw_sp_acl_tcam_region** %12, align 8
  %56 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, %struct.mlxsw_sp_acl_tcam_region* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %10, align 8
  %59 = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, %struct.mlxsw_sp_acl_rule_info* %58, i32 0, i32 1
  %60 = load i8*, i8** %19, align 8
  %61 = load i8*, i8** %18, align 8
  %62 = call i32 @mlxsw_afk_encode(%struct.mlxsw_afk* %54, i32 %57, i32* %59, i8* %60, i8* %61)
  %63 = load %struct.mlxsw_sp_acl_ctcam_region*, %struct.mlxsw_sp_acl_ctcam_region** %8, align 8
  %64 = getelementptr inbounds %struct.mlxsw_sp_acl_ctcam_region, %struct.mlxsw_sp_acl_ctcam_region* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32 (%struct.mlxsw_sp_acl_ctcam_region*, %struct.mlxsw_sp_acl_ctcam_entry*, i8*)*, i32 (%struct.mlxsw_sp_acl_ctcam_region*, %struct.mlxsw_sp_acl_ctcam_entry*, i8*)** %66, align 8
  %68 = load %struct.mlxsw_sp_acl_ctcam_region*, %struct.mlxsw_sp_acl_ctcam_region** %8, align 8
  %69 = load %struct.mlxsw_sp_acl_ctcam_entry*, %struct.mlxsw_sp_acl_ctcam_entry** %9, align 8
  %70 = load i8*, i8** %18, align 8
  %71 = call i32 %67(%struct.mlxsw_sp_acl_ctcam_region* %68, %struct.mlxsw_sp_acl_ctcam_entry* %69, i8* %70)
  store i32 %71, i32* %20, align 4
  %72 = load i32, i32* %20, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %41
  %75 = load i32, i32* %20, align 4
  store i32 %75, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %103

76:                                               ; preds = %41
  %77 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %10, align 8
  %78 = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, %struct.mlxsw_sp_acl_rule_info* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i8* @mlxsw_afa_block_first_set(i32 %79)
  store i8* %80, i8** %16, align 8
  %81 = load i8*, i8** %16, align 8
  %82 = call i32 @mlxsw_reg_ptce2_flex_action_set_memcpy_to(i8* %32, i8* %81)
  %83 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %7, align 8
  %84 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @ptce2, align 4
  %87 = call i32 @MLXSW_REG(i32 %86)
  %88 = call i32 @mlxsw_reg_write(i32 %85, i32 %87, i8* %32)
  store i32 %88, i32* %20, align 4
  %89 = load i32, i32* %20, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %76
  br label %93

92:                                               ; preds = %76
  store i32 0, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %103

93:                                               ; preds = %91
  %94 = load %struct.mlxsw_sp_acl_ctcam_region*, %struct.mlxsw_sp_acl_ctcam_region** %8, align 8
  %95 = getelementptr inbounds %struct.mlxsw_sp_acl_ctcam_region, %struct.mlxsw_sp_acl_ctcam_region* %94, i32 0, i32 0
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i32 (%struct.mlxsw_sp_acl_ctcam_region*, %struct.mlxsw_sp_acl_ctcam_entry*)*, i32 (%struct.mlxsw_sp_acl_ctcam_region*, %struct.mlxsw_sp_acl_ctcam_entry*)** %97, align 8
  %99 = load %struct.mlxsw_sp_acl_ctcam_region*, %struct.mlxsw_sp_acl_ctcam_region** %8, align 8
  %100 = load %struct.mlxsw_sp_acl_ctcam_entry*, %struct.mlxsw_sp_acl_ctcam_entry** %9, align 8
  %101 = call i32 %98(%struct.mlxsw_sp_acl_ctcam_region* %99, %struct.mlxsw_sp_acl_ctcam_entry* %100)
  %102 = load i32, i32* %20, align 4
  store i32 %102, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %103

103:                                              ; preds = %93, %92, %74, %39
  %104 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %104)
  %105 = load i32, i32* %6, align 4
  ret i32 %105
}

declare dso_local %struct.mlxsw_afk* @mlxsw_sp_acl_afk(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mlxsw_sp_acl_tcam_priority_get(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_rule_info*, i32*, i32) #1

declare dso_local i32 @mlxsw_reg_ptce2_pack(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i8* @mlxsw_reg_ptce2_flex_key_blocks_data(i8*) #1

declare dso_local i8* @mlxsw_reg_ptce2_mask_data(i8*) #1

declare dso_local i32 @mlxsw_afk_encode(%struct.mlxsw_afk*, i32, i32*, i8*, i8*) #1

declare dso_local i8* @mlxsw_afa_block_first_set(i32) #1

declare dso_local i32 @mlxsw_reg_ptce2_flex_action_set_memcpy_to(i8*, i8*) #1

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

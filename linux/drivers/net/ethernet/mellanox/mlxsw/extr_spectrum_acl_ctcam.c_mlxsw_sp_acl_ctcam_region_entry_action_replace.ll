; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_ctcam.c_mlxsw_sp_acl_ctcam_region_entry_action_replace.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_ctcam.c_mlxsw_sp_acl_ctcam_region_entry_action_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_acl_ctcam_region = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mlxsw_sp_acl_ctcam_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.mlxsw_afa_block = type { i32 }

@MLXSW_REG_PTCE2_LEN = common dso_local global i32 0, align 4
@MLXSW_REG_PTCE2_OP_WRITE_UPDATE = common dso_local global i32 0, align 4
@ptce2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_ctcam_region*, %struct.mlxsw_sp_acl_ctcam_entry*, %struct.mlxsw_afa_block*, i32)* @mlxsw_sp_acl_ctcam_region_entry_action_replace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_acl_ctcam_region_entry_action_replace(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_acl_ctcam_region* %1, %struct.mlxsw_sp_acl_ctcam_entry* %2, %struct.mlxsw_afa_block* %3, i32 %4) #0 {
  %6 = alloca %struct.mlxsw_sp*, align 8
  %7 = alloca %struct.mlxsw_sp_acl_ctcam_region*, align 8
  %8 = alloca %struct.mlxsw_sp_acl_ctcam_entry*, align 8
  %9 = alloca %struct.mlxsw_afa_block*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %6, align 8
  store %struct.mlxsw_sp_acl_ctcam_region* %1, %struct.mlxsw_sp_acl_ctcam_region** %7, align 8
  store %struct.mlxsw_sp_acl_ctcam_entry* %2, %struct.mlxsw_sp_acl_ctcam_entry** %8, align 8
  store %struct.mlxsw_afa_block* %3, %struct.mlxsw_afa_block** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* @MLXSW_REG_PTCE2_LEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %11, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %12, align 8
  %18 = load i32, i32* @MLXSW_REG_PTCE2_OP_WRITE_UPDATE, align 4
  %19 = load %struct.mlxsw_sp_acl_ctcam_region*, %struct.mlxsw_sp_acl_ctcam_region** %7, align 8
  %20 = getelementptr inbounds %struct.mlxsw_sp_acl_ctcam_region, %struct.mlxsw_sp_acl_ctcam_region* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.mlxsw_sp_acl_ctcam_entry*, %struct.mlxsw_sp_acl_ctcam_entry** %8, align 8
  %25 = getelementptr inbounds %struct.mlxsw_sp_acl_ctcam_entry, %struct.mlxsw_sp_acl_ctcam_entry* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @mlxsw_reg_ptce2_pack(i8* %17, i32 1, i32 %18, i32 %23, i32 %27, i32 %28)
  %30 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %9, align 8
  %31 = call i8* @mlxsw_afa_block_first_set(%struct.mlxsw_afa_block* %30)
  store i8* %31, i8** %13, align 8
  %32 = load i8*, i8** %13, align 8
  %33 = call i32 @mlxsw_reg_ptce2_flex_action_set_memcpy_to(i8* %17, i8* %32)
  %34 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %35 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @ptce2, align 4
  %38 = call i32 @MLXSW_REG(i32 %37)
  %39 = call i32 @mlxsw_reg_write(i32 %36, i32 %38, i8* %17)
  %40 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %40)
  ret i32 %39
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mlxsw_reg_ptce2_pack(i8*, i32, i32, i32, i32, i32) #2

declare dso_local i8* @mlxsw_afa_block_first_set(%struct.mlxsw_afa_block*) #2

declare dso_local i32 @mlxsw_reg_ptce2_flex_action_set_memcpy_to(i8*, i8*) #2

declare dso_local i32 @mlxsw_reg_write(i32, i32, i8*) #2

declare dso_local i32 @MLXSW_REG(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

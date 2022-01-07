; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_atcam.c_mlxsw_sp_acl_atcam_region_entry_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_atcam.c_mlxsw_sp_acl_atcam_region_entry_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_acl_atcam_region = type { %struct.TYPE_4__*, %struct.mlxsw_sp_acl_tcam_region* }
%struct.TYPE_4__ = type { i32 (%struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_lkey_id*)* }
%struct.mlxsw_sp_acl_atcam_lkey_id = type { i32, i32 }
%struct.mlxsw_sp_acl_tcam_region = type { i32 }
%struct.mlxsw_sp_acl_atcam_entry = type { %struct.TYPE_3__, i32, i32, %struct.mlxsw_sp_acl_atcam_lkey_id* }
%struct.TYPE_3__ = type { i32, i32, i32 }

@MLXSW_REG_PTCE3_LEN = common dso_local global i32 0, align 4
@MLXSW_REG_PTCE3_OP_WRITE_WRITE = common dso_local global i32 0, align 4
@ptce3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_entry*)* @mlxsw_sp_acl_atcam_region_entry_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_acl_atcam_region_entry_remove(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_acl_atcam_region* %1, %struct.mlxsw_sp_acl_atcam_entry* %2) #0 {
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca %struct.mlxsw_sp_acl_atcam_region*, align 8
  %6 = alloca %struct.mlxsw_sp_acl_atcam_entry*, align 8
  %7 = alloca %struct.mlxsw_sp_acl_atcam_lkey_id*, align 8
  %8 = alloca %struct.mlxsw_sp_acl_tcam_region*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store %struct.mlxsw_sp_acl_atcam_region* %1, %struct.mlxsw_sp_acl_atcam_region** %5, align 8
  store %struct.mlxsw_sp_acl_atcam_entry* %2, %struct.mlxsw_sp_acl_atcam_entry** %6, align 8
  %12 = load %struct.mlxsw_sp_acl_atcam_entry*, %struct.mlxsw_sp_acl_atcam_entry** %6, align 8
  %13 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_entry, %struct.mlxsw_sp_acl_atcam_entry* %12, i32 0, i32 3
  %14 = load %struct.mlxsw_sp_acl_atcam_lkey_id*, %struct.mlxsw_sp_acl_atcam_lkey_id** %13, align 8
  store %struct.mlxsw_sp_acl_atcam_lkey_id* %14, %struct.mlxsw_sp_acl_atcam_lkey_id** %7, align 8
  %15 = load %struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_region** %5, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, %struct.mlxsw_sp_acl_atcam_region* %15, i32 0, i32 1
  %17 = load %struct.mlxsw_sp_acl_tcam_region*, %struct.mlxsw_sp_acl_tcam_region** %16, align 8
  store %struct.mlxsw_sp_acl_tcam_region* %17, %struct.mlxsw_sp_acl_tcam_region** %8, align 8
  %18 = load %struct.mlxsw_sp_acl_atcam_entry*, %struct.mlxsw_sp_acl_atcam_entry** %6, align 8
  %19 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_entry, %struct.mlxsw_sp_acl_atcam_entry* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @mlxsw_sp_acl_erp_mask_erp_id(i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* @MLXSW_REG_PTCE3_LEN, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %10, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %11, align 8
  %26 = load i32, i32* @MLXSW_REG_PTCE3_OP_WRITE_WRITE, align 4
  %27 = load %struct.mlxsw_sp_acl_tcam_region*, %struct.mlxsw_sp_acl_tcam_region** %8, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, %struct.mlxsw_sp_acl_tcam_region* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mlxsw_sp_acl_atcam_entry*, %struct.mlxsw_sp_acl_atcam_entry** %6, align 8
  %31 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_entry, %struct.mlxsw_sp_acl_atcam_entry* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.mlxsw_sp_acl_atcam_entry*, %struct.mlxsw_sp_acl_atcam_entry** %6, align 8
  %35 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_entry, %struct.mlxsw_sp_acl_atcam_entry* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.mlxsw_sp_acl_atcam_entry*, %struct.mlxsw_sp_acl_atcam_entry** %6, align 8
  %39 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_entry, %struct.mlxsw_sp_acl_atcam_entry* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.mlxsw_sp_acl_atcam_entry*, %struct.mlxsw_sp_acl_atcam_entry** %6, align 8
  %43 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_entry, %struct.mlxsw_sp_acl_atcam_entry* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.mlxsw_sp_acl_atcam_lkey_id*, %struct.mlxsw_sp_acl_atcam_lkey_id** %7, align 8
  %47 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_lkey_id, %struct.mlxsw_sp_acl_atcam_lkey_id* %46, i32 0, i32 1
  %48 = call i32 @refcount_read(i32* %47)
  %49 = icmp ne i32 %48, 1
  %50 = zext i1 %49 to i32
  %51 = load %struct.mlxsw_sp_acl_atcam_lkey_id*, %struct.mlxsw_sp_acl_atcam_lkey_id** %7, align 8
  %52 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_lkey_id, %struct.mlxsw_sp_acl_atcam_lkey_id* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @mlxsw_reg_ptce3_pack(i8* %25, i32 0, i32 %26, i32 0, i32 %29, i32 %32, i32 %33, i32 %37, i32 %41, i32 %45, i32 %50, i32 %53, i32 0)
  %55 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %56 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @ptce3, align 4
  %59 = call i32 @MLXSW_REG(i32 %58)
  %60 = call i32 @mlxsw_reg_write(i32 %57, i32 %59, i8* %25)
  %61 = load %struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_region** %5, align 8
  %62 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, %struct.mlxsw_sp_acl_atcam_region* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32 (%struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_lkey_id*)*, i32 (%struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_lkey_id*)** %64, align 8
  %66 = load %struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_region** %5, align 8
  %67 = load %struct.mlxsw_sp_acl_atcam_lkey_id*, %struct.mlxsw_sp_acl_atcam_lkey_id** %7, align 8
  %68 = call i32 %65(%struct.mlxsw_sp_acl_atcam_region* %66, %struct.mlxsw_sp_acl_atcam_lkey_id* %67)
  %69 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %69)
  ret void
}

declare dso_local i32 @mlxsw_sp_acl_erp_mask_erp_id(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

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

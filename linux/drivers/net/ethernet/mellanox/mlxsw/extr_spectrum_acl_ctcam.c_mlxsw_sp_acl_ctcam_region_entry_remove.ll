; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_ctcam.c_mlxsw_sp_acl_ctcam_region_entry_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_ctcam.c_mlxsw_sp_acl_ctcam_region_entry_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_acl_ctcam_region = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 (%struct.mlxsw_sp_acl_ctcam_region*, %struct.mlxsw_sp_acl_ctcam_entry*)* }
%struct.TYPE_4__ = type { i32 }
%struct.mlxsw_sp_acl_ctcam_entry = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@MLXSW_REG_PTCE2_LEN = common dso_local global i32 0, align 4
@MLXSW_REG_PTCE2_OP_WRITE_WRITE = common dso_local global i32 0, align 4
@ptce2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_ctcam_region*, %struct.mlxsw_sp_acl_ctcam_entry*)* @mlxsw_sp_acl_ctcam_region_entry_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_acl_ctcam_region_entry_remove(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_acl_ctcam_region* %1, %struct.mlxsw_sp_acl_ctcam_entry* %2) #0 {
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca %struct.mlxsw_sp_acl_ctcam_region*, align 8
  %6 = alloca %struct.mlxsw_sp_acl_ctcam_entry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store %struct.mlxsw_sp_acl_ctcam_region* %1, %struct.mlxsw_sp_acl_ctcam_region** %5, align 8
  store %struct.mlxsw_sp_acl_ctcam_entry* %2, %struct.mlxsw_sp_acl_ctcam_entry** %6, align 8
  %9 = load i32, i32* @MLXSW_REG_PTCE2_LEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %7, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %8, align 8
  %13 = load i32, i32* @MLXSW_REG_PTCE2_OP_WRITE_WRITE, align 4
  %14 = load %struct.mlxsw_sp_acl_ctcam_region*, %struct.mlxsw_sp_acl_ctcam_region** %5, align 8
  %15 = getelementptr inbounds %struct.mlxsw_sp_acl_ctcam_region, %struct.mlxsw_sp_acl_ctcam_region* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.mlxsw_sp_acl_ctcam_entry*, %struct.mlxsw_sp_acl_ctcam_entry** %6, align 8
  %20 = getelementptr inbounds %struct.mlxsw_sp_acl_ctcam_entry, %struct.mlxsw_sp_acl_ctcam_entry* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @mlxsw_reg_ptce2_pack(i8* %12, i32 0, i32 %13, i32 %18, i32 %22, i32 0)
  %24 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %25 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ptce2, align 4
  %28 = call i32 @MLXSW_REG(i32 %27)
  %29 = call i32 @mlxsw_reg_write(i32 %26, i32 %28, i8* %12)
  %30 = load %struct.mlxsw_sp_acl_ctcam_region*, %struct.mlxsw_sp_acl_ctcam_region** %5, align 8
  %31 = getelementptr inbounds %struct.mlxsw_sp_acl_ctcam_region, %struct.mlxsw_sp_acl_ctcam_region* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32 (%struct.mlxsw_sp_acl_ctcam_region*, %struct.mlxsw_sp_acl_ctcam_entry*)*, i32 (%struct.mlxsw_sp_acl_ctcam_region*, %struct.mlxsw_sp_acl_ctcam_entry*)** %33, align 8
  %35 = load %struct.mlxsw_sp_acl_ctcam_region*, %struct.mlxsw_sp_acl_ctcam_region** %5, align 8
  %36 = load %struct.mlxsw_sp_acl_ctcam_entry*, %struct.mlxsw_sp_acl_ctcam_entry** %6, align 8
  %37 = call i32 %34(%struct.mlxsw_sp_acl_ctcam_region* %35, %struct.mlxsw_sp_acl_ctcam_entry* %36)
  %38 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %38)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mlxsw_reg_ptce2_pack(i8*, i32, i32, i32, i32, i32) #2

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

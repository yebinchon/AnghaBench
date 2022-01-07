; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_tcam.c_mlxsw_sp_acl_tcam_region_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_tcam.c_mlxsw_sp_acl_tcam_region_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_acl_tcam_region = type { i32, i32, i32 }

@MLXSW_REG_PTAR_LEN = common dso_local global i32 0, align 4
@MLXSW_REG_PTAR_OP_FREE = common dso_local global i32 0, align 4
@ptar = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_tcam_region*)* @mlxsw_sp_acl_tcam_region_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_acl_tcam_region_free(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_acl_tcam_region* %1) #0 {
  %3 = alloca %struct.mlxsw_sp*, align 8
  %4 = alloca %struct.mlxsw_sp_acl_tcam_region*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %3, align 8
  store %struct.mlxsw_sp_acl_tcam_region* %1, %struct.mlxsw_sp_acl_tcam_region** %4, align 8
  %7 = load i32, i32* @MLXSW_REG_PTAR_LEN, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %5, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %6, align 8
  %11 = load i32, i32* @MLXSW_REG_PTAR_OP_FREE, align 4
  %12 = load %struct.mlxsw_sp_acl_tcam_region*, %struct.mlxsw_sp_acl_tcam_region** %4, align 8
  %13 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, %struct.mlxsw_sp_acl_tcam_region* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.mlxsw_sp_acl_tcam_region*, %struct.mlxsw_sp_acl_tcam_region** %4, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, %struct.mlxsw_sp_acl_tcam_region* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.mlxsw_sp_acl_tcam_region*, %struct.mlxsw_sp_acl_tcam_region** %4, align 8
  %19 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, %struct.mlxsw_sp_acl_tcam_region* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @mlxsw_reg_ptar_pack(i8* %10, i32 %11, i32 %14, i32 0, i32 %17, i32 %20)
  %22 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %23 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ptar, align 4
  %26 = call i32 @MLXSW_REG(i32 %25)
  %27 = call i32 @mlxsw_reg_write(i32 %24, i32 %26, i8* %10)
  %28 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %28)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mlxsw_reg_ptar_pack(i8*, i32, i32, i32, i32, i32) #2

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

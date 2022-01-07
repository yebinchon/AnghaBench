; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum1_mr_tcam.c_mlxsw_sp1_mr_tcam_region_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum1_mr_tcam.c_mlxsw_sp1_mr_tcam_region_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp1_mr_tcam_region = type { i32, %struct.mlxsw_sp* }
%struct.mlxsw_sp = type { i32 }

@MLXSW_REG_RTAR_LEN = common dso_local global i32 0, align 4
@MLXSW_REG_RTAR_OP_ALLOCATE = common dso_local global i32 0, align 4
@MLXSW_SP1_MR_TCAM_REGION_BASE_COUNT = common dso_local global i32 0, align 4
@rtar = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp1_mr_tcam_region*)* @mlxsw_sp1_mr_tcam_region_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp1_mr_tcam_region_alloc(%struct.mlxsw_sp1_mr_tcam_region* %0) #0 {
  %2 = alloca %struct.mlxsw_sp1_mr_tcam_region*, align 8
  %3 = alloca %struct.mlxsw_sp*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.mlxsw_sp1_mr_tcam_region* %0, %struct.mlxsw_sp1_mr_tcam_region** %2, align 8
  %6 = load %struct.mlxsw_sp1_mr_tcam_region*, %struct.mlxsw_sp1_mr_tcam_region** %2, align 8
  %7 = getelementptr inbounds %struct.mlxsw_sp1_mr_tcam_region, %struct.mlxsw_sp1_mr_tcam_region* %6, i32 0, i32 1
  %8 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %7, align 8
  store %struct.mlxsw_sp* %8, %struct.mlxsw_sp** %3, align 8
  %9 = load i32, i32* @MLXSW_REG_RTAR_LEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = load i32, i32* @MLXSW_REG_RTAR_OP_ALLOCATE, align 4
  %14 = load %struct.mlxsw_sp1_mr_tcam_region*, %struct.mlxsw_sp1_mr_tcam_region** %2, align 8
  %15 = getelementptr inbounds %struct.mlxsw_sp1_mr_tcam_region, %struct.mlxsw_sp1_mr_tcam_region* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @MLXSW_SP1_MR_TCAM_REGION_BASE_COUNT, align 4
  %18 = call i32 @mlxsw_reg_rtar_pack(i8* %12, i32 %13, i32 %16, i32 %17)
  %19 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %20 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @rtar, align 4
  %23 = call i32 @MLXSW_REG(i32 %22)
  %24 = call i32 @mlxsw_reg_write(i32 %21, i32 %23, i8* %12)
  %25 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %25)
  ret i32 %24
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mlxsw_reg_rtar_pack(i8*, i32, i32, i32) #2

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

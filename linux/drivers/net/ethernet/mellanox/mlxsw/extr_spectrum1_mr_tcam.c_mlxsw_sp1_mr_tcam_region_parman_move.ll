; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum1_mr_tcam.c_mlxsw_sp1_mr_tcam_region_parman_move.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum1_mr_tcam.c_mlxsw_sp1_mr_tcam_region_parman_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp1_mr_tcam_region = type { i32, %struct.mlxsw_sp* }
%struct.mlxsw_sp = type { i32 }

@MLXSW_REG_RRCR_LEN = common dso_local global i32 0, align 4
@MLXSW_REG_RRCR_OP_MOVE = common dso_local global i32 0, align 4
@rrcr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i64, i64)* @mlxsw_sp1_mr_tcam_region_parman_move to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp1_mr_tcam_region_parman_move(i8* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.mlxsw_sp1_mr_tcam_region*, align 8
  %10 = alloca %struct.mlxsw_sp*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.mlxsw_sp1_mr_tcam_region*
  store %struct.mlxsw_sp1_mr_tcam_region* %14, %struct.mlxsw_sp1_mr_tcam_region** %9, align 8
  %15 = load %struct.mlxsw_sp1_mr_tcam_region*, %struct.mlxsw_sp1_mr_tcam_region** %9, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp1_mr_tcam_region, %struct.mlxsw_sp1_mr_tcam_region* %15, i32 0, i32 1
  %17 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %16, align 8
  store %struct.mlxsw_sp* %17, %struct.mlxsw_sp** %10, align 8
  %18 = load i32, i32* @MLXSW_REG_RRCR_LEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %11, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %12, align 8
  %22 = load i32, i32* @MLXSW_REG_RRCR_OP_MOVE, align 4
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load %struct.mlxsw_sp1_mr_tcam_region*, %struct.mlxsw_sp1_mr_tcam_region** %9, align 8
  %26 = getelementptr inbounds %struct.mlxsw_sp1_mr_tcam_region, %struct.mlxsw_sp1_mr_tcam_region* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @mlxsw_reg_rrcr_pack(i8* %21, i32 %22, i64 %23, i64 %24, i32 %27, i64 %28)
  %30 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %10, align 8
  %31 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @rrcr, align 4
  %34 = call i32 @MLXSW_REG(i32 %33)
  %35 = call i32 @mlxsw_reg_write(i32 %32, i32 %34, i8* %21)
  %36 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %36)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mlxsw_reg_rrcr_pack(i8*, i32, i64, i64, i32, i64) #2

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

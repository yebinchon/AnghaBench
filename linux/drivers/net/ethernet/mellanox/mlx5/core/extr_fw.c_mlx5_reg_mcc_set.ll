; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fw.c_mlx5_reg_mcc_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fw.c_mlx5_reg_mcc_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }

@mcc_reg = common dso_local global i32 0, align 4
@instruction = common dso_local global i32 0, align 4
@MLX5_REG_MCC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, i32, i32, i32, i32)* @mlx5_reg_mcc_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_reg_mcc_set(%struct.mlx5_core_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.mlx5_core_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* @mcc_reg, align 4
  %15 = call i32 @MLX5_ST_SZ_DW(i32 %14)
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %11, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %12, align 8
  %19 = load i32, i32* @mcc_reg, align 4
  %20 = call i32 @MLX5_ST_SZ_DW(i32 %19)
  %21 = zext i32 %20 to i64
  %22 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %13, align 8
  %23 = mul nuw i64 4, %21
  %24 = trunc i64 %23 to i32
  %25 = call i32 @memset(i32* %22, i32 0, i32 %24)
  %26 = load i32, i32* @mcc_reg, align 4
  %27 = load i32, i32* @instruction, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @MLX5_SET(i32 %26, i32* %22, i32 %27, i32 %28)
  %30 = load i32, i32* @mcc_reg, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @MLX5_SET(i32 %30, i32* %22, i32 %31, i32 %32)
  %34 = load i32, i32* @mcc_reg, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @MLX5_SET(i32 %34, i32* %22, i32 %35, i32 %36)
  %38 = load i32, i32* @mcc_reg, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @MLX5_SET(i32 %38, i32* %22, i32 %39, i32 %40)
  %42 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %43 = mul nuw i64 4, %21
  %44 = trunc i64 %43 to i32
  %45 = mul nuw i64 4, %16
  %46 = trunc i64 %45 to i32
  %47 = load i32, i32* @MLX5_REG_MCC, align 4
  %48 = call i32 @mlx5_core_access_reg(%struct.mlx5_core_dev* %42, i32* %22, i32 %44, i32* %18, i32 %46, i32 %47, i32 0, i32 1)
  %49 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %49)
  ret i32 %48
}

declare dso_local i32 @MLX5_ST_SZ_DW(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @MLX5_SET(i32, i32*, i32, i32) #1

declare dso_local i32 @mlx5_core_access_reg(%struct.mlx5_core_dev*, i32*, i32, i32*, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

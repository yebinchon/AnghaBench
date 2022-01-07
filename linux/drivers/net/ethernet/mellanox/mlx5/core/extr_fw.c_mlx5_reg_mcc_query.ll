; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fw.c_mlx5_reg_mcc_query.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fw.c_mlx5_reg_mcc_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }

@mcc_reg = common dso_local global i32 0, align 4
@MLX5_REG_MCC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, i32*, i32*, i32*)* @mlx5_reg_mcc_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_reg_mcc_query(%struct.mlx5_core_dev* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.mlx5_core_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load i32, i32* @mcc_reg, align 4
  %14 = call i32 @MLX5_ST_SZ_DW(i32 %13)
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = load i32, i32* @mcc_reg, align 4
  %19 = call i32 @MLX5_ST_SZ_DW(i32 %18)
  %20 = zext i32 %19 to i64
  %21 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %11, align 8
  %22 = mul nuw i64 4, %20
  %23 = trunc i64 %22 to i32
  %24 = call i32 @memset(i32* %21, i32 0, i32 %23)
  %25 = mul nuw i64 4, %15
  %26 = trunc i64 %25 to i32
  %27 = call i32 @memset(i32* %17, i32 0, i32 %26)
  %28 = load i32, i32* @mcc_reg, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @MLX5_SET(i32 %28, i32* %21, i32* %29, i32 %31)
  %33 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %34 = mul nuw i64 4, %20
  %35 = trunc i64 %34 to i32
  %36 = mul nuw i64 4, %15
  %37 = trunc i64 %36 to i32
  %38 = load i32, i32* @MLX5_REG_MCC, align 4
  %39 = call i32 @mlx5_core_access_reg(%struct.mlx5_core_dev* %33, i32* %21, i32 %35, i32* %17, i32 %37, i32 %38, i32 0, i32 0)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %4
  br label %56

43:                                               ; preds = %4
  %44 = load i32, i32* @mcc_reg, align 4
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @MLX5_GET(i32 %44, i32* %17, i32* %45)
  %47 = load i32*, i32** %6, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* @mcc_reg, align 4
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @MLX5_GET(i32 %48, i32* %17, i32* %49)
  %51 = load i32*, i32** %7, align 8
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* @mcc_reg, align 4
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @MLX5_GET(i32 %52, i32* %17, i32* %53)
  %55 = load i32*, i32** %8, align 8
  store i32 %54, i32* %55, align 4
  br label %56

56:                                               ; preds = %43, %42
  %57 = load i32, i32* %12, align 4
  %58 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %58)
  ret i32 %57
}

declare dso_local i32 @MLX5_ST_SZ_DW(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @MLX5_SET(i32, i32*, i32*, i32) #1

declare dso_local i32 @mlx5_core_access_reg(%struct.mlx5_core_dev*, i32*, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @MLX5_GET(i32, i32*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_port.c_mlx5_port_query_eth_autoneg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_port.c_mlx5_port_query_eth_autoneg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }

@ptys_reg = common dso_local global i32 0, align 4
@MLX5_PTYS_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_port_query_eth_autoneg(%struct.mlx5_core_dev* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.mlx5_core_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load i32, i32* @ptys_reg, align 4
  %13 = call i32 @MLX5_ST_SZ_DW(i32 %12)
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %9, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %10, align 8
  %17 = load i32*, i32** %6, align 8
  store i32 0, i32* %17, align 4
  %18 = load i32*, i32** %7, align 8
  store i32 0, i32* %18, align 4
  %19 = load i32*, i32** %8, align 8
  store i32 0, i32* %19, align 4
  %20 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %21 = mul nuw i64 4, %14
  %22 = trunc i64 %21 to i32
  %23 = load i32, i32* @MLX5_PTYS_EN, align 4
  %24 = call i64 @mlx5_query_port_ptys(%struct.mlx5_core_dev* %20, i32* %16, i32 %22, i32 %23, i32 1)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  store i32 1, i32* %11, align 4
  br label %40

27:                                               ; preds = %4
  %28 = load i32, i32* @ptys_reg, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @MLX5_GET(i32 %28, i32* %16, i32* %29)
  %31 = load i32*, i32** %6, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @ptys_reg, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @MLX5_GET(i32 %32, i32* %16, i32* %33)
  %35 = load i32*, i32** %7, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* @ptys_reg, align 4
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @MLX5_GET(i32 %36, i32* %16, i32* %37)
  %39 = load i32*, i32** %8, align 8
  store i32 %38, i32* %39, align 4
  store i32 0, i32* %11, align 4
  br label %40

40:                                               ; preds = %27, %26
  %41 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %41)
  %42 = load i32, i32* %11, align 4
  switch i32 %42, label %44 [
    i32 0, label %43
    i32 1, label %43
  ]

43:                                               ; preds = %40, %40
  ret void

44:                                               ; preds = %40
  unreachable
}

declare dso_local i32 @MLX5_ST_SZ_DW(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @mlx5_query_port_ptys(%struct.mlx5_core_dev*, i32*, i32, i32, i32) #1

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

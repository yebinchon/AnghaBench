; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_port.c_mlx5_port_set_eth_ptys.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_port.c_mlx5_port_set_eth_ptys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }

@ptys_reg = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@local_port = common dso_local global i32 0, align 4
@proto_mask = common dso_local global i32 0, align 4
@MLX5_PTYS_EN = common dso_local global i32 0, align 4
@ext_eth_proto_admin = common dso_local global i32 0, align 4
@eth_proto_admin = common dso_local global i32 0, align 4
@MLX5_REG_PTYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_port_set_eth_ptys(%struct.mlx5_core_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_core_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load i32, i32* @ptys_reg, align 4
  %18 = call i32 @MLX5_ST_SZ_DW(i32 %17)
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %10, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  %22 = load i32, i32* @ptys_reg, align 4
  %23 = call i32 @MLX5_ST_SZ_DW(i32 %22)
  %24 = zext i32 %23 to i64
  %25 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %12, align 8
  %26 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %27 = call i32 @mlx5_port_query_eth_autoneg(%struct.mlx5_core_dev* %26, i32* %15, i32* %14, i32* %13)
  %28 = load i32, i32* %14, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* @EPERM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %71

36:                                               ; preds = %30, %4
  %37 = mul nuw i64 4, %24
  %38 = trunc i64 %37 to i32
  %39 = call i32 @memset(i32* %25, i32 0, i32 %38)
  %40 = load i32, i32* @ptys_reg, align 4
  %41 = load i32, i32* @local_port, align 4
  %42 = call i32 @MLX5_SET(i32 %40, i32* %25, i32 %41, i32 1)
  %43 = load i32, i32* @ptys_reg, align 4
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @MLX5_SET(i32 %43, i32* %25, i32 %44, i32 %45)
  %47 = load i32, i32* @ptys_reg, align 4
  %48 = load i32, i32* @proto_mask, align 4
  %49 = load i32, i32* @MLX5_PTYS_EN, align 4
  %50 = call i32 @MLX5_SET(i32 %47, i32* %25, i32 %48, i32 %49)
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %36
  %54 = load i32, i32* @ptys_reg, align 4
  %55 = load i32, i32* @ext_eth_proto_admin, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @MLX5_SET(i32 %54, i32* %25, i32 %55, i32 %56)
  br label %63

58:                                               ; preds = %36
  %59 = load i32, i32* @ptys_reg, align 4
  %60 = load i32, i32* @eth_proto_admin, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @MLX5_SET(i32 %59, i32* %25, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %58, %53
  %64 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %65 = mul nuw i64 4, %24
  %66 = trunc i64 %65 to i32
  %67 = mul nuw i64 4, %19
  %68 = trunc i64 %67 to i32
  %69 = load i32, i32* @MLX5_REG_PTYS, align 4
  %70 = call i32 @mlx5_core_access_reg(%struct.mlx5_core_dev* %64, i32* %25, i32 %66, i32* %21, i32 %68, i32 %69, i32 0, i32 1)
  store i32 %70, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %71

71:                                               ; preds = %63, %33
  %72 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %72)
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @MLX5_ST_SZ_DW(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mlx5_port_query_eth_autoneg(%struct.mlx5_core_dev*, i32*, i32*, i32*) #1

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

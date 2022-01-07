; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_qp.c___mlx4_qp_reserve_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_qp.c___mlx4_qp_reserve_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_priv = type { %struct.mlx4_qp_table }
%struct.mlx4_qp_table = type { i32 }

@MLX4_RESERVE_ETH_BF_QP = common dso_local global i64 0, align 8
@MLX4_MAX_BF_QP_RANGE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLX4_QP_TABLE_ZONE_GENERAL = common dso_local global i32 0, align 4
@MLX4_RESERVE_A0_QP = common dso_local global i64 0, align 8
@MLX4_QP_TABLE_ZONE_RAW_ETH = common dso_local global i32 0, align 4
@MLX4_QP_TABLE_ZONE_RSS = common dso_local global i32 0, align 4
@MLX4_BF_QP_SKIP_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__mlx4_qp_reserve_range(%struct.mlx4_dev* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.mlx4_priv*, align 8
  %15 = alloca %struct.mlx4_qp_table*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = load i64, i64* @MLX4_RESERVE_ETH_BF_QP, align 8
  %18 = trunc i64 %17 to i32
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %13, align 4
  %24 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %25 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %24)
  store %struct.mlx4_priv* %25, %struct.mlx4_priv** %14, align 8
  %26 = load %struct.mlx4_priv*, %struct.mlx4_priv** %14, align 8
  %27 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %26, i32 0, i32 0
  store %struct.mlx4_qp_table* %27, %struct.mlx4_qp_table** %15, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @MLX4_MAX_BF_QP_RANGE, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %5
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %75

37:                                               ; preds = %31, %5
  %38 = load i32, i32* @MLX4_QP_TABLE_ZONE_GENERAL, align 4
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i64, i64* @MLX4_RESERVE_A0_QP, align 8
  %41 = trunc i64 %40 to i32
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %37
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32, i32* @MLX4_QP_TABLE_ZONE_RAW_ETH, align 4
  store i32 %48, i32* %12, align 4
  br label %51

49:                                               ; preds = %44
  %50 = load i32, i32* @MLX4_QP_TABLE_ZONE_RSS, align 4
  store i32 %50, i32* %12, align 4
  br label %51

51:                                               ; preds = %49, %47
  br label %52

52:                                               ; preds = %51, %37
  %53 = load %struct.mlx4_qp_table*, %struct.mlx4_qp_table** %15, align 8
  %54 = getelementptr inbounds %struct.mlx4_qp_table, %struct.mlx4_qp_table* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %52
  %62 = load i32, i32* @MLX4_BF_QP_SKIP_MASK, align 4
  br label %64

63:                                               ; preds = %52
  br label %64

64:                                               ; preds = %63, %61
  %65 = phi i32 [ %62, %61 ], [ 0, %63 ]
  %66 = call i32 @mlx4_zone_alloc_entries(i32 %55, i32 %56, i32 %57, i32 %58, i32 %65, i32* null)
  %67 = load i32*, i32** %10, align 8
  store i32 %66, i32* %67, align 4
  %68 = load i32*, i32** %10, align 8
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %71, label %74

71:                                               ; preds = %64
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %6, align 4
  br label %75

74:                                               ; preds = %64
  store i32 0, i32* %6, align 4
  br label %75

75:                                               ; preds = %74, %71, %34
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_zone_alloc_entries(i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

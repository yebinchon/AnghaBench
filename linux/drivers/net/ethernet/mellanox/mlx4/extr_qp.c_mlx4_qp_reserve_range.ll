; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_qp.c_mlx4_qp_reserve_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_qp.c_mlx4_qp_reserve_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@RES_QP = common dso_local global i32 0, align 4
@RES_OP_RESERVE = common dso_local global i32 0, align 4
@MLX4_CMD_ALLOC_RES = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_A = common dso_local global i32 0, align 4
@MLX4_CMD_WRAPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_qp_reserve_range(%struct.mlx4_dev* %0, i32 %1, i32 %2, i32* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %18 = load i32, i32* @RES_QP, align 4
  %19 = load i64, i64* %13, align 8
  %20 = trunc i64 %19 to i32
  %21 = and i32 %20, 3
  %22 = shl i32 %21, 30
  %23 = or i32 %18, %22
  store i32 %23, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %24 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %25 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %12, align 8
  %29 = and i64 %28, %27
  store i64 %29, i64* %12, align 8
  %30 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %31 = call i64 @mlx4_is_mfunc(%struct.mlx4_dev* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %57

33:                                               ; preds = %6
  %34 = load i64, i64* %12, align 8
  %35 = trunc i64 %34 to i32
  %36 = shl i32 %35, 24
  %37 = load i32, i32* %9, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @set_param_l(i32* %15, i32 %38)
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @set_param_h(i32* %15, i32 %40)
  %42 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %43 = load i32, i32* %15, align 4
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* @RES_OP_RESERVE, align 4
  %46 = load i32, i32* @MLX4_CMD_ALLOC_RES, align 4
  %47 = load i32, i32* @MLX4_CMD_TIME_CLASS_A, align 4
  %48 = load i32, i32* @MLX4_CMD_WRAPPED, align 4
  %49 = call i32 @mlx4_cmd_imm(%struct.mlx4_dev* %42, i32 %43, i32* %16, i32 %44, i32 %45, i32 %46, i32 %47, i32 %48)
  store i32 %49, i32* %17, align 4
  %50 = load i32, i32* %17, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %33
  %53 = load i32, i32* %17, align 4
  store i32 %53, i32* %7, align 4
  br label %64

54:                                               ; preds = %33
  %55 = call i32 @get_param_l(i32* %16)
  %56 = load i32*, i32** %11, align 8
  store i32 %55, i32* %56, align 4
  store i32 0, i32* %7, align 4
  br label %64

57:                                               ; preds = %6
  %58 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32*, i32** %11, align 8
  %62 = load i64, i64* %12, align 8
  %63 = call i32 @__mlx4_qp_reserve_range(%struct.mlx4_dev* %58, i32 %59, i32 %60, i32* %61, i64 %62)
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %57, %54, %52
  %65 = load i32, i32* %7, align 4
  ret i32 %65
}

declare dso_local i64 @mlx4_is_mfunc(%struct.mlx4_dev*) #1

declare dso_local i32 @set_param_l(i32*, i32) #1

declare dso_local i32 @set_param_h(i32*, i32) #1

declare dso_local i32 @mlx4_cmd_imm(%struct.mlx4_dev*, i32, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @get_param_l(i32*) #1

declare dso_local i32 @__mlx4_qp_reserve_range(%struct.mlx4_dev*, i32, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

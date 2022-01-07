; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_cq.c_mlx4_cq_alloc_icm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_cq.c_mlx4_cq_alloc_icm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }

@RES_CQ = common dso_local global i32 0, align 4
@RES_OP_RESERVE_AND_MAP = common dso_local global i32 0, align 4
@MLX4_CMD_ALLOC_RES = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_A = common dso_local global i32 0, align 4
@MLX4_CMD_WRAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*, i32*, i64)* @mlx4_cq_alloc_icm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_cq_alloc_icm(%struct.mlx4_dev* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i32, i32* @RES_CQ, align 4
  %12 = load i64, i64* %7, align 8
  %13 = trunc i64 %12 to i32
  %14 = and i32 %13, 3
  %15 = shl i32 %14, 30
  %16 = or i32 %11, %15
  store i32 %16, i32* %8, align 4
  %17 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %18 = call i64 @mlx4_is_mfunc(%struct.mlx4_dev* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %3
  %21 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @RES_OP_RESERVE_AND_MAP, align 4
  %24 = load i32, i32* @MLX4_CMD_ALLOC_RES, align 4
  %25 = load i32, i32* @MLX4_CMD_TIME_CLASS_A, align 4
  %26 = load i32, i32* @MLX4_CMD_WRAPPED, align 4
  %27 = call i32 @mlx4_cmd_imm(%struct.mlx4_dev* %21, i32 0, i32* %9, i32 %22, i32 %23, i32 %24, i32 %25, i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %4, align 4
  br label %39

32:                                               ; preds = %20
  %33 = call i32 @get_param_l(i32* %9)
  %34 = load i32*, i32** %6, align 8
  store i32 %33, i32* %34, align 4
  store i32 0, i32* %4, align 4
  br label %39

35:                                               ; preds = %3
  %36 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @__mlx4_cq_alloc_icm(%struct.mlx4_dev* %36, i32* %37)
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %35, %32, %30
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i64 @mlx4_is_mfunc(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_cmd_imm(%struct.mlx4_dev*, i32, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @get_param_l(i32*) #1

declare dso_local i32 @__mlx4_cq_alloc_icm(%struct.mlx4_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_qp.c_mlx4_qp_release_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_qp.c_mlx4_qp_release_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }

@RES_QP = common dso_local global i32 0, align 4
@RES_OP_RESERVE = common dso_local global i32 0, align 4
@MLX4_CMD_FREE_RES = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_A = common dso_local global i32 0, align 4
@MLX4_CMD_WRAPPED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Failed to release qp range base:%d cnt:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_qp_release_range(%struct.mlx4_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mlx4_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  br label %42

12:                                               ; preds = %3
  %13 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %14 = call i64 @mlx4_is_mfunc(%struct.mlx4_dev* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %12
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @set_param_l(i32* %7, i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @set_param_h(i32* %7, i32 %19)
  %21 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @RES_QP, align 4
  %24 = load i32, i32* @RES_OP_RESERVE, align 4
  %25 = load i32, i32* @MLX4_CMD_FREE_RES, align 4
  %26 = load i32, i32* @MLX4_CMD_TIME_CLASS_A, align 4
  %27 = load i32, i32* @MLX4_CMD_WRAPPED, align 4
  %28 = call i32 @mlx4_cmd(%struct.mlx4_dev* %21, i32 %22, i32 %23, i32 %24, i32 %25, i32 %26, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %16
  %32 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @mlx4_warn(%struct.mlx4_dev* %32, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %31, %16
  br label %42

37:                                               ; preds = %12
  %38 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @__mlx4_qp_release_range(%struct.mlx4_dev* %38, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %11, %37, %36
  ret void
}

declare dso_local i64 @mlx4_is_mfunc(%struct.mlx4_dev*) #1

declare dso_local i32 @set_param_l(i32*, i32) #1

declare dso_local i32 @set_param_h(i32*, i32) #1

declare dso_local i32 @mlx4_cmd(%struct.mlx4_dev*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mlx4_warn(%struct.mlx4_dev*, i8*, i32, i32) #1

declare dso_local i32 @__mlx4_qp_release_range(%struct.mlx4_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

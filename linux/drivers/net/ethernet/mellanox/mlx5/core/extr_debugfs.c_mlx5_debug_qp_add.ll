; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_debugfs.c_mlx5_debug_qp_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_debugfs.c_mlx5_debug_qp_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mlx5_core_qp = type { i32*, i32 }

@mlx5_debugfs_root = common dso_local global i32 0, align 4
@MLX5_DBG_RSC_QP = common dso_local global i32 0, align 4
@qp_fields = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_debug_qp_add(%struct.mlx5_core_dev* %0, %struct.mlx5_core_qp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca %struct.mlx5_core_qp*, align 8
  %6 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store %struct.mlx5_core_qp* %1, %struct.mlx5_core_qp** %5, align 8
  %7 = load i32, i32* @mlx5_debugfs_root, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %34

10:                                               ; preds = %2
  %11 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %12 = load i32, i32* @MLX5_DBG_RSC_QP, align 4
  %13 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %14 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.mlx5_core_qp*, %struct.mlx5_core_qp** %5, align 8
  %18 = getelementptr inbounds %struct.mlx5_core_qp, %struct.mlx5_core_qp* %17, i32 0, i32 0
  %19 = load %struct.mlx5_core_qp*, %struct.mlx5_core_qp** %5, align 8
  %20 = getelementptr inbounds %struct.mlx5_core_qp, %struct.mlx5_core_qp* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @qp_fields, align 4
  %23 = load i32, i32* @qp_fields, align 4
  %24 = call i32 @ARRAY_SIZE(i32 %23)
  %25 = load %struct.mlx5_core_qp*, %struct.mlx5_core_qp** %5, align 8
  %26 = call i32 @add_res_tree(%struct.mlx5_core_dev* %11, i32 %12, i32 %16, i32** %18, i32 %21, i32 %22, i32 %24, %struct.mlx5_core_qp* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %10
  %30 = load %struct.mlx5_core_qp*, %struct.mlx5_core_qp** %5, align 8
  %31 = getelementptr inbounds %struct.mlx5_core_qp, %struct.mlx5_core_qp* %30, i32 0, i32 0
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %29, %10
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %32, %9
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @add_res_tree(%struct.mlx5_core_dev*, i32, i32, i32**, i32, i32, i32, %struct.mlx5_core_qp*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

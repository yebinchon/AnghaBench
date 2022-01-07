; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_qp.c_mlx5_core_create_sq_tracked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_qp.c_mlx5_core_create_sq_tracked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_core_qp = type { i32, i32 }

@create_sq_in = common dso_local global i32 0, align 4
@uid = common dso_local global i32 0, align 4
@MLX5_RES_SQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_core_create_sq_tracked(%struct.mlx5_core_dev* %0, i32* %1, i32 %2, %struct.mlx5_core_qp* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_core_dev*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx5_core_qp*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.mlx5_core_qp* %3, %struct.mlx5_core_qp** %9, align 8
  %12 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @mlx5_core_create_sq(%struct.mlx5_core_dev* %12, i32* %13, i32 %14, i32* %11)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %5, align 4
  br label %48

20:                                               ; preds = %4
  %21 = load i32, i32* @create_sq_in, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* @uid, align 4
  %24 = call i32 @MLX5_GET(i32 %21, i32* %22, i32 %23)
  %25 = load %struct.mlx5_core_qp*, %struct.mlx5_core_qp** %9, align 8
  %26 = getelementptr inbounds %struct.mlx5_core_qp, %struct.mlx5_core_qp* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load %struct.mlx5_core_qp*, %struct.mlx5_core_qp** %9, align 8
  %29 = getelementptr inbounds %struct.mlx5_core_qp, %struct.mlx5_core_qp* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %31 = load %struct.mlx5_core_qp*, %struct.mlx5_core_qp** %9, align 8
  %32 = load i32, i32* @MLX5_RES_SQ, align 4
  %33 = call i32 @create_resource_common(%struct.mlx5_core_dev* %30, %struct.mlx5_core_qp* %31, i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %20
  br label %38

37:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %48

38:                                               ; preds = %36
  %39 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %40 = load %struct.mlx5_core_qp*, %struct.mlx5_core_qp** %9, align 8
  %41 = getelementptr inbounds %struct.mlx5_core_qp, %struct.mlx5_core_qp* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.mlx5_core_qp*, %struct.mlx5_core_qp** %9, align 8
  %44 = getelementptr inbounds %struct.mlx5_core_qp, %struct.mlx5_core_qp* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @destroy_sq_tracked(%struct.mlx5_core_dev* %39, i32 %42, i32 %45)
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %38, %37, %18
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @mlx5_core_create_sq(%struct.mlx5_core_dev*, i32*, i32, i32*) #1

declare dso_local i32 @MLX5_GET(i32, i32*, i32) #1

declare dso_local i32 @create_resource_common(%struct.mlx5_core_dev*, %struct.mlx5_core_qp*, i32) #1

declare dso_local i32 @destroy_sq_tracked(%struct.mlx5_core_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

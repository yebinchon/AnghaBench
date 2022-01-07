; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eq.c_mlx5_eq_get_eqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eq.c_mlx5_eq_get_eqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_eqe = type { i32 }
%struct.mlx5_eq = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlx5_eqe* @mlx5_eq_get_eqe(%struct.mlx5_eq* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx5_eq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_eqe*, align 8
  store %struct.mlx5_eq* %0, %struct.mlx5_eq** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mlx5_eq*, %struct.mlx5_eq** %3, align 8
  %8 = getelementptr inbounds %struct.mlx5_eq, %struct.mlx5_eq* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %4, align 4
  %11 = add nsw i32 %9, %10
  store i32 %11, i32* %5, align 4
  %12 = load %struct.mlx5_eq*, %struct.mlx5_eq** %3, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.mlx5_eq*, %struct.mlx5_eq** %3, align 8
  %15 = getelementptr inbounds %struct.mlx5_eq, %struct.mlx5_eq* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = sub nsw i32 %16, 1
  %18 = and i32 %13, %17
  %19 = call %struct.mlx5_eqe* @get_eqe(%struct.mlx5_eq* %12, i32 %18)
  store %struct.mlx5_eqe* %19, %struct.mlx5_eqe** %6, align 8
  %20 = load %struct.mlx5_eqe*, %struct.mlx5_eqe** %6, align 8
  %21 = getelementptr inbounds %struct.mlx5_eqe, %struct.mlx5_eqe* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 1
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.mlx5_eq*, %struct.mlx5_eq** %3, align 8
  %26 = getelementptr inbounds %struct.mlx5_eq, %struct.mlx5_eq* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %24, %27
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = xor i32 %23, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %2
  br label %38

36:                                               ; preds = %2
  %37 = load %struct.mlx5_eqe*, %struct.mlx5_eqe** %6, align 8
  br label %38

38:                                               ; preds = %36, %35
  %39 = phi %struct.mlx5_eqe* [ null, %35 ], [ %37, %36 ]
  store %struct.mlx5_eqe* %39, %struct.mlx5_eqe** %6, align 8
  %40 = load %struct.mlx5_eqe*, %struct.mlx5_eqe** %6, align 8
  %41 = icmp ne %struct.mlx5_eqe* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = call i32 (...) @dma_rmb()
  br label %44

44:                                               ; preds = %42, %38
  %45 = load %struct.mlx5_eqe*, %struct.mlx5_eqe** %6, align 8
  ret %struct.mlx5_eqe* %45
}

declare dso_local %struct.mlx5_eqe* @get_eqe(%struct.mlx5_eq*, i32) #1

declare dso_local i32 @dma_rmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_build_tx2sq_maps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_build_tx2sq_maps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.mlx5e_txqsq**, %struct.TYPE_2__ }
%struct.mlx5e_txqsq = type { i64 }
%struct.TYPE_2__ = type { i32, %struct.mlx5e_channel** }
%struct.mlx5e_channel = type { i32, %struct.mlx5e_txqsq* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_priv*)* @mlx5e_build_tx2sq_maps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_build_tx2sq_maps(%struct.mlx5e_priv* %0) #0 {
  %2 = alloca %struct.mlx5e_priv*, align 8
  %3 = alloca %struct.mlx5e_channel*, align 8
  %4 = alloca %struct.mlx5e_txqsq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %2, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %48, %1
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %10 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %8, %12
  br i1 %13, label %14, label %51

14:                                               ; preds = %7
  %15 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %16 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load %struct.mlx5e_channel**, %struct.mlx5e_channel*** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.mlx5e_channel*, %struct.mlx5e_channel** %18, i64 %20
  %22 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %21, align 8
  store %struct.mlx5e_channel* %22, %struct.mlx5e_channel** %3, align 8
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %44, %14
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %3, align 8
  %26 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %47

29:                                               ; preds = %23
  %30 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %3, align 8
  %31 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %30, i32 0, i32 1
  %32 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %32, i64 %34
  store %struct.mlx5e_txqsq* %35, %struct.mlx5e_txqsq** %4, align 8
  %36 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %4, align 8
  %37 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %38 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %37, i32 0, i32 0
  %39 = load %struct.mlx5e_txqsq**, %struct.mlx5e_txqsq*** %38, align 8
  %40 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %4, align 8
  %41 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %39, i64 %42
  store %struct.mlx5e_txqsq* %36, %struct.mlx5e_txqsq** %43, align 8
  br label %44

44:                                               ; preds = %29
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %23

47:                                               ; preds = %23
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %7

51:                                               ; preds = %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

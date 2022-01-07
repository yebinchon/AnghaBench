; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_enxskumem.h_mlx5e_xsk_get_umem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_enxskumem.h_mlx5e_xsk_get_umem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdp_umem = type { i32 }
%struct.mlx5e_params = type { i64 }
%struct.mlx5e_xsk = type { %struct.xdp_umem** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xdp_umem* (%struct.mlx5e_params*, %struct.mlx5e_xsk*, i64)* @mlx5e_xsk_get_umem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xdp_umem* @mlx5e_xsk_get_umem(%struct.mlx5e_params* %0, %struct.mlx5e_xsk* %1, i64 %2) #0 {
  %4 = alloca %struct.xdp_umem*, align 8
  %5 = alloca %struct.mlx5e_params*, align 8
  %6 = alloca %struct.mlx5e_xsk*, align 8
  %7 = alloca i64, align 8
  store %struct.mlx5e_params* %0, %struct.mlx5e_params** %5, align 8
  store %struct.mlx5e_xsk* %1, %struct.mlx5e_xsk** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.mlx5e_xsk*, %struct.mlx5e_xsk** %6, align 8
  %9 = icmp ne %struct.mlx5e_xsk* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load %struct.mlx5e_xsk*, %struct.mlx5e_xsk** %6, align 8
  %12 = getelementptr inbounds %struct.mlx5e_xsk, %struct.mlx5e_xsk* %11, i32 0, i32 0
  %13 = load %struct.xdp_umem**, %struct.xdp_umem*** %12, align 8
  %14 = icmp ne %struct.xdp_umem** %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10, %3
  store %struct.xdp_umem* null, %struct.xdp_umem** %4, align 8
  br label %33

16:                                               ; preds = %10
  %17 = load i64, i64* %7, align 8
  %18 = load %struct.mlx5e_params*, %struct.mlx5e_params** %5, align 8
  %19 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp uge i64 %17, %20
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  store %struct.xdp_umem* null, %struct.xdp_umem** %4, align 8
  br label %33

26:                                               ; preds = %16
  %27 = load %struct.mlx5e_xsk*, %struct.mlx5e_xsk** %6, align 8
  %28 = getelementptr inbounds %struct.mlx5e_xsk, %struct.mlx5e_xsk* %27, i32 0, i32 0
  %29 = load %struct.xdp_umem**, %struct.xdp_umem*** %28, align 8
  %30 = load i64, i64* %7, align 8
  %31 = getelementptr inbounds %struct.xdp_umem*, %struct.xdp_umem** %29, i64 %30
  %32 = load %struct.xdp_umem*, %struct.xdp_umem** %31, align 8
  store %struct.xdp_umem* %32, %struct.xdp_umem** %4, align 8
  br label %33

33:                                               ; preds = %26, %25, %15
  %34 = load %struct.xdp_umem*, %struct.xdp_umem** %4, align 8
  ret %struct.xdp_umem* %34
}

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

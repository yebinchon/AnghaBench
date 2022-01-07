; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/extr_umem.c_mlx5e_build_xsk_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/extr_umem.c_mlx5e_build_xsk_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdp_umem = type { i64, i64 }
%struct.mlx5e_xsk_param = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5e_build_xsk_param(%struct.xdp_umem* %0, %struct.mlx5e_xsk_param* %1) #0 {
  %3 = alloca %struct.xdp_umem*, align 8
  %4 = alloca %struct.mlx5e_xsk_param*, align 8
  store %struct.xdp_umem* %0, %struct.xdp_umem** %3, align 8
  store %struct.mlx5e_xsk_param* %1, %struct.mlx5e_xsk_param** %4, align 8
  %5 = load %struct.xdp_umem*, %struct.xdp_umem** %3, align 8
  %6 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.mlx5e_xsk_param*, %struct.mlx5e_xsk_param** %4, align 8
  %9 = getelementptr inbounds %struct.mlx5e_xsk_param, %struct.mlx5e_xsk_param* %8, i32 0, i32 1
  store i64 %7, i64* %9, align 8
  %10 = load %struct.xdp_umem*, %struct.xdp_umem** %3, align 8
  %11 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.xdp_umem*, %struct.xdp_umem** %3, align 8
  %14 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %12, %15
  %17 = load %struct.mlx5e_xsk_param*, %struct.mlx5e_xsk_param** %4, align 8
  %18 = getelementptr inbounds %struct.mlx5e_xsk_param, %struct.mlx5e_xsk_param* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

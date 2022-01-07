; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_params.c_mlx5e_rx_is_xdp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_params.c_mlx5e_rx_is_xdp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_params = type { i64 }
%struct.mlx5e_xsk_param = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_params*, %struct.mlx5e_xsk_param*)* @mlx5e_rx_is_xdp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_rx_is_xdp(%struct.mlx5e_params* %0, %struct.mlx5e_xsk_param* %1) #0 {
  %3 = alloca %struct.mlx5e_params*, align 8
  %4 = alloca %struct.mlx5e_xsk_param*, align 8
  store %struct.mlx5e_params* %0, %struct.mlx5e_params** %3, align 8
  store %struct.mlx5e_xsk_param* %1, %struct.mlx5e_xsk_param** %4, align 8
  %5 = load %struct.mlx5e_params*, %struct.mlx5e_params** %3, align 8
  %6 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load %struct.mlx5e_xsk_param*, %struct.mlx5e_xsk_param** %4, align 8
  %11 = icmp ne %struct.mlx5e_xsk_param* %10, null
  br label %12

12:                                               ; preds = %9, %2
  %13 = phi i1 [ true, %2 ], [ %11, %9 ]
  %14 = zext i1 %13 to i32
  ret i32 %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

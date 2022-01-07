; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_params.c_mlx5e_get_rq_headroom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_params.c_mlx5e_get_rq_headroom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5e_params = type { i64 }
%struct.mlx5e_xsk_param = type { i32 }

@MLX5_WQ_TYPE_CYCLIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_get_rq_headroom(%struct.mlx5_core_dev* %0, %struct.mlx5e_params* %1, %struct.mlx5e_xsk_param* %2) #0 {
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca %struct.mlx5e_params*, align 8
  %6 = alloca %struct.mlx5e_xsk_param*, align 8
  %7 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store %struct.mlx5e_params* %1, %struct.mlx5e_params** %5, align 8
  store %struct.mlx5e_xsk_param* %2, %struct.mlx5e_xsk_param** %6, align 8
  %8 = load %struct.mlx5e_params*, %struct.mlx5e_params** %5, align 8
  %9 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @MLX5_WQ_TYPE_CYCLIC, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load %struct.mlx5e_params*, %struct.mlx5e_params** %5, align 8
  %15 = load %struct.mlx5e_xsk_param*, %struct.mlx5e_xsk_param** %6, align 8
  %16 = call i32 @mlx5e_rx_is_linear_skb(%struct.mlx5e_params* %14, %struct.mlx5e_xsk_param* %15)
  br label %22

17:                                               ; preds = %3
  %18 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %19 = load %struct.mlx5e_params*, %struct.mlx5e_params** %5, align 8
  %20 = load %struct.mlx5e_xsk_param*, %struct.mlx5e_xsk_param** %6, align 8
  %21 = call i32 @mlx5e_rx_mpwqe_is_linear_skb(%struct.mlx5_core_dev* %18, %struct.mlx5e_params* %19, %struct.mlx5e_xsk_param* %20)
  br label %22

22:                                               ; preds = %17, %13
  %23 = phi i32 [ %16, %13 ], [ %21, %17 ]
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load %struct.mlx5e_params*, %struct.mlx5e_params** %5, align 8
  %28 = load %struct.mlx5e_xsk_param*, %struct.mlx5e_xsk_param** %6, align 8
  %29 = call i32 @mlx5e_get_linear_rq_headroom(%struct.mlx5e_params* %27, %struct.mlx5e_xsk_param* %28)
  br label %31

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %30, %26
  %32 = phi i32 [ %29, %26 ], [ 0, %30 ]
  ret i32 %32
}

declare dso_local i32 @mlx5e_rx_is_linear_skb(%struct.mlx5e_params*, %struct.mlx5e_xsk_param*) #1

declare dso_local i32 @mlx5e_rx_mpwqe_is_linear_skb(%struct.mlx5_core_dev*, %struct.mlx5e_params*, %struct.mlx5e_xsk_param*) #1

declare dso_local i32 @mlx5e_get_linear_rq_headroom(%struct.mlx5e_params*, %struct.mlx5e_xsk_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

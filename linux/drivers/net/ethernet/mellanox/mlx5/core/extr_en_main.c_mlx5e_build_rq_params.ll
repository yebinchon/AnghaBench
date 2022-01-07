; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_build_rq_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_build_rq_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5e_params = type { i32 }

@MLX5E_PFLAG_RX_STRIDING_RQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5e_build_rq_params(%struct.mlx5_core_dev* %0, %struct.mlx5e_params* %1) #0 {
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca %struct.mlx5e_params*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  store %struct.mlx5e_params* %1, %struct.mlx5e_params** %4, align 8
  %5 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %6 = call i32 @slow_pci_heuristic(%struct.mlx5_core_dev* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %26, label %8

8:                                                ; preds = %2
  %9 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %10 = load %struct.mlx5e_params*, %struct.mlx5e_params** %4, align 8
  %11 = call i64 @mlx5e_striding_rq_possible(%struct.mlx5_core_dev* %9, %struct.mlx5e_params* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %8
  %14 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %15 = load %struct.mlx5e_params*, %struct.mlx5e_params** %4, align 8
  %16 = call i64 @mlx5e_rx_mpwqe_is_linear_skb(%struct.mlx5_core_dev* %14, %struct.mlx5e_params* %15, i32* null)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = load %struct.mlx5e_params*, %struct.mlx5e_params** %4, align 8
  %20 = call i32 @mlx5e_rx_is_linear_skb(%struct.mlx5e_params* %19, i32* null)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18, %13
  %23 = load %struct.mlx5e_params*, %struct.mlx5e_params** %4, align 8
  %24 = load i32, i32* @MLX5E_PFLAG_RX_STRIDING_RQ, align 4
  %25 = call i32 @MLX5E_SET_PFLAG(%struct.mlx5e_params* %23, i32 %24, i32 1)
  br label %26

26:                                               ; preds = %22, %18, %8, %2
  %27 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %28 = load %struct.mlx5e_params*, %struct.mlx5e_params** %4, align 8
  %29 = call i32 @mlx5e_set_rq_type(%struct.mlx5_core_dev* %27, %struct.mlx5e_params* %28)
  %30 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %31 = load %struct.mlx5e_params*, %struct.mlx5e_params** %4, align 8
  %32 = call i32 @mlx5e_init_rq_type_params(%struct.mlx5_core_dev* %30, %struct.mlx5e_params* %31)
  ret void
}

declare dso_local i32 @slow_pci_heuristic(%struct.mlx5_core_dev*) #1

declare dso_local i64 @mlx5e_striding_rq_possible(%struct.mlx5_core_dev*, %struct.mlx5e_params*) #1

declare dso_local i64 @mlx5e_rx_mpwqe_is_linear_skb(%struct.mlx5_core_dev*, %struct.mlx5e_params*, i32*) #1

declare dso_local i32 @mlx5e_rx_is_linear_skb(%struct.mlx5e_params*, i32*) #1

declare dso_local i32 @MLX5E_SET_PFLAG(%struct.mlx5e_params*, i32, i32) #1

declare dso_local i32 @mlx5e_set_rq_type(%struct.mlx5_core_dev*, %struct.mlx5e_params*) #1

declare dso_local i32 @mlx5e_init_rq_type_params(%struct.mlx5_core_dev*, %struct.mlx5e_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

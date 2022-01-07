; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_txrx.c_mlx5e_napi_xsk_post.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_txrx.c_mlx5e_napi_xsk_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_xdpsq = type { i32 }
%struct.mlx5e_rq = type { i32 (%struct.mlx5e_rq*)* }

@MLX5E_TX_XSK_POLL_BUDGET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_xdpsq*, %struct.mlx5e_rq*)* @mlx5e_napi_xsk_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_napi_xsk_post(%struct.mlx5e_xdpsq* %0, %struct.mlx5e_rq* %1) #0 {
  %3 = alloca %struct.mlx5e_xdpsq*, align 8
  %4 = alloca %struct.mlx5e_rq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mlx5e_xdpsq* %0, %struct.mlx5e_xdpsq** %3, align 8
  store %struct.mlx5e_rq* %1, %struct.mlx5e_rq** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %3, align 8
  %8 = call i32 @mlx5e_xsk_update_tx_wakeup(%struct.mlx5e_xdpsq* %7)
  %9 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %3, align 8
  %10 = load i32, i32* @MLX5E_TX_XSK_POLL_BUDGET, align 4
  %11 = call i32 @mlx5e_xsk_tx(%struct.mlx5e_xdpsq* %9, i32 %10)
  %12 = load i32, i32* %5, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %5, align 4
  %14 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %3, align 8
  %15 = call i32 @mlx5e_xsk_update_tx_wakeup(%struct.mlx5e_xdpsq* %14)
  %16 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %4, align 8
  %17 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %16, i32 0, i32 0
  %18 = load i32 (%struct.mlx5e_rq*)*, i32 (%struct.mlx5e_rq*)** %17, align 8
  %19 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %4, align 8
  %20 = call i32 %18(%struct.mlx5e_rq* %19)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @mlx5e_xsk_update_rx_wakeup(%struct.mlx5e_rq* %21, i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  ret i32 %26
}

declare dso_local i32 @mlx5e_xsk_update_tx_wakeup(%struct.mlx5e_xdpsq*) #1

declare dso_local i32 @mlx5e_xsk_tx(%struct.mlx5e_xdpsq*, i32) #1

declare dso_local i32 @mlx5e_xsk_update_rx_wakeup(%struct.mlx5e_rq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

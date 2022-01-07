; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_xdp.c_mlx5e_xdp_rx_poll_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_xdp.c_mlx5e_xdp_rx_poll_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_rq = type { i32, %struct.mlx5e_xdpsq* }
%struct.mlx5e_xdpsq = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@MLX5E_RQ_FLAG_XDP_REDIRECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5e_xdp_rx_poll_complete(%struct.mlx5e_rq* %0) #0 {
  %2 = alloca %struct.mlx5e_rq*, align 8
  %3 = alloca %struct.mlx5e_xdpsq*, align 8
  store %struct.mlx5e_rq* %0, %struct.mlx5e_rq** %2, align 8
  %4 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %2, align 8
  %5 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %4, i32 0, i32 1
  %6 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %5, align 8
  store %struct.mlx5e_xdpsq* %6, %struct.mlx5e_xdpsq** %3, align 8
  %7 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %3, align 8
  %8 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %3, align 8
  %14 = call i32 @mlx5e_xdp_mpwqe_complete(%struct.mlx5e_xdpsq* %13)
  br label %15

15:                                               ; preds = %12, %1
  %16 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %3, align 8
  %17 = call i32 @mlx5e_xmit_xdp_doorbell(%struct.mlx5e_xdpsq* %16)
  %18 = load i32, i32* @MLX5E_RQ_FLAG_XDP_REDIRECT, align 4
  %19 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %2, align 8
  %20 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @test_bit(i32 %18, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %15
  %25 = call i32 (...) @xdp_do_flush_map()
  %26 = load i32, i32* @MLX5E_RQ_FLAG_XDP_REDIRECT, align 4
  %27 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %2, align 8
  %28 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @__clear_bit(i32 %26, i32 %29)
  br label %31

31:                                               ; preds = %24, %15
  ret void
}

declare dso_local i32 @mlx5e_xdp_mpwqe_complete(%struct.mlx5e_xdpsq*) #1

declare dso_local i32 @mlx5e_xmit_xdp_doorbell(%struct.mlx5e_xdpsq*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @xdp_do_flush_map(...) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

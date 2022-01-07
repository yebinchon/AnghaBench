; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_xdp.c_mlx5e_xdp_mpwqe_session_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_xdp.c_mlx5e_xdp_mpwqe_session_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_xdpsq = type { i32, %struct.mlx5_wq_cyc, %struct.mlx5e_xdpsq_stats*, %struct.mlx5e_xdp_mpwqe }
%struct.mlx5_wq_cyc = type { i32 }
%struct.mlx5e_xdpsq_stats = type { i32 }
%struct.mlx5e_xdp_mpwqe = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MLX5_SEND_WQE_MAX_WQEBBS = common dso_local global i64 0, align 8
@MLX5E_XDP_TX_EMPTY_DS_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_xdpsq*)* @mlx5e_xdp_mpwqe_session_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_xdp_mpwqe_session_start(%struct.mlx5e_xdpsq* %0) #0 {
  %2 = alloca %struct.mlx5e_xdpsq*, align 8
  %3 = alloca %struct.mlx5e_xdp_mpwqe*, align 8
  %4 = alloca %struct.mlx5e_xdpsq_stats*, align 8
  %5 = alloca %struct.mlx5_wq_cyc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.mlx5e_xdpsq* %0, %struct.mlx5e_xdpsq** %2, align 8
  %8 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %2, align 8
  %9 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %8, i32 0, i32 3
  store %struct.mlx5e_xdp_mpwqe* %9, %struct.mlx5e_xdp_mpwqe** %3, align 8
  %10 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %2, align 8
  %11 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %10, i32 0, i32 2
  %12 = load %struct.mlx5e_xdpsq_stats*, %struct.mlx5e_xdpsq_stats** %11, align 8
  store %struct.mlx5e_xdpsq_stats* %12, %struct.mlx5e_xdpsq_stats** %4, align 8
  %13 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %2, align 8
  %14 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %13, i32 0, i32 1
  store %struct.mlx5_wq_cyc* %14, %struct.mlx5_wq_cyc** %5, align 8
  %15 = load %struct.mlx5_wq_cyc*, %struct.mlx5_wq_cyc** %5, align 8
  %16 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %2, align 8
  %17 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @mlx5_wq_cyc_ctr2ix(%struct.mlx5_wq_cyc* %15, i32 %18)
  store i64 %19, i64* %6, align 8
  %20 = load %struct.mlx5_wq_cyc*, %struct.mlx5_wq_cyc** %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i64 @mlx5_wq_cyc_get_contig_wqebbs(%struct.mlx5_wq_cyc* %20, i64 %21)
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @MLX5_SEND_WQE_MAX_WQEBBS, align 8
  %25 = icmp slt i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %1
  %30 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %2, align 8
  %31 = load %struct.mlx5_wq_cyc*, %struct.mlx5_wq_cyc** %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @mlx5e_fill_xdpsq_frag_edge(%struct.mlx5e_xdpsq* %30, %struct.mlx5_wq_cyc* %31, i64 %32, i64 %33)
  br label %35

35:                                               ; preds = %29, %1
  %36 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %2, align 8
  %37 = call %struct.TYPE_2__* @mlx5e_xdpsq_fetch_wqe(%struct.mlx5e_xdpsq* %36, i64* %6)
  %38 = load %struct.mlx5e_xdp_mpwqe*, %struct.mlx5e_xdp_mpwqe** %3, align 8
  %39 = getelementptr inbounds %struct.mlx5e_xdp_mpwqe, %struct.mlx5e_xdp_mpwqe* %38, i32 0, i32 2
  store %struct.TYPE_2__* %37, %struct.TYPE_2__** %39, align 8
  %40 = load %struct.mlx5e_xdp_mpwqe*, %struct.mlx5e_xdp_mpwqe** %3, align 8
  %41 = getelementptr inbounds %struct.mlx5e_xdp_mpwqe, %struct.mlx5e_xdp_mpwqe* %40, i32 0, i32 2
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @prefetchw(i32 %44)
  %46 = load i32, i32* @MLX5E_XDP_TX_EMPTY_DS_COUNT, align 4
  %47 = load %struct.mlx5e_xdp_mpwqe*, %struct.mlx5e_xdp_mpwqe** %3, align 8
  %48 = getelementptr inbounds %struct.mlx5e_xdp_mpwqe, %struct.mlx5e_xdp_mpwqe* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load %struct.mlx5e_xdp_mpwqe*, %struct.mlx5e_xdp_mpwqe** %3, align 8
  %50 = getelementptr inbounds %struct.mlx5e_xdp_mpwqe, %struct.mlx5e_xdp_mpwqe* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  %51 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %2, align 8
  %52 = call i32 @mlx5e_xdp_update_inline_state(%struct.mlx5e_xdpsq* %51)
  %53 = load %struct.mlx5e_xdpsq_stats*, %struct.mlx5e_xdpsq_stats** %4, align 8
  %54 = getelementptr inbounds %struct.mlx5e_xdpsq_stats, %struct.mlx5e_xdpsq_stats* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  ret void
}

declare dso_local i64 @mlx5_wq_cyc_ctr2ix(%struct.mlx5_wq_cyc*, i32) #1

declare dso_local i64 @mlx5_wq_cyc_get_contig_wqebbs(%struct.mlx5_wq_cyc*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mlx5e_fill_xdpsq_frag_edge(%struct.mlx5e_xdpsq*, %struct.mlx5_wq_cyc*, i64, i64) #1

declare dso_local %struct.TYPE_2__* @mlx5e_xdpsq_fetch_wqe(%struct.mlx5e_xdpsq*, i64*) #1

declare dso_local i32 @prefetchw(i32) #1

declare dso_local i32 @mlx5e_xdp_update_inline_state(%struct.mlx5e_xdpsq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

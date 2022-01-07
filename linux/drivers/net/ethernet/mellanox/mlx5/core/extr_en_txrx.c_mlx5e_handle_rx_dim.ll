; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_txrx.c_mlx5e_handle_rx_dim.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_txrx.c_mlx5e_handle_rx_dim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_rq = type { i32, %struct.TYPE_2__, i32, %struct.mlx5e_rq_stats* }
%struct.TYPE_2__ = type { i32 }
%struct.mlx5e_rq_stats = type { i32, i32 }
%struct.dim_sample = type { i32 }

@MLX5E_RQ_STATE_AM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_rq*)* @mlx5e_handle_rx_dim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_handle_rx_dim(%struct.mlx5e_rq* %0) #0 {
  %2 = alloca %struct.mlx5e_rq*, align 8
  %3 = alloca %struct.mlx5e_rq_stats*, align 8
  %4 = alloca %struct.dim_sample, align 4
  store %struct.mlx5e_rq* %0, %struct.mlx5e_rq** %2, align 8
  %5 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %2, align 8
  %6 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %5, i32 0, i32 3
  %7 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %6, align 8
  store %struct.mlx5e_rq_stats* %7, %struct.mlx5e_rq_stats** %3, align 8
  %8 = bitcast %struct.dim_sample* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 4, i1 false)
  %9 = load i32, i32* @MLX5E_RQ_STATE_AM, align 4
  %10 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %2, align 8
  %11 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %10, i32 0, i32 2
  %12 = call i32 @test_bit(i32 %9, i32* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %36

19:                                               ; preds = %1
  %20 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %2, align 8
  %21 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %3, align 8
  %25 = getelementptr inbounds %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %3, align 8
  %28 = getelementptr inbounds %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dim_update_sample(i32 %23, i32 %26, i32 %29, %struct.dim_sample* %4)
  %31 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %2, align 8
  %32 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.dim_sample, %struct.dim_sample* %4, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @net_dim(i32* %32, i32 %34)
  br label %36

36:                                               ; preds = %19, %18
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @test_bit(i32, i32*) #2

declare dso_local i32 @dim_update_sample(i32, i32, i32, %struct.dim_sample*) #2

declare dso_local i32 @net_dim(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

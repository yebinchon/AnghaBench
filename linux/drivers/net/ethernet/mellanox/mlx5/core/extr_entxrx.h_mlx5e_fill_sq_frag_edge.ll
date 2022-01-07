; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_entxrx.h_mlx5e_fill_sq_frag_edge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_entxrx.h_mlx5e_fill_sq_frag_edge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_txqsq = type { %struct.TYPE_3__*, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.mlx5e_tx_wqe_info* }
%struct.mlx5e_tx_wqe_info = type { i32 }
%struct.mlx5_wq_cyc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_txqsq*, %struct.mlx5_wq_cyc*, i64, i64)* @mlx5e_fill_sq_frag_edge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_fill_sq_frag_edge(%struct.mlx5e_txqsq* %0, %struct.mlx5_wq_cyc* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.mlx5e_txqsq*, align 8
  %6 = alloca %struct.mlx5_wq_cyc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.mlx5e_tx_wqe_info*, align 8
  %10 = alloca %struct.mlx5e_tx_wqe_info*, align 8
  store %struct.mlx5e_txqsq* %0, %struct.mlx5e_txqsq** %5, align 8
  store %struct.mlx5_wq_cyc* %1, %struct.mlx5_wq_cyc** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %5, align 8
  %12 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.mlx5e_tx_wqe_info*, %struct.mlx5e_tx_wqe_info** %13, align 8
  %15 = load i64, i64* %7, align 8
  %16 = getelementptr inbounds %struct.mlx5e_tx_wqe_info, %struct.mlx5e_tx_wqe_info* %14, i64 %15
  store %struct.mlx5e_tx_wqe_info* %16, %struct.mlx5e_tx_wqe_info** %10, align 8
  %17 = load %struct.mlx5e_tx_wqe_info*, %struct.mlx5e_tx_wqe_info** %10, align 8
  %18 = load i64, i64* %8, align 8
  %19 = getelementptr inbounds %struct.mlx5e_tx_wqe_info, %struct.mlx5e_tx_wqe_info* %17, i64 %18
  store %struct.mlx5e_tx_wqe_info* %19, %struct.mlx5e_tx_wqe_info** %9, align 8
  br label %20

20:                                               ; preds = %36, %4
  %21 = load %struct.mlx5e_tx_wqe_info*, %struct.mlx5e_tx_wqe_info** %10, align 8
  %22 = load %struct.mlx5e_tx_wqe_info*, %struct.mlx5e_tx_wqe_info** %9, align 8
  %23 = icmp ult %struct.mlx5e_tx_wqe_info* %21, %22
  br i1 %23, label %24, label %39

24:                                               ; preds = %20
  %25 = load %struct.mlx5e_tx_wqe_info*, %struct.mlx5e_tx_wqe_info** %10, align 8
  %26 = call i32 @memset(%struct.mlx5e_tx_wqe_info* %25, i32 0, i32 4)
  %27 = load %struct.mlx5e_tx_wqe_info*, %struct.mlx5e_tx_wqe_info** %10, align 8
  %28 = getelementptr inbounds %struct.mlx5e_tx_wqe_info, %struct.mlx5e_tx_wqe_info* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  %29 = load %struct.mlx5_wq_cyc*, %struct.mlx5_wq_cyc** %6, align 8
  %30 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %5, align 8
  %31 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %5, align 8
  %34 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %33, i32 0, i32 1
  %35 = call i32 @mlx5e_post_nop(%struct.mlx5_wq_cyc* %29, i32 %32, i32* %34)
  br label %36

36:                                               ; preds = %24
  %37 = load %struct.mlx5e_tx_wqe_info*, %struct.mlx5e_tx_wqe_info** %10, align 8
  %38 = getelementptr inbounds %struct.mlx5e_tx_wqe_info, %struct.mlx5e_tx_wqe_info* %37, i32 1
  store %struct.mlx5e_tx_wqe_info* %38, %struct.mlx5e_tx_wqe_info** %10, align 8
  br label %20

39:                                               ; preds = %20
  %40 = load i64, i64* %8, align 8
  %41 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %5, align 8
  %42 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = add i64 %46, %40
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %44, align 4
  ret void
}

declare dso_local i32 @memset(%struct.mlx5e_tx_wqe_info*, i32, i32) #1

declare dso_local i32 @mlx5e_post_nop(%struct.mlx5_wq_cyc*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rx.c_mlx5e_decompress_cqe_no_hash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rx.c_mlx5e_decompress_cqe_no_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_rq = type { %struct.mlx5e_cq_decomp }
%struct.mlx5e_cq_decomp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.mlx5_cqwq = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_rq*, %struct.mlx5_cqwq*, i32)* @mlx5e_decompress_cqe_no_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_decompress_cqe_no_hash(%struct.mlx5e_rq* %0, %struct.mlx5_cqwq* %1, i32 %2) #0 {
  %4 = alloca %struct.mlx5e_rq*, align 8
  %5 = alloca %struct.mlx5_cqwq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5e_cq_decomp*, align 8
  store %struct.mlx5e_rq* %0, %struct.mlx5e_rq** %4, align 8
  store %struct.mlx5_cqwq* %1, %struct.mlx5_cqwq** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %4, align 8
  %9 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %8, i32 0, i32 0
  store %struct.mlx5e_cq_decomp* %9, %struct.mlx5e_cq_decomp** %7, align 8
  %10 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %4, align 8
  %11 = load %struct.mlx5_cqwq*, %struct.mlx5_cqwq** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @mlx5e_decompress_cqe(%struct.mlx5e_rq* %10, %struct.mlx5_cqwq* %11, i32 %12)
  %14 = load %struct.mlx5e_cq_decomp*, %struct.mlx5e_cq_decomp** %7, align 8
  %15 = getelementptr inbounds %struct.mlx5e_cq_decomp, %struct.mlx5e_cq_decomp* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load %struct.mlx5e_cq_decomp*, %struct.mlx5e_cq_decomp** %7, align 8
  %18 = getelementptr inbounds %struct.mlx5e_cq_decomp, %struct.mlx5e_cq_decomp* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  ret void
}

declare dso_local i32 @mlx5e_decompress_cqe(%struct.mlx5e_rq*, %struct.mlx5_cqwq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

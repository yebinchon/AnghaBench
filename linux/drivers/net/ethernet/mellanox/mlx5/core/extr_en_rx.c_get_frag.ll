; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rx.c_get_frag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rx.c_get_frag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_wqe_frag_info = type { i32 }
%struct.mlx5e_rq = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.mlx5e_wqe_frag_info* }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5e_wqe_frag_info* (%struct.mlx5e_rq*, i64)* @get_frag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5e_wqe_frag_info* @get_frag(%struct.mlx5e_rq* %0, i64 %1) #0 {
  %3 = alloca %struct.mlx5e_rq*, align 8
  %4 = alloca i64, align 8
  store %struct.mlx5e_rq* %0, %struct.mlx5e_rq** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %6 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %8 = load %struct.mlx5e_wqe_frag_info*, %struct.mlx5e_wqe_frag_info** %7, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %11 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = shl i64 %9, %14
  %16 = getelementptr inbounds %struct.mlx5e_wqe_frag_info, %struct.mlx5e_wqe_frag_info* %8, i64 %15
  ret %struct.mlx5e_wqe_frag_info* %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

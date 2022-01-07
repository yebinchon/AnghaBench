; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rx.c_mlx5e_post_rx_mpwqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rx.c_mlx5e_post_rx_mpwqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_rq = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mlx5_wq_ll }
%struct.mlx5_wq_ll = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_rq*, i64)* @mlx5e_post_rx_mpwqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_post_rx_mpwqe(%struct.mlx5e_rq* %0, i64 %1) #0 {
  %3 = alloca %struct.mlx5e_rq*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.mlx5_wq_ll*, align 8
  %6 = alloca i32, align 4
  store %struct.mlx5e_rq* %0, %struct.mlx5e_rq** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %8 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.mlx5_wq_ll* %9, %struct.mlx5_wq_ll** %5, align 8
  br label %10

10:                                               ; preds = %19, %2
  %11 = load %struct.mlx5_wq_ll*, %struct.mlx5_wq_ll** %5, align 8
  %12 = load %struct.mlx5_wq_ll*, %struct.mlx5_wq_ll** %5, align 8
  %13 = getelementptr inbounds %struct.mlx5_wq_ll, %struct.mlx5_wq_ll* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @mlx5_wq_ll_get_wqe_next_ix(%struct.mlx5_wq_ll* %11, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.mlx5_wq_ll*, %struct.mlx5_wq_ll** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @mlx5_wq_ll_push(%struct.mlx5_wq_ll* %16, i32 %17)
  br label %19

19:                                               ; preds = %10
  %20 = load i64, i64* %4, align 8
  %21 = add nsw i64 %20, -1
  store i64 %21, i64* %4, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %10, label %23

23:                                               ; preds = %19
  %24 = call i32 (...) @dma_wmb()
  %25 = load %struct.mlx5_wq_ll*, %struct.mlx5_wq_ll** %5, align 8
  %26 = call i32 @mlx5_wq_ll_update_db_record(%struct.mlx5_wq_ll* %25)
  ret void
}

declare dso_local i32 @mlx5_wq_ll_get_wqe_next_ix(%struct.mlx5_wq_ll*, i32) #1

declare dso_local i32 @mlx5_wq_ll_push(%struct.mlx5_wq_ll*, i32) #1

declare dso_local i32 @dma_wmb(...) #1

declare dso_local i32 @mlx5_wq_ll_update_db_record(%struct.mlx5_wq_ll*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

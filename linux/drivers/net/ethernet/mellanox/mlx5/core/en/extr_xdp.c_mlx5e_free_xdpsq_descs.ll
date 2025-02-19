; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_xdp.c_mlx5e_free_xdpsq_descs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_xdp.c_mlx5e_free_xdpsq_descs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_xdpsq = type { i64, i64, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.mlx5e_xdp_wqe_info* }
%struct.mlx5e_xdp_wqe_info = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5e_free_xdpsq_descs(%struct.mlx5e_xdpsq* %0) #0 {
  %2 = alloca %struct.mlx5e_xdpsq*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.mlx5e_xdp_wqe_info*, align 8
  %5 = alloca i64, align 8
  store %struct.mlx5e_xdpsq* %0, %struct.mlx5e_xdpsq** %2, align 8
  store i64 0, i64* %3, align 8
  br label %6

6:                                                ; preds = %14, %1
  %7 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %2, align 8
  %8 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %2, align 8
  %11 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %9, %12
  br i1 %13, label %14, label %37

14:                                               ; preds = %6
  %15 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %2, align 8
  %16 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %15, i32 0, i32 4
  %17 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %2, align 8
  %18 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @mlx5_wq_cyc_ctr2ix(i32* %16, i64 %19)
  store i64 %20, i64* %5, align 8
  %21 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %2, align 8
  %22 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.mlx5e_xdp_wqe_info*, %struct.mlx5e_xdp_wqe_info** %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds %struct.mlx5e_xdp_wqe_info, %struct.mlx5e_xdp_wqe_info* %24, i64 %25
  store %struct.mlx5e_xdp_wqe_info* %26, %struct.mlx5e_xdp_wqe_info** %4, align 8
  %27 = load %struct.mlx5e_xdp_wqe_info*, %struct.mlx5e_xdp_wqe_info** %4, align 8
  %28 = getelementptr inbounds %struct.mlx5e_xdp_wqe_info, %struct.mlx5e_xdp_wqe_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %2, align 8
  %31 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, %29
  store i64 %33, i64* %31, align 8
  %34 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %2, align 8
  %35 = load %struct.mlx5e_xdp_wqe_info*, %struct.mlx5e_xdp_wqe_info** %4, align 8
  %36 = call i32 @mlx5e_free_xdpsq_desc(%struct.mlx5e_xdpsq* %34, %struct.mlx5e_xdp_wqe_info* %35, i64* %3, i32 0)
  br label %6

37:                                               ; preds = %6
  %38 = load i64, i64* %3, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %2, align 8
  %42 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i64, i64* %3, align 8
  %45 = call i32 @xsk_umem_complete_tx(i32 %43, i64 %44)
  br label %46

46:                                               ; preds = %40, %37
  ret void
}

declare dso_local i64 @mlx5_wq_cyc_ctr2ix(i32*, i64) #1

declare dso_local i32 @mlx5e_free_xdpsq_desc(%struct.mlx5e_xdpsq*, %struct.mlx5e_xdp_wqe_info*, i64*, i32) #1

declare dso_local i32 @xsk_umem_complete_tx(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

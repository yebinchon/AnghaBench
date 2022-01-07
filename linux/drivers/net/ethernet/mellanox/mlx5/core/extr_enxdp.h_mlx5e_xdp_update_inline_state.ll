; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_enxdp.h_mlx5e_xdp_update_inline_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_enxdp.h_mlx5e_xdp_update_inline_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_xdpsq = type { i64, i64, %struct.mlx5e_xdp_mpwqe }
%struct.mlx5e_xdp_mpwqe = type { i32 }

@MLX5E_XDP_INLINE_WATERMARK_HIGH = common dso_local global i64 0, align 8
@MLX5E_XDP_INLINE_WATERMARK_LOW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_xdpsq*)* @mlx5e_xdp_update_inline_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_xdp_update_inline_state(%struct.mlx5e_xdpsq* %0) #0 {
  %2 = alloca %struct.mlx5e_xdpsq*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.mlx5e_xdp_mpwqe*, align 8
  store %struct.mlx5e_xdpsq* %0, %struct.mlx5e_xdpsq** %2, align 8
  %5 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %2, align 8
  %6 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %2, align 8
  %9 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = sub nsw i64 %7, %10
  store i64 %11, i64* %3, align 8
  %12 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %2, align 8
  %13 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %12, i32 0, i32 2
  store %struct.mlx5e_xdp_mpwqe* %13, %struct.mlx5e_xdp_mpwqe** %4, align 8
  %14 = load %struct.mlx5e_xdp_mpwqe*, %struct.mlx5e_xdp_mpwqe** %4, align 8
  %15 = getelementptr inbounds %struct.mlx5e_xdp_mpwqe, %struct.mlx5e_xdp_mpwqe* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load i64, i64* %3, align 8
  %20 = icmp sle i64 %19, 10
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load %struct.mlx5e_xdp_mpwqe*, %struct.mlx5e_xdp_mpwqe** %4, align 8
  %23 = getelementptr inbounds %struct.mlx5e_xdp_mpwqe, %struct.mlx5e_xdp_mpwqe* %22, i32 0, i32 0
  store i32 0, i32* %23, align 4
  br label %24

24:                                               ; preds = %21, %18
  br label %31

25:                                               ; preds = %1
  %26 = load i64, i64* %3, align 8
  %27 = icmp sge i64 %26, 128
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load %struct.mlx5e_xdp_mpwqe*, %struct.mlx5e_xdp_mpwqe** %4, align 8
  %30 = getelementptr inbounds %struct.mlx5e_xdp_mpwqe, %struct.mlx5e_xdp_mpwqe* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  br label %31

31:                                               ; preds = %24, %28, %25
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

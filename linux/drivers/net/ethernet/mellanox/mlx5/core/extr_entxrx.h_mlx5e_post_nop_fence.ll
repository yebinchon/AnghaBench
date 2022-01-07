; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_entxrx.h_mlx5e_post_nop_fence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_entxrx.h_mlx5e_post_nop_fence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_tx_wqe = type { %struct.mlx5_wqe_ctrl_seg }
%struct.mlx5_wqe_ctrl_seg = type { i32, i8*, i8* }
%struct.mlx5_wq_cyc = type { i32 }

@MLX5_OPCODE_NOP = common dso_local global i32 0, align 4
@MLX5_FENCE_MODE_INITIATOR_SMALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5e_tx_wqe* (%struct.mlx5_wq_cyc*, i32, i32*)* @mlx5e_post_nop_fence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5e_tx_wqe* @mlx5e_post_nop_fence(%struct.mlx5_wq_cyc* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.mlx5_wq_cyc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5e_tx_wqe*, align 8
  %9 = alloca %struct.mlx5_wqe_ctrl_seg*, align 8
  store %struct.mlx5_wq_cyc* %0, %struct.mlx5_wq_cyc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load %struct.mlx5_wq_cyc*, %struct.mlx5_wq_cyc** %4, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @mlx5_wq_cyc_ctr2ix(%struct.mlx5_wq_cyc* %10, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.mlx5_wq_cyc*, %struct.mlx5_wq_cyc** %4, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.mlx5e_tx_wqe* @mlx5_wq_cyc_get_wqe(%struct.mlx5_wq_cyc* %14, i32 %15)
  store %struct.mlx5e_tx_wqe* %16, %struct.mlx5e_tx_wqe** %8, align 8
  %17 = load %struct.mlx5e_tx_wqe*, %struct.mlx5e_tx_wqe** %8, align 8
  %18 = getelementptr inbounds %struct.mlx5e_tx_wqe, %struct.mlx5e_tx_wqe* %17, i32 0, i32 0
  store %struct.mlx5_wqe_ctrl_seg* %18, %struct.mlx5_wqe_ctrl_seg** %9, align 8
  %19 = load %struct.mlx5_wqe_ctrl_seg*, %struct.mlx5_wqe_ctrl_seg** %9, align 8
  %20 = call i32 @memset(%struct.mlx5_wqe_ctrl_seg* %19, i32 0, i32 24)
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 %22, 8
  %24 = load i32, i32* @MLX5_OPCODE_NOP, align 4
  %25 = or i32 %23, %24
  %26 = call i8* @cpu_to_be32(i32 %25)
  %27 = load %struct.mlx5_wqe_ctrl_seg*, %struct.mlx5_wqe_ctrl_seg** %9, align 8
  %28 = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_ctrl_seg* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* %5, align 4
  %30 = shl i32 %29, 8
  %31 = or i32 %30, 1
  %32 = call i8* @cpu_to_be32(i32 %31)
  %33 = load %struct.mlx5_wqe_ctrl_seg*, %struct.mlx5_wqe_ctrl_seg** %9, align 8
  %34 = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_ctrl_seg* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* @MLX5_FENCE_MODE_INITIATOR_SMALL, align 4
  %36 = load %struct.mlx5_wqe_ctrl_seg*, %struct.mlx5_wqe_ctrl_seg** %9, align 8
  %37 = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_ctrl_seg* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  %41 = load %struct.mlx5e_tx_wqe*, %struct.mlx5e_tx_wqe** %8, align 8
  ret %struct.mlx5e_tx_wqe* %41
}

declare dso_local i32 @mlx5_wq_cyc_ctr2ix(%struct.mlx5_wq_cyc*, i32) #1

declare dso_local %struct.mlx5e_tx_wqe* @mlx5_wq_cyc_get_wqe(%struct.mlx5_wq_cyc*, i32) #1

declare dso_local i32 @memset(%struct.mlx5_wqe_ctrl_seg*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

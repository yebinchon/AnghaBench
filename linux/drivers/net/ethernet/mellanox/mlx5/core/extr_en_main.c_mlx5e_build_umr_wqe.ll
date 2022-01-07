; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_build_umr_wqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_build_umr_wqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_rq = type { i32 }
%struct.mlx5e_icosq = type { i32 }
%struct.mlx5e_umr_wqe = type { %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_wqe_ctrl_seg }
%struct.mlx5_wqe_umr_ctrl_seg = type { i32, i32, i32 }
%struct.mlx5_wqe_ctrl_seg = type { i32, i32, i32 }

@MLX5E_UMR_WQE_INLINE_SZ = common dso_local global i32 0, align 4
@MLX5_SEND_WQE_DS = common dso_local global i32 0, align 4
@MLX5_WQE_CTRL_QPN_SHIFT = common dso_local global i32 0, align 4
@MLX5_WQE_CTRL_CQ_UPDATE = common dso_local global i32 0, align 4
@MLX5_UMR_TRANSLATION_OFFSET_EN = common dso_local global i32 0, align 4
@MLX5_UMR_INLINE = common dso_local global i32 0, align 4
@MLX5_MPWRQ_PAGES_PER_WQE = common dso_local global i32 0, align 4
@MLX5_MKEY_MASK_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_rq*, %struct.mlx5e_icosq*, %struct.mlx5e_umr_wqe*)* @mlx5e_build_umr_wqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_build_umr_wqe(%struct.mlx5e_rq* %0, %struct.mlx5e_icosq* %1, %struct.mlx5e_umr_wqe* %2) #0 {
  %4 = alloca %struct.mlx5e_rq*, align 8
  %5 = alloca %struct.mlx5e_icosq*, align 8
  %6 = alloca %struct.mlx5e_umr_wqe*, align 8
  %7 = alloca %struct.mlx5_wqe_ctrl_seg*, align 8
  %8 = alloca %struct.mlx5_wqe_umr_ctrl_seg*, align 8
  %9 = alloca i32, align 4
  store %struct.mlx5e_rq* %0, %struct.mlx5e_rq** %4, align 8
  store %struct.mlx5e_icosq* %1, %struct.mlx5e_icosq** %5, align 8
  store %struct.mlx5e_umr_wqe* %2, %struct.mlx5e_umr_wqe** %6, align 8
  %10 = load %struct.mlx5e_umr_wqe*, %struct.mlx5e_umr_wqe** %6, align 8
  %11 = getelementptr inbounds %struct.mlx5e_umr_wqe, %struct.mlx5e_umr_wqe* %10, i32 0, i32 1
  store %struct.mlx5_wqe_ctrl_seg* %11, %struct.mlx5_wqe_ctrl_seg** %7, align 8
  %12 = load %struct.mlx5e_umr_wqe*, %struct.mlx5e_umr_wqe** %6, align 8
  %13 = getelementptr inbounds %struct.mlx5e_umr_wqe, %struct.mlx5e_umr_wqe* %12, i32 0, i32 0
  store %struct.mlx5_wqe_umr_ctrl_seg* %13, %struct.mlx5_wqe_umr_ctrl_seg** %8, align 8
  %14 = load i32, i32* @MLX5E_UMR_WQE_INLINE_SZ, align 4
  %15 = load i32, i32* @MLX5_SEND_WQE_DS, align 4
  %16 = call i32 @DIV_ROUND_UP(i32 %14, i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.mlx5e_icosq*, %struct.mlx5e_icosq** %5, align 8
  %18 = getelementptr inbounds %struct.mlx5e_icosq, %struct.mlx5e_icosq* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MLX5_WQE_CTRL_QPN_SHIFT, align 4
  %21 = shl i32 %19, %20
  %22 = load i32, i32* %9, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @cpu_to_be32(i32 %23)
  %25 = load %struct.mlx5_wqe_ctrl_seg*, %struct.mlx5_wqe_ctrl_seg** %7, align 8
  %26 = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_ctrl_seg* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @MLX5_WQE_CTRL_CQ_UPDATE, align 4
  %28 = load %struct.mlx5_wqe_ctrl_seg*, %struct.mlx5_wqe_ctrl_seg** %7, align 8
  %29 = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_ctrl_seg* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %4, align 8
  %31 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.mlx5_wqe_ctrl_seg*, %struct.mlx5_wqe_ctrl_seg** %7, align 8
  %34 = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_ctrl_seg* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @MLX5_UMR_TRANSLATION_OFFSET_EN, align 4
  %36 = load i32, i32* @MLX5_UMR_INLINE, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.mlx5_wqe_umr_ctrl_seg*, %struct.mlx5_wqe_umr_ctrl_seg** %8, align 8
  %39 = getelementptr inbounds %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @MLX5_MPWRQ_PAGES_PER_WQE, align 4
  %41 = call i32 @MLX5_MTT_OCTW(i32 %40)
  %42 = call i32 @cpu_to_be16(i32 %41)
  %43 = load %struct.mlx5_wqe_umr_ctrl_seg*, %struct.mlx5_wqe_umr_ctrl_seg** %8, align 8
  %44 = getelementptr inbounds %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @MLX5_MKEY_MASK_FREE, align 4
  %46 = call i32 @cpu_to_be64(i32 %45)
  %47 = load %struct.mlx5_wqe_umr_ctrl_seg*, %struct.mlx5_wqe_umr_ctrl_seg** %8, align 8
  %48 = getelementptr inbounds %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  ret void
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @MLX5_MTT_OCTW(i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

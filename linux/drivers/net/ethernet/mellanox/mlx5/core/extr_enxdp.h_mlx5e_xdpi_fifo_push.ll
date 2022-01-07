; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_enxdp.h_mlx5e_xdpi_fifo_push.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_enxdp.h_mlx5e_xdpi_fifo_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_xdp_info_fifo = type { i64, %struct.mlx5e_xdp_info*, i32* }
%struct.mlx5e_xdp_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_xdp_info_fifo*, %struct.mlx5e_xdp_info*)* @mlx5e_xdpi_fifo_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_xdpi_fifo_push(%struct.mlx5e_xdp_info_fifo* %0, %struct.mlx5e_xdp_info* %1) #0 {
  %3 = alloca %struct.mlx5e_xdp_info_fifo*, align 8
  %4 = alloca %struct.mlx5e_xdp_info*, align 8
  %5 = alloca i64, align 8
  store %struct.mlx5e_xdp_info_fifo* %0, %struct.mlx5e_xdp_info_fifo** %3, align 8
  store %struct.mlx5e_xdp_info* %1, %struct.mlx5e_xdp_info** %4, align 8
  %6 = load %struct.mlx5e_xdp_info_fifo*, %struct.mlx5e_xdp_info_fifo** %3, align 8
  %7 = getelementptr inbounds %struct.mlx5e_xdp_info_fifo, %struct.mlx5e_xdp_info_fifo* %6, i32 0, i32 2
  %8 = load i32*, i32** %7, align 8
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %8, align 4
  %11 = sext i32 %9 to i64
  %12 = load %struct.mlx5e_xdp_info_fifo*, %struct.mlx5e_xdp_info_fifo** %3, align 8
  %13 = getelementptr inbounds %struct.mlx5e_xdp_info_fifo, %struct.mlx5e_xdp_info_fifo* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = and i64 %11, %14
  store i64 %15, i64* %5, align 8
  %16 = load %struct.mlx5e_xdp_info_fifo*, %struct.mlx5e_xdp_info_fifo** %3, align 8
  %17 = getelementptr inbounds %struct.mlx5e_xdp_info_fifo, %struct.mlx5e_xdp_info_fifo* %16, i32 0, i32 1
  %18 = load %struct.mlx5e_xdp_info*, %struct.mlx5e_xdp_info** %17, align 8
  %19 = load i64, i64* %5, align 8
  %20 = getelementptr inbounds %struct.mlx5e_xdp_info, %struct.mlx5e_xdp_info* %18, i64 %19
  %21 = load %struct.mlx5e_xdp_info*, %struct.mlx5e_xdp_info** %4, align 8
  %22 = bitcast %struct.mlx5e_xdp_info* %20 to i8*
  %23 = bitcast %struct.mlx5e_xdp_info* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 %23, i64 4, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

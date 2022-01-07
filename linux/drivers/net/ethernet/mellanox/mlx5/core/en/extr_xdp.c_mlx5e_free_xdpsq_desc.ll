; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_xdp.c_mlx5e_free_xdpsq_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_xdp.c_mlx5e_free_xdpsq_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_xdpsq = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.mlx5e_xdp_info_fifo }
%struct.mlx5e_xdp_info_fifo = type { i32 }
%struct.mlx5e_xdp_wqe_info = type { i64 }
%struct.mlx5e_xdp_info = type { i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_xdpsq*, %struct.mlx5e_xdp_wqe_info*, i32*, i32)* @mlx5e_free_xdpsq_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_free_xdpsq_desc(%struct.mlx5e_xdpsq* %0, %struct.mlx5e_xdp_wqe_info* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.mlx5e_xdpsq*, align 8
  %6 = alloca %struct.mlx5e_xdp_wqe_info*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx5e_xdp_info_fifo*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.mlx5e_xdp_info, align 8
  store %struct.mlx5e_xdpsq* %0, %struct.mlx5e_xdpsq** %5, align 8
  store %struct.mlx5e_xdp_wqe_info* %1, %struct.mlx5e_xdp_wqe_info** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %5, align 8
  %13 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  store %struct.mlx5e_xdp_info_fifo* %14, %struct.mlx5e_xdp_info_fifo** %9, align 8
  store i64 0, i64* %10, align 8
  br label %15

15:                                               ; preds = %58, %4
  %16 = load i64, i64* %10, align 8
  %17 = load %struct.mlx5e_xdp_wqe_info*, %struct.mlx5e_xdp_wqe_info** %6, align 8
  %18 = getelementptr inbounds %struct.mlx5e_xdp_wqe_info, %struct.mlx5e_xdp_wqe_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %16, %19
  br i1 %20, label %21, label %61

21:                                               ; preds = %15
  %22 = load %struct.mlx5e_xdp_info_fifo*, %struct.mlx5e_xdp_info_fifo** %9, align 8
  call void @mlx5e_xdpi_fifo_pop(%struct.mlx5e_xdp_info* sret %11, %struct.mlx5e_xdp_info_fifo* %22)
  %23 = getelementptr inbounds %struct.mlx5e_xdp_info, %struct.mlx5e_xdp_info* %11, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %55 [
    i32 130, label %25
    i32 129, label %43
    i32 128, label %51
  ]

25:                                               ; preds = %21
  %26 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %5, align 8
  %27 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.mlx5e_xdp_info, %struct.mlx5e_xdp_info* %11, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds %struct.mlx5e_xdp_info, %struct.mlx5e_xdp_info* %11, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @DMA_TO_DEVICE, align 4
  %38 = call i32 @dma_unmap_single(i32 %28, i32 %31, i32 %36, i32 %37)
  %39 = getelementptr inbounds %struct.mlx5e_xdp_info, %struct.mlx5e_xdp_info* %11, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = call i32 @xdp_return_frame(%struct.TYPE_8__* %41)
  br label %57

43:                                               ; preds = %21
  %44 = getelementptr inbounds %struct.mlx5e_xdp_info, %struct.mlx5e_xdp_info* %11, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.mlx5e_xdp_info, %struct.mlx5e_xdp_info* %11, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @mlx5e_page_release_dynamic(i32 %46, i32* %48, i32 %49)
  br label %57

51:                                               ; preds = %21
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  br label %57

55:                                               ; preds = %21
  %56 = call i32 @WARN_ON_ONCE(i32 1)
  br label %57

57:                                               ; preds = %55, %51, %43, %25
  br label %58

58:                                               ; preds = %57
  %59 = load i64, i64* %10, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %10, align 8
  br label %15

61:                                               ; preds = %15
  ret void
}

declare dso_local void @mlx5e_xdpi_fifo_pop(%struct.mlx5e_xdp_info* sret, %struct.mlx5e_xdp_info_fifo*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @xdp_return_frame(%struct.TYPE_8__*) #1

declare dso_local i32 @mlx5e_page_release_dynamic(i32, i32*, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

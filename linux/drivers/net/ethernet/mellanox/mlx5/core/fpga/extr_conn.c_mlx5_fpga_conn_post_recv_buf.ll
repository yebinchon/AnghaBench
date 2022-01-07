; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_conn.c_mlx5_fpga_conn_post_recv_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_conn.c_mlx5_fpga_conn_post_recv_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_fpga_conn = type { i32 }
%struct.mlx5_fpga_dma_buf = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i8* }

@MLX5_FPGA_RECV_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_fpga_conn*)* @mlx5_fpga_conn_post_recv_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_fpga_conn_post_recv_buf(%struct.mlx5_fpga_conn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_fpga_conn*, align 8
  %4 = alloca %struct.mlx5_fpga_dma_buf*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx5_fpga_conn* %0, %struct.mlx5_fpga_conn** %3, align 8
  %6 = load i64, i64* @MLX5_FPGA_RECV_SIZE, align 8
  %7 = add i64 16, %6
  %8 = call %struct.mlx5_fpga_dma_buf* @kzalloc(i64 %7, i32 0)
  store %struct.mlx5_fpga_dma_buf* %8, %struct.mlx5_fpga_dma_buf** %4, align 8
  %9 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %4, align 8
  %10 = icmp ne %struct.mlx5_fpga_dma_buf* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %42

14:                                               ; preds = %1
  %15 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %4, align 8
  %16 = getelementptr inbounds %struct.mlx5_fpga_dma_buf, %struct.mlx5_fpga_dma_buf* %15, i64 1
  %17 = bitcast %struct.mlx5_fpga_dma_buf* %16 to i8*
  %18 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %4, align 8
  %19 = getelementptr inbounds %struct.mlx5_fpga_dma_buf, %struct.mlx5_fpga_dma_buf* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i8* %17, i8** %22, align 8
  %23 = load i64, i64* @MLX5_FPGA_RECV_SIZE, align 8
  %24 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %4, align 8
  %25 = getelementptr inbounds %struct.mlx5_fpga_dma_buf, %struct.mlx5_fpga_dma_buf* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i64 %23, i64* %28, align 8
  %29 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %30 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %4, align 8
  %31 = getelementptr inbounds %struct.mlx5_fpga_dma_buf, %struct.mlx5_fpga_dma_buf* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %3, align 8
  %33 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %4, align 8
  %34 = call i32 @mlx5_fpga_conn_post_recv(%struct.mlx5_fpga_conn* %32, %struct.mlx5_fpga_dma_buf* %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %14
  %38 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %4, align 8
  %39 = call i32 @kfree(%struct.mlx5_fpga_dma_buf* %38)
  br label %40

40:                                               ; preds = %37, %14
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %11
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.mlx5_fpga_dma_buf* @kzalloc(i64, i32) #1

declare dso_local i32 @mlx5_fpga_conn_post_recv(%struct.mlx5_fpga_conn*, %struct.mlx5_fpga_dma_buf*) #1

declare dso_local i32 @kfree(%struct.mlx5_fpga_dma_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

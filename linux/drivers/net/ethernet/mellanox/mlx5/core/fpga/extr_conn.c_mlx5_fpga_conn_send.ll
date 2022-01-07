; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_conn.c_mlx5_fpga_conn_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_conn.c_mlx5_fpga_conn_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_fpga_conn = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64, i64, i64, i32, i32 }
%struct.mlx5_fpga_dma_buf = type { i32, i32 }

@ENOTCONN = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_fpga_conn_send(%struct.mlx5_fpga_conn* %0, %struct.mlx5_fpga_dma_buf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_fpga_conn*, align 8
  %5 = alloca %struct.mlx5_fpga_dma_buf*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.mlx5_fpga_conn* %0, %struct.mlx5_fpga_conn** %4, align 8
  store %struct.mlx5_fpga_dma_buf* %1, %struct.mlx5_fpga_dma_buf** %5, align 8
  %8 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %4, align 8
  %9 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOTCONN, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %71

16:                                               ; preds = %2
  %17 = load i32, i32* @DMA_TO_DEVICE, align 4
  %18 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %5, align 8
  %19 = getelementptr inbounds %struct.mlx5_fpga_dma_buf, %struct.mlx5_fpga_dma_buf* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %4, align 8
  %21 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %5, align 8
  %22 = call i32 @mlx5_fpga_conn_map_buf(%struct.mlx5_fpga_conn* %20, %struct.mlx5_fpga_dma_buf* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %3, align 4
  br label %71

27:                                               ; preds = %16
  %28 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %4, align 8
  %29 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 3
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @spin_lock_irqsave(i32* %31, i64 %32)
  %34 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %4, align 8
  %35 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %4, align 8
  %40 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %38, %43
  %45 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %4, align 8
  %46 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp sge i64 %44, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %27
  %52 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %5, align 8
  %53 = getelementptr inbounds %struct.mlx5_fpga_dma_buf, %struct.mlx5_fpga_dma_buf* %52, i32 0, i32 0
  %54 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %4, align 8
  %55 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 4
  %58 = call i32 @list_add_tail(i32* %53, i32* %57)
  br label %63

59:                                               ; preds = %27
  %60 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %4, align 8
  %61 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %5, align 8
  %62 = call i32 @mlx5_fpga_conn_post_send(%struct.mlx5_fpga_conn* %60, %struct.mlx5_fpga_dma_buf* %61)
  br label %63

63:                                               ; preds = %59, %51
  %64 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %4, align 8
  %65 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 3
  %68 = load i64, i64* %6, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* %67, i64 %68)
  %70 = load i32, i32* %7, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %63, %25, %13
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @mlx5_fpga_conn_map_buf(%struct.mlx5_fpga_conn*, %struct.mlx5_fpga_dma_buf*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mlx5_fpga_conn_post_send(%struct.mlx5_fpga_conn*, %struct.mlx5_fpga_dma_buf*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

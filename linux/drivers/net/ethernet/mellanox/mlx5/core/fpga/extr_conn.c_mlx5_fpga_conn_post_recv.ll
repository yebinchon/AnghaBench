; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_conn.c_mlx5_fpga_conn_post_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_conn.c_mlx5_fpga_conn_post_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_fpga_conn = type { %struct.TYPE_15__, %struct.TYPE_11__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32, i32, i32, %struct.mlx5_fpga_dma_buf** }
%struct.TYPE_13__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i8** }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.mlx5_fpga_dma_buf = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.mlx5_wqe_data_seg = type { i32, i8*, i8* }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_fpga_conn*, %struct.mlx5_fpga_dma_buf*)* @mlx5_fpga_conn_post_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_fpga_conn_post_recv(%struct.mlx5_fpga_conn* %0, %struct.mlx5_fpga_dma_buf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_fpga_conn*, align 8
  %5 = alloca %struct.mlx5_fpga_dma_buf*, align 8
  %6 = alloca %struct.mlx5_wqe_data_seg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlx5_fpga_conn* %0, %struct.mlx5_fpga_conn** %4, align 8
  store %struct.mlx5_fpga_dma_buf* %1, %struct.mlx5_fpga_dma_buf** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %4, align 8
  %10 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %5, align 8
  %11 = call i32 @mlx5_fpga_conn_map_buf(%struct.mlx5_fpga_conn* %9, %struct.mlx5_fpga_dma_buf* %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %119

16:                                               ; preds = %2
  %17 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %4, align 8
  %18 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %4, align 8
  %23 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %21, %26
  %28 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %4, align 8
  %29 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = icmp sge i32 %27, %32
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %16
  %38 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %4, align 8
  %39 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %5, align 8
  %40 = call i32 @mlx5_fpga_conn_unmap_buf(%struct.mlx5_fpga_conn* %38, %struct.mlx5_fpga_dma_buf* %39)
  %41 = load i32, i32* @EBUSY, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %121

43:                                               ; preds = %16
  %44 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %4, align 8
  %45 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %4, align 8
  %50 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = sub nsw i32 %53, 1
  %55 = and i32 %48, %54
  store i32 %55, i32* %7, align 4
  %56 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %4, align 8
  %57 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = load i32, i32* %7, align 4
  %61 = call %struct.mlx5_wqe_data_seg* @mlx5_wq_cyc_get_wqe(%struct.TYPE_16__* %59, i32 %60)
  store %struct.mlx5_wqe_data_seg* %61, %struct.mlx5_wqe_data_seg** %6, align 8
  %62 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %5, align 8
  %63 = getelementptr inbounds %struct.mlx5_fpga_dma_buf, %struct.mlx5_fpga_dma_buf* %62, i32 0, i32 0
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i64 0
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @cpu_to_be32(i32 %67)
  %69 = load %struct.mlx5_wqe_data_seg*, %struct.mlx5_wqe_data_seg** %6, align 8
  %70 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  %71 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %4, align 8
  %72 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %71, i32 0, i32 1
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i8* @cpu_to_be32(i32 %77)
  %79 = load %struct.mlx5_wqe_data_seg*, %struct.mlx5_wqe_data_seg** %6, align 8
  %80 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %79, i32 0, i32 1
  store i8* %78, i8** %80, align 8
  %81 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %5, align 8
  %82 = getelementptr inbounds %struct.mlx5_fpga_dma_buf, %struct.mlx5_fpga_dma_buf* %81, i32 0, i32 0
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i64 0
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @cpu_to_be64(i32 %86)
  %88 = load %struct.mlx5_wqe_data_seg*, %struct.mlx5_wqe_data_seg** %6, align 8
  %89 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %4, align 8
  %91 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 8
  %96 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %5, align 8
  %97 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %4, align 8
  %98 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 3
  %101 = load %struct.mlx5_fpga_dma_buf**, %struct.mlx5_fpga_dma_buf*** %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %101, i64 %103
  store %struct.mlx5_fpga_dma_buf* %96, %struct.mlx5_fpga_dma_buf** %104, align 8
  %105 = call i32 (...) @dma_wmb()
  %106 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %4, align 8
  %107 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = and i32 %110, 65535
  %112 = call i8* @cpu_to_be32(i32 %111)
  %113 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %4, align 8
  %114 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 0
  %118 = load i8**, i8*** %117, align 8
  store i8* %112, i8** %118, align 8
  br label %119

119:                                              ; preds = %43, %15
  %120 = load i32, i32* %8, align 4
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %119, %37
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @mlx5_fpga_conn_map_buf(%struct.mlx5_fpga_conn*, %struct.mlx5_fpga_dma_buf*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mlx5_fpga_conn_unmap_buf(%struct.mlx5_fpga_conn*, %struct.mlx5_fpga_dma_buf*) #1

declare dso_local %struct.mlx5_wqe_data_seg* @mlx5_wq_cyc_get_wqe(%struct.TYPE_16__*, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @dma_wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

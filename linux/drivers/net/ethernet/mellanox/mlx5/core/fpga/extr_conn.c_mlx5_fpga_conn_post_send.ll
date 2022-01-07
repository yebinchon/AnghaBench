; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_conn.c_mlx5_fpga_conn_post_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_conn.c_mlx5_fpga_conn_post_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_fpga_conn = type { %struct.TYPE_15__, %struct.TYPE_12__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_9__ }
%struct.TYPE_14__ = type { i32, i32, %struct.mlx5_fpga_dma_buf** }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.mlx5_fpga_dma_buf = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.mlx5_wqe_ctrl_seg = type { i8*, i8*, i32, i64 }
%struct.mlx5_wqe_data_seg = type { i32, i8*, i8* }

@MLX5_WQE_CTRL_CQ_UPDATE = common dso_local global i32 0, align 4
@MLX5_OPCODE_SEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_fpga_conn*, %struct.mlx5_fpga_dma_buf*)* @mlx5_fpga_conn_post_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_fpga_conn_post_send(%struct.mlx5_fpga_conn* %0, %struct.mlx5_fpga_dma_buf* %1) #0 {
  %3 = alloca %struct.mlx5_fpga_conn*, align 8
  %4 = alloca %struct.mlx5_fpga_dma_buf*, align 8
  %5 = alloca %struct.mlx5_wqe_ctrl_seg*, align 8
  %6 = alloca %struct.mlx5_wqe_data_seg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mlx5_fpga_conn* %0, %struct.mlx5_fpga_conn** %3, align 8
  store %struct.mlx5_fpga_dma_buf* %1, %struct.mlx5_fpga_dma_buf** %4, align 8
  store i32 1, i32* %9, align 4
  %10 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %3, align 8
  %11 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %3, align 8
  %16 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %19, 1
  %21 = and i32 %14, %20
  store i32 %21, i32* %7, align 4
  %22 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %3, align 8
  %23 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %7, align 4
  %27 = call %struct.mlx5_wqe_ctrl_seg* @mlx5_wq_cyc_get_wqe(i32* %25, i32 %26)
  store %struct.mlx5_wqe_ctrl_seg* %27, %struct.mlx5_wqe_ctrl_seg** %5, align 8
  %28 = load %struct.mlx5_wqe_ctrl_seg*, %struct.mlx5_wqe_ctrl_seg** %5, align 8
  %29 = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_ctrl_seg* %28, i64 1
  %30 = bitcast %struct.mlx5_wqe_ctrl_seg* %29 to i8*
  %31 = bitcast i8* %30 to %struct.mlx5_wqe_data_seg*
  store %struct.mlx5_wqe_data_seg* %31, %struct.mlx5_wqe_data_seg** %6, align 8
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %87, %2
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %4, align 8
  %35 = getelementptr inbounds %struct.mlx5_fpga_dma_buf, %struct.mlx5_fpga_dma_buf* %34, i32 0, i32 0
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %35, align 8
  %37 = call i32 @ARRAY_SIZE(%struct.TYPE_16__* %36)
  %38 = icmp ult i32 %33, %37
  br i1 %38, label %39, label %90

39:                                               ; preds = %32
  %40 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %4, align 8
  %41 = getelementptr inbounds %struct.mlx5_fpga_dma_buf, %struct.mlx5_fpga_dma_buf* %40, i32 0, i32 0
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %39
  br label %90

50:                                               ; preds = %39
  %51 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %4, align 8
  %52 = getelementptr inbounds %struct.mlx5_fpga_dma_buf, %struct.mlx5_fpga_dma_buf* %51, i32 0, i32 0
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @cpu_to_be32(i32 %58)
  %60 = load %struct.mlx5_wqe_data_seg*, %struct.mlx5_wqe_data_seg** %6, align 8
  %61 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  %62 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %3, align 8
  %63 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %62, i32 0, i32 1
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i8* @cpu_to_be32(i32 %68)
  %70 = load %struct.mlx5_wqe_data_seg*, %struct.mlx5_wqe_data_seg** %6, align 8
  %71 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  %72 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %4, align 8
  %73 = getelementptr inbounds %struct.mlx5_fpga_dma_buf, %struct.mlx5_fpga_dma_buf* %72, i32 0, i32 0
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @cpu_to_be64(i32 %79)
  %81 = load %struct.mlx5_wqe_data_seg*, %struct.mlx5_wqe_data_seg** %6, align 8
  %82 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.mlx5_wqe_data_seg*, %struct.mlx5_wqe_data_seg** %6, align 8
  %84 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %83, i32 1
  store %struct.mlx5_wqe_data_seg* %84, %struct.mlx5_wqe_data_seg** %6, align 8
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %9, align 4
  br label %87

87:                                               ; preds = %50
  %88 = load i32, i32* %8, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %8, align 4
  br label %32

90:                                               ; preds = %49, %32
  %91 = load %struct.mlx5_wqe_ctrl_seg*, %struct.mlx5_wqe_ctrl_seg** %5, align 8
  %92 = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_ctrl_seg* %91, i32 0, i32 3
  store i64 0, i64* %92, align 8
  %93 = load i32, i32* @MLX5_WQE_CTRL_CQ_UPDATE, align 4
  %94 = load %struct.mlx5_wqe_ctrl_seg*, %struct.mlx5_wqe_ctrl_seg** %5, align 8
  %95 = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_ctrl_seg* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  %96 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %3, align 8
  %97 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = and i32 %100, 65535
  %102 = shl i32 %101, 8
  %103 = load i32, i32* @MLX5_OPCODE_SEND, align 4
  %104 = or i32 %102, %103
  %105 = call i8* @cpu_to_be32(i32 %104)
  %106 = load %struct.mlx5_wqe_ctrl_seg*, %struct.mlx5_wqe_ctrl_seg** %5, align 8
  %107 = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_ctrl_seg* %106, i32 0, i32 1
  store i8* %105, i8** %107, align 8
  %108 = load i32, i32* %9, align 4
  %109 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %3, align 8
  %110 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = shl i32 %113, 8
  %115 = or i32 %108, %114
  %116 = call i8* @cpu_to_be32(i32 %115)
  %117 = load %struct.mlx5_wqe_ctrl_seg*, %struct.mlx5_wqe_ctrl_seg** %5, align 8
  %118 = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_ctrl_seg* %117, i32 0, i32 0
  store i8* %116, i8** %118, align 8
  %119 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %3, align 8
  %120 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 8
  %125 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %4, align 8
  %126 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %3, align 8
  %127 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 2
  %130 = load %struct.mlx5_fpga_dma_buf**, %struct.mlx5_fpga_dma_buf*** %129, align 8
  %131 = load i32, i32* %7, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %130, i64 %132
  store %struct.mlx5_fpga_dma_buf* %125, %struct.mlx5_fpga_dma_buf** %133, align 8
  %134 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %3, align 8
  %135 = load %struct.mlx5_wqe_ctrl_seg*, %struct.mlx5_wqe_ctrl_seg** %5, align 8
  %136 = call i32 @mlx5_fpga_conn_notify_hw(%struct.mlx5_fpga_conn* %134, %struct.mlx5_wqe_ctrl_seg* %135)
  ret void
}

declare dso_local %struct.mlx5_wqe_ctrl_seg* @mlx5_wq_cyc_get_wqe(i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_16__*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @mlx5_fpga_conn_notify_hw(%struct.mlx5_fpga_conn*, %struct.mlx5_wqe_ctrl_seg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_conn.c_mlx5_fpga_conn_rq_cqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_conn.c_mlx5_fpga_conn_rq_cqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_fpga_conn = type { i32, i32, i32 (i32, %struct.mlx5_fpga_dma_buf*)*, %struct.TYPE_5__, i32 }
%struct.mlx5_fpga_dma_buf = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, %struct.mlx5_fpga_dma_buf** }
%struct.mlx5_cqe64 = type { i32, i32 }

@MLX5_CQE_SYNDROME_WR_FLUSH_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"RQ buf %p on FPGA QP %u completion status %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Message with %u bytes received successfully\0A\00", align 1
@MLX5_FPGA_RECV_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to re-post recv buf: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_fpga_conn*, %struct.mlx5_cqe64*, i32)* @mlx5_fpga_conn_rq_cqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_fpga_conn_rq_cqe(%struct.mlx5_fpga_conn* %0, %struct.mlx5_cqe64* %1, i32 %2) #0 {
  %4 = alloca %struct.mlx5_fpga_conn*, align 8
  %5 = alloca %struct.mlx5_cqe64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5_fpga_dma_buf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mlx5_fpga_conn* %0, %struct.mlx5_fpga_conn** %4, align 8
  store %struct.mlx5_cqe64* %1, %struct.mlx5_cqe64** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %5, align 8
  %11 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @be16_to_cpu(i32 %12)
  %14 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %4, align 8
  %15 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sub nsw i32 %18, 1
  %20 = and i32 %13, %19
  store i32 %20, i32* %8, align 4
  %21 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %4, align 8
  %22 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = load %struct.mlx5_fpga_dma_buf**, %struct.mlx5_fpga_dma_buf*** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %25, i64 %27
  %29 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %28, align 8
  store %struct.mlx5_fpga_dma_buf* %29, %struct.mlx5_fpga_dma_buf** %7, align 8
  %30 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %4, align 8
  %31 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load %struct.mlx5_fpga_dma_buf**, %struct.mlx5_fpga_dma_buf*** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %34, i64 %36
  store %struct.mlx5_fpga_dma_buf* null, %struct.mlx5_fpga_dma_buf** %37, align 8
  %38 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %4, align 8
  %39 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %3
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @MLX5_CQE_SYNDROME_WR_FLUSH_ERR, align 4
  %49 = icmp ne i32 %47, %48
  br label %50

50:                                               ; preds = %46, %3
  %51 = phi i1 [ false, %3 ], [ %49, %46 ]
  %52 = zext i1 %51 to i32
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %50
  %56 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %4, align 8
  %57 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %7, align 8
  %60 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %4, align 8
  %61 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 (i32, i8*, ...) @mlx5_fpga_warn(i32 %58, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), %struct.mlx5_fpga_dma_buf* %59, i32 %62, i32 %63)
  br label %75

65:                                               ; preds = %50
  %66 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %4, align 8
  %67 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %7, align 8
  %70 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %4, align 8
  %71 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = call i32 (i32, i8*, %struct.mlx5_fpga_dma_buf*, ...) @mlx5_fpga_dbg(i32 %68, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), %struct.mlx5_fpga_dma_buf* %69, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %65, %55
  %76 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %4, align 8
  %77 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %7, align 8
  %78 = call i32 @mlx5_fpga_conn_unmap_buf(%struct.mlx5_fpga_conn* %76, %struct.mlx5_fpga_dma_buf* %77)
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %75
  %82 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %4, align 8
  %83 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  br label %88

88:                                               ; preds = %81, %75
  %89 = phi i1 [ true, %75 ], [ %87, %81 ]
  %90 = zext i1 %89 to i32
  %91 = call i64 @unlikely(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %4, align 8
  %95 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  store i32 0, i32* %96, align 8
  %97 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %7, align 8
  %98 = call i32 @kfree(%struct.mlx5_fpga_dma_buf* %97)
  br label %149

99:                                               ; preds = %88
  %100 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %5, align 8
  %101 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @be32_to_cpu(i32 %102)
  %104 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %7, align 8
  %105 = getelementptr inbounds %struct.mlx5_fpga_dma_buf, %struct.mlx5_fpga_dma_buf* %104, i32 0, i32 0
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i64 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  store i32 %103, i32* %108, align 4
  %109 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %4, align 8
  %110 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %7, align 8
  %113 = getelementptr inbounds %struct.mlx5_fpga_dma_buf, %struct.mlx5_fpga_dma_buf* %112, i32 0, i32 0
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i64 0
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = inttoptr i64 %118 to %struct.mlx5_fpga_dma_buf*
  %120 = call i32 (i32, i8*, %struct.mlx5_fpga_dma_buf*, ...) @mlx5_fpga_dbg(i32 %111, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), %struct.mlx5_fpga_dma_buf* %119)
  %121 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %4, align 8
  %122 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %121, i32 0, i32 2
  %123 = load i32 (i32, %struct.mlx5_fpga_dma_buf*)*, i32 (i32, %struct.mlx5_fpga_dma_buf*)** %122, align 8
  %124 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %4, align 8
  %125 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %7, align 8
  %128 = call i32 %123(i32 %126, %struct.mlx5_fpga_dma_buf* %127)
  %129 = load i32, i32* @MLX5_FPGA_RECV_SIZE, align 4
  %130 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %7, align 8
  %131 = getelementptr inbounds %struct.mlx5_fpga_dma_buf, %struct.mlx5_fpga_dma_buf* %130, i32 0, i32 0
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i64 0
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  store i32 %129, i32* %134, align 4
  %135 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %4, align 8
  %136 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %7, align 8
  %137 = call i32 @mlx5_fpga_conn_post_recv(%struct.mlx5_fpga_conn* %135, %struct.mlx5_fpga_dma_buf* %136)
  store i32 %137, i32* %9, align 4
  %138 = load i32, i32* %9, align 4
  %139 = call i64 @unlikely(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %99
  %142 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %4, align 8
  %143 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* %9, align 4
  %146 = call i32 (i32, i8*, ...) @mlx5_fpga_warn(i32 %144, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %145)
  %147 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %7, align 8
  %148 = call i32 @kfree(%struct.mlx5_fpga_dma_buf* %147)
  br label %149

149:                                              ; preds = %93, %141, %99
  ret void
}

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mlx5_fpga_warn(i32, i8*, ...) #1

declare dso_local i32 @mlx5_fpga_dbg(i32, i8*, %struct.mlx5_fpga_dma_buf*, ...) #1

declare dso_local i32 @mlx5_fpga_conn_unmap_buf(%struct.mlx5_fpga_conn*, %struct.mlx5_fpga_dma_buf*) #1

declare dso_local i32 @kfree(%struct.mlx5_fpga_dma_buf*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @mlx5_fpga_conn_post_recv(%struct.mlx5_fpga_conn*, %struct.mlx5_fpga_dma_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

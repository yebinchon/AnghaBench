; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_conn.c_mlx5_fpga_conn_map_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_conn.c_mlx5_fpga_conn_map_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_fpga_conn = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.device }
%struct.device = type { i32 }
%struct.mlx5_fpga_dma_buf = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i8*, i32 }

@.str = private unnamed_addr constant [23 x i8] c"DMA error on sg 0: %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"DMA error on sg 1: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_fpga_conn*, %struct.mlx5_fpga_dma_buf*)* @mlx5_fpga_conn_map_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_fpga_conn_map_buf(%struct.mlx5_fpga_conn* %0, %struct.mlx5_fpga_dma_buf* %1) #0 {
  %3 = alloca %struct.mlx5_fpga_conn*, align 8
  %4 = alloca %struct.mlx5_fpga_dma_buf*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.mlx5_fpga_conn* %0, %struct.mlx5_fpga_conn** %3, align 8
  store %struct.mlx5_fpga_dma_buf* %1, %struct.mlx5_fpga_dma_buf** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %4, align 8
  %8 = getelementptr inbounds %struct.mlx5_fpga_dma_buf, %struct.mlx5_fpga_dma_buf* %7, i32 0, i32 1
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i64 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %138

19:                                               ; preds = %2
  %20 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %3, align 8
  %21 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store %struct.device* %27, %struct.device** %5, align 8
  %28 = load %struct.device*, %struct.device** %5, align 8
  %29 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %4, align 8
  %30 = getelementptr inbounds %struct.mlx5_fpga_dma_buf, %struct.mlx5_fpga_dma_buf* %29, i32 0, i32 1
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %4, align 8
  %36 = getelementptr inbounds %struct.mlx5_fpga_dma_buf, %struct.mlx5_fpga_dma_buf* %35, i32 0, i32 1
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %4, align 8
  %42 = getelementptr inbounds %struct.mlx5_fpga_dma_buf, %struct.mlx5_fpga_dma_buf* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i8* @dma_map_single(%struct.device* %28, i32 %34, i32 %40, i32 %43)
  %45 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %4, align 8
  %46 = getelementptr inbounds %struct.mlx5_fpga_dma_buf, %struct.mlx5_fpga_dma_buf* %45, i32 0, i32 1
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  store i8* %44, i8** %49, align 8
  %50 = load %struct.device*, %struct.device** %5, align 8
  %51 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %4, align 8
  %52 = getelementptr inbounds %struct.mlx5_fpga_dma_buf, %struct.mlx5_fpga_dma_buf* %51, i32 0, i32 1
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @dma_mapping_error(%struct.device* %50, i8* %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i64 @unlikely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %19
  %62 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %3, align 8
  %63 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %62, i32 0, i32 0
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @mlx5_fpga_warn(%struct.TYPE_8__* %64, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %6, align 4
  br label %138

69:                                               ; preds = %19
  %70 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %4, align 8
  %71 = getelementptr inbounds %struct.mlx5_fpga_dma_buf, %struct.mlx5_fpga_dma_buf* %70, i32 0, i32 1
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i64 1
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %69
  br label %138

78:                                               ; preds = %69
  %79 = load %struct.device*, %struct.device** %5, align 8
  %80 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %4, align 8
  %81 = getelementptr inbounds %struct.mlx5_fpga_dma_buf, %struct.mlx5_fpga_dma_buf* %80, i32 0, i32 1
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i64 1
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %4, align 8
  %87 = getelementptr inbounds %struct.mlx5_fpga_dma_buf, %struct.mlx5_fpga_dma_buf* %86, i32 0, i32 1
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i64 1
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %4, align 8
  %93 = getelementptr inbounds %struct.mlx5_fpga_dma_buf, %struct.mlx5_fpga_dma_buf* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i8* @dma_map_single(%struct.device* %79, i32 %85, i32 %91, i32 %94)
  %96 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %4, align 8
  %97 = getelementptr inbounds %struct.mlx5_fpga_dma_buf, %struct.mlx5_fpga_dma_buf* %96, i32 0, i32 1
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i64 1
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  store i8* %95, i8** %100, align 8
  %101 = load %struct.device*, %struct.device** %5, align 8
  %102 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %4, align 8
  %103 = getelementptr inbounds %struct.mlx5_fpga_dma_buf, %struct.mlx5_fpga_dma_buf* %102, i32 0, i32 1
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i64 1
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @dma_mapping_error(%struct.device* %101, i8* %107)
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* %6, align 4
  %110 = call i64 @unlikely(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %137

112:                                              ; preds = %78
  %113 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %3, align 8
  %114 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %113, i32 0, i32 0
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %114, align 8
  %116 = load i32, i32* %6, align 4
  %117 = call i32 @mlx5_fpga_warn(%struct.TYPE_8__* %115, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %116)
  %118 = load %struct.device*, %struct.device** %5, align 8
  %119 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %4, align 8
  %120 = getelementptr inbounds %struct.mlx5_fpga_dma_buf, %struct.mlx5_fpga_dma_buf* %119, i32 0, i32 1
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i64 0
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 1
  %124 = load i8*, i8** %123, align 8
  %125 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %4, align 8
  %126 = getelementptr inbounds %struct.mlx5_fpga_dma_buf, %struct.mlx5_fpga_dma_buf* %125, i32 0, i32 1
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i64 0
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %4, align 8
  %132 = getelementptr inbounds %struct.mlx5_fpga_dma_buf, %struct.mlx5_fpga_dma_buf* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @dma_unmap_single(%struct.device* %118, i8* %124, i32 %130, i32 %133)
  %135 = load i32, i32* @ENOMEM, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %6, align 4
  br label %137

137:                                              ; preds = %112, %78
  br label %138

138:                                              ; preds = %137, %77, %61, %18
  %139 = load i32, i32* %6, align 4
  ret i32 %139
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @dma_map_single(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @dma_mapping_error(%struct.device*, i8*) #1

declare dso_local i32 @mlx5_fpga_warn(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

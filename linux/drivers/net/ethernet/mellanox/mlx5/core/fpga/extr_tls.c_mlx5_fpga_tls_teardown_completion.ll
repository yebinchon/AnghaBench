; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_tls.c_mlx5_fpga_tls_teardown_completion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_tls.c_mlx5_fpga_tls_teardown_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_fpga_conn = type { i32 }
%struct.mlx5_fpga_device = type { i32 }
%struct.mlx5_fpga_tls_command_context = type { i32 }
%struct.mlx5_fpga_dma_buf = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@tls_resp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Teardown stream failed with syndrome = %d\00", align 1
@syndrome = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_fpga_conn*, %struct.mlx5_fpga_device*, %struct.mlx5_fpga_tls_command_context*, %struct.mlx5_fpga_dma_buf*)* @mlx5_fpga_tls_teardown_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_fpga_tls_teardown_completion(%struct.mlx5_fpga_conn* %0, %struct.mlx5_fpga_device* %1, %struct.mlx5_fpga_tls_command_context* %2, %struct.mlx5_fpga_dma_buf* %3) #0 {
  %5 = alloca %struct.mlx5_fpga_conn*, align 8
  %6 = alloca %struct.mlx5_fpga_device*, align 8
  %7 = alloca %struct.mlx5_fpga_tls_command_context*, align 8
  %8 = alloca %struct.mlx5_fpga_dma_buf*, align 8
  %9 = alloca i64, align 8
  store %struct.mlx5_fpga_conn* %0, %struct.mlx5_fpga_conn** %5, align 8
  store %struct.mlx5_fpga_device* %1, %struct.mlx5_fpga_device** %6, align 8
  store %struct.mlx5_fpga_tls_command_context* %2, %struct.mlx5_fpga_tls_command_context** %7, align 8
  store %struct.mlx5_fpga_dma_buf* %3, %struct.mlx5_fpga_dma_buf** %8, align 8
  %10 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %8, align 8
  %11 = icmp ne %struct.mlx5_fpga_dma_buf* %10, null
  br i1 %11, label %12, label %30

12:                                               ; preds = %4
  %13 = load i32, i32* @tls_resp, align 4
  %14 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %8, align 8
  %15 = getelementptr inbounds %struct.mlx5_fpga_dma_buf, %struct.mlx5_fpga_dma_buf* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i64, i64* %9, align 8
  %21 = trunc i64 %20 to i32
  %22 = call i64 @MLX5_GET(i32 %13, i32 %19, i32 %21)
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %9, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %12
  %26 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %6, align 8
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @mlx5_fpga_err(%struct.mlx5_fpga_device* %26, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %27)
  br label %29

29:                                               ; preds = %25, %12
  br label %30

30:                                               ; preds = %29, %4
  %31 = load %struct.mlx5_fpga_tls_command_context*, %struct.mlx5_fpga_tls_command_context** %7, align 8
  %32 = call i32 @mlx5_fpga_tls_put_command_ctx(%struct.mlx5_fpga_tls_command_context* %31)
  ret void
}

declare dso_local i64 @MLX5_GET(i32, i32, i32) #1

declare dso_local i32 @mlx5_fpga_err(%struct.mlx5_fpga_device*, i8*, i64) #1

declare dso_local i32 @mlx5_fpga_tls_put_command_ctx(%struct.mlx5_fpga_tls_command_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

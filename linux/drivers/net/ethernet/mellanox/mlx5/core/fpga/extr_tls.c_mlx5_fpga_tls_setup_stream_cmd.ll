; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_tls.c_mlx5_fpga_tls_setup_stream_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_tls.c_mlx5_fpga_tls_setup_stream_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_setup_stream_context = type { i32, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { %struct.mlx5_fpga_dma_buf }
%struct.mlx5_fpga_dma_buf = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i8* }

@MLX5_TLS_COMMAND_SIZE = common dso_local global i32 0, align 4
@tls_cmd = common dso_local global i32 0, align 4
@command_type = common dso_local global i32 0, align 4
@CMD_SETUP_STREAM = common dso_local global i32 0, align 4
@MLX5_FPGA_CMD_PENDING = common dso_local global i32 0, align 4
@mlx5_fpga_tls_setup_completion = common dso_local global i32 0, align 4
@MLX5_FPGA_CMD_ABANDONED = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, %struct.mlx5_setup_stream_context*)* @mlx5_fpga_tls_setup_stream_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_fpga_tls_setup_stream_cmd(%struct.mlx5_core_dev* %0, %struct.mlx5_setup_stream_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca %struct.mlx5_setup_stream_context*, align 8
  %6 = alloca %struct.mlx5_fpga_dma_buf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store %struct.mlx5_setup_stream_context* %1, %struct.mlx5_setup_stream_context** %5, align 8
  %10 = load %struct.mlx5_setup_stream_context*, %struct.mlx5_setup_stream_context** %5, align 8
  %11 = getelementptr inbounds %struct.mlx5_setup_stream_context, %struct.mlx5_setup_stream_context* %10, i64 1
  %12 = bitcast %struct.mlx5_setup_stream_context* %11 to i8*
  store i8* %12, i8** %7, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.mlx5_setup_stream_context*, %struct.mlx5_setup_stream_context** %5, align 8
  %14 = getelementptr inbounds %struct.mlx5_setup_stream_context, %struct.mlx5_setup_stream_context* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store %struct.mlx5_fpga_dma_buf* %15, %struct.mlx5_fpga_dma_buf** %6, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %6, align 8
  %18 = getelementptr inbounds %struct.mlx5_fpga_dma_buf, %struct.mlx5_fpga_dma_buf* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  store i8* %16, i8** %21, align 8
  %22 = load i32, i32* @MLX5_TLS_COMMAND_SIZE, align 4
  %23 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %6, align 8
  %24 = getelementptr inbounds %struct.mlx5_fpga_dma_buf, %struct.mlx5_fpga_dma_buf* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 %22, i32* %27, align 8
  %28 = load i32, i32* @tls_cmd, align 4
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* @command_type, align 4
  %31 = load i32, i32* @CMD_SETUP_STREAM, align 4
  %32 = call i32 @MLX5_SET(i32 %28, i8* %29, i32 %30, i32 %31)
  %33 = load %struct.mlx5_setup_stream_context*, %struct.mlx5_setup_stream_context** %5, align 8
  %34 = getelementptr inbounds %struct.mlx5_setup_stream_context, %struct.mlx5_setup_stream_context* %33, i32 0, i32 3
  %35 = call i32 @init_completion(i32* %34)
  %36 = load %struct.mlx5_setup_stream_context*, %struct.mlx5_setup_stream_context** %5, align 8
  %37 = getelementptr inbounds %struct.mlx5_setup_stream_context, %struct.mlx5_setup_stream_context* %36, i32 0, i32 2
  %38 = load i32, i32* @MLX5_FPGA_CMD_PENDING, align 4
  %39 = call i32 @atomic_set(i32* %37, i32 %38)
  %40 = load %struct.mlx5_setup_stream_context*, %struct.mlx5_setup_stream_context** %5, align 8
  %41 = getelementptr inbounds %struct.mlx5_setup_stream_context, %struct.mlx5_setup_stream_context* %40, i32 0, i32 0
  store i32 -1, i32* %41, align 8
  %42 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %43 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.mlx5_setup_stream_context*, %struct.mlx5_setup_stream_context** %5, align 8
  %46 = getelementptr inbounds %struct.mlx5_setup_stream_context, %struct.mlx5_setup_stream_context* %45, i32 0, i32 1
  %47 = load i32, i32* @mlx5_fpga_tls_setup_completion, align 4
  %48 = call i32 @mlx5_fpga_tls_cmd_send(i32 %44, %struct.TYPE_5__* %46, i32 %47)
  %49 = load %struct.mlx5_setup_stream_context*, %struct.mlx5_setup_stream_context** %5, align 8
  %50 = getelementptr inbounds %struct.mlx5_setup_stream_context, %struct.mlx5_setup_stream_context* %49, i32 0, i32 3
  %51 = call i32 @wait_for_completion_killable(i32* %50)
  %52 = load %struct.mlx5_setup_stream_context*, %struct.mlx5_setup_stream_context** %5, align 8
  %53 = getelementptr inbounds %struct.mlx5_setup_stream_context, %struct.mlx5_setup_stream_context* %52, i32 0, i32 2
  %54 = load i32, i32* @MLX5_FPGA_CMD_ABANDONED, align 4
  %55 = call i32 @atomic_xchg_acquire(i32* %53, i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @MLX5_FPGA_CMD_PENDING, align 4
  %58 = icmp eq i32 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %2
  %63 = load i32, i32* @EINTR, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %79

65:                                               ; preds = %2
  %66 = load %struct.mlx5_setup_stream_context*, %struct.mlx5_setup_stream_context** %5, align 8
  %67 = getelementptr inbounds %struct.mlx5_setup_stream_context, %struct.mlx5_setup_stream_context* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @unlikely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %71, %65
  %75 = load %struct.mlx5_setup_stream_context*, %struct.mlx5_setup_stream_context** %5, align 8
  %76 = getelementptr inbounds %struct.mlx5_setup_stream_context, %struct.mlx5_setup_stream_context* %75, i32 0, i32 1
  %77 = call i32 @mlx5_fpga_tls_put_command_ctx(%struct.TYPE_5__* %76)
  %78 = load i32, i32* %9, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %74, %62
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @MLX5_SET(i32, i8*, i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @mlx5_fpga_tls_cmd_send(i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @wait_for_completion_killable(i32*) #1

declare dso_local i32 @atomic_xchg_acquire(i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mlx5_fpga_tls_put_command_ctx(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_tls.c_mlx5_fpga_tls_send_teardown_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_tls.c_mlx5_fpga_tls_send_teardown_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_fpga_tls_command_context = type { %struct.mlx5_fpga_dma_buf }
%struct.mlx5_fpga_dma_buf = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i8* }

@MLX5_TLS_COMMAND_SIZE = common dso_local global i64 0, align 8
@tls_cmd = common dso_local global i32 0, align 4
@command_type = common dso_local global i32 0, align 4
@CMD_TEARDOWN_STREAM = common dso_local global i32 0, align 4
@mlx5_fpga_tls_teardown_completion = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_core_dev*, i8*, i32, i32)* @mlx5_fpga_tls_send_teardown_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_fpga_tls_send_teardown_cmd(%struct.mlx5_core_dev* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mlx5_core_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx5_fpga_tls_command_context*, align 8
  %10 = alloca %struct.mlx5_fpga_dma_buf*, align 8
  %11 = alloca i8*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i64, i64* @MLX5_TLS_COMMAND_SIZE, align 8
  %13 = add i64 8, %12
  %14 = load i32, i32* %8, align 4
  %15 = call %struct.mlx5_fpga_tls_command_context* @kzalloc(i64 %13, i32 %14)
  store %struct.mlx5_fpga_tls_command_context* %15, %struct.mlx5_fpga_tls_command_context** %9, align 8
  %16 = load %struct.mlx5_fpga_tls_command_context*, %struct.mlx5_fpga_tls_command_context** %9, align 8
  %17 = icmp ne %struct.mlx5_fpga_tls_command_context* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  br label %58

19:                                               ; preds = %4
  %20 = load %struct.mlx5_fpga_tls_command_context*, %struct.mlx5_fpga_tls_command_context** %9, align 8
  %21 = getelementptr inbounds %struct.mlx5_fpga_tls_command_context, %struct.mlx5_fpga_tls_command_context* %20, i32 0, i32 0
  store %struct.mlx5_fpga_dma_buf* %21, %struct.mlx5_fpga_dma_buf** %10, align 8
  %22 = load %struct.mlx5_fpga_tls_command_context*, %struct.mlx5_fpga_tls_command_context** %9, align 8
  %23 = getelementptr inbounds %struct.mlx5_fpga_tls_command_context, %struct.mlx5_fpga_tls_command_context* %22, i64 1
  %24 = bitcast %struct.mlx5_fpga_tls_command_context* %23 to i8*
  store i8* %24, i8** %11, align 8
  %25 = load i32, i32* @tls_cmd, align 4
  %26 = load i8*, i8** %11, align 8
  %27 = load i32, i32* @command_type, align 4
  %28 = load i32, i32* @CMD_TEARDOWN_STREAM, align 4
  %29 = call i32 @MLX5_SET(i32 %25, i8* %26, i32 %27, i32 %28)
  %30 = load i32, i32* @tls_cmd, align 4
  %31 = load i8*, i8** %11, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @MLX5_SET(i32 %30, i8* %31, i32 %32, i32 %33)
  %35 = load i8*, i8** %6, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = call i32 @mlx5_fpga_tls_flow_to_cmd(i8* %35, i8* %36)
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @kfree(i8* %38)
  %40 = load i8*, i8** %11, align 8
  %41 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %10, align 8
  %42 = getelementptr inbounds %struct.mlx5_fpga_dma_buf, %struct.mlx5_fpga_dma_buf* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i8* %40, i8** %45, align 8
  %46 = load i64, i64* @MLX5_TLS_COMMAND_SIZE, align 8
  %47 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %10, align 8
  %48 = getelementptr inbounds %struct.mlx5_fpga_dma_buf, %struct.mlx5_fpga_dma_buf* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i64 %46, i64* %51, align 8
  %52 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %53 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.mlx5_fpga_tls_command_context*, %struct.mlx5_fpga_tls_command_context** %9, align 8
  %56 = load i32, i32* @mlx5_fpga_tls_teardown_completion, align 4
  %57 = call i32 @mlx5_fpga_tls_cmd_send(i32 %54, %struct.mlx5_fpga_tls_command_context* %55, i32 %56)
  br label %58

58:                                               ; preds = %19, %18
  ret void
}

declare dso_local %struct.mlx5_fpga_tls_command_context* @kzalloc(i64, i32) #1

declare dso_local i32 @MLX5_SET(i32, i8*, i32, i32) #1

declare dso_local i32 @mlx5_fpga_tls_flow_to_cmd(i8*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @mlx5_fpga_tls_cmd_send(i32, %struct.mlx5_fpga_tls_command_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

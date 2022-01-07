; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_tls.c__mlx5_fpga_tls_add_flow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_tls.c__mlx5_fpga_tls_add_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.tls_crypto_info = type { i32 }
%struct.mlx5_setup_stream_context = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@MLX5_TLS_COMMAND_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@tls_cmd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, i8*, %struct.tls_crypto_info*, i32, i32)* @_mlx5_fpga_tls_add_flow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_mlx5_fpga_tls_add_flow(%struct.mlx5_core_dev* %0, i8* %1, %struct.tls_crypto_info* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5_core_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.tls_crypto_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.mlx5_setup_stream_context*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.tls_crypto_info* %2, %struct.tls_crypto_info** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %18 = call i32 @mlx5_fpga_tls_device_caps(%struct.mlx5_core_dev* %17)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* @MLX5_TLS_COMMAND_SIZE, align 4
  %22 = sext i32 %21 to i64
  %23 = add i64 %22, 4
  store i64 %23, i64* %15, align 8
  %24 = load i64, i64* %15, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.mlx5_setup_stream_context* @kzalloc(i64 %24, i32 %25)
  store %struct.mlx5_setup_stream_context* %26, %struct.mlx5_setup_stream_context** %13, align 8
  %27 = load %struct.mlx5_setup_stream_context*, %struct.mlx5_setup_stream_context** %13, align 8
  %28 = icmp ne %struct.mlx5_setup_stream_context* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %5
  br label %61

30:                                               ; preds = %5
  %31 = load %struct.mlx5_setup_stream_context*, %struct.mlx5_setup_stream_context** %13, align 8
  %32 = getelementptr inbounds %struct.mlx5_setup_stream_context, %struct.mlx5_setup_stream_context* %31, i64 1
  %33 = bitcast %struct.mlx5_setup_stream_context* %32 to i8*
  store i8* %33, i8** %16, align 8
  %34 = load i8*, i8** %16, align 8
  %35 = load i32, i32* %12, align 4
  %36 = load %struct.tls_crypto_info*, %struct.tls_crypto_info** %9, align 8
  %37 = call i32 @mlx5_fpga_tls_set_key_material(i8* %34, i32 %35, %struct.tls_crypto_info* %36)
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  br label %58

41:                                               ; preds = %30
  %42 = load i8*, i8** %8, align 8
  %43 = load i8*, i8** %16, align 8
  %44 = call i32 @mlx5_fpga_tls_flow_to_cmd(i8* %42, i8* %43)
  %45 = load i32, i32* @tls_cmd, align 4
  %46 = load i8*, i8** %16, align 8
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @MLX5_SET(i32 %45, i8* %46, i32 %47, i32 %48)
  %50 = load i32, i32* @tls_cmd, align 4
  %51 = load i8*, i8** %16, align 8
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @MLX5_SET(i32 %50, i8* %51, i32 %52, i32 %53)
  %55 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %56 = load %struct.mlx5_setup_stream_context*, %struct.mlx5_setup_stream_context** %13, align 8
  %57 = call i32 @mlx5_fpga_tls_setup_stream_cmd(%struct.mlx5_core_dev* %55, %struct.mlx5_setup_stream_context* %56)
  store i32 %57, i32* %6, align 4
  br label %63

58:                                               ; preds = %40
  %59 = load %struct.mlx5_setup_stream_context*, %struct.mlx5_setup_stream_context** %13, align 8
  %60 = call i32 @kfree(%struct.mlx5_setup_stream_context* %59)
  br label %61

61:                                               ; preds = %58, %29
  %62 = load i32, i32* %14, align 4
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %61, %41
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local i32 @mlx5_fpga_tls_device_caps(%struct.mlx5_core_dev*) #1

declare dso_local %struct.mlx5_setup_stream_context* @kzalloc(i64, i32) #1

declare dso_local i32 @mlx5_fpga_tls_set_key_material(i8*, i32, %struct.tls_crypto_info*) #1

declare dso_local i32 @mlx5_fpga_tls_flow_to_cmd(i8*, i8*) #1

declare dso_local i32 @MLX5_SET(i32, i8*, i32, i32) #1

declare dso_local i32 @mlx5_fpga_tls_setup_stream_cmd(%struct.mlx5_core_dev*, %struct.mlx5_setup_stream_context*) #1

declare dso_local i32 @kfree(%struct.mlx5_setup_stream_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

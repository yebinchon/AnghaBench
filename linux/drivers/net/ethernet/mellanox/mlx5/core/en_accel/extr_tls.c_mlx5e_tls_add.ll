; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_tls.c_mlx5e_tls_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_tls.c_mlx5e_tls_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sock = type { i32 }
%struct.tls_crypto_info = type { i32 }
%struct.mlx5e_priv = type { %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }
%struct.tls_context = type { i32 }
%struct.mlx5e_tls_offload_context_tx = type { i32, i8* }
%struct.mlx5e_tls_offload_context_rx = type { i8* }

@ENOMEM = common dso_local global i32 0, align 4
@tls_flow = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@TLS_OFFLOAD_CTX_DIR_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.sock*, i32, %struct.tls_crypto_info*, i32)* @mlx5e_tls_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_tls_add(%struct.net_device* %0, %struct.sock* %1, i32 %2, %struct.tls_crypto_info* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.tls_crypto_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mlx5e_priv*, align 8
  %13 = alloca %struct.tls_context*, align 8
  %14 = alloca %struct.mlx5_core_dev*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.mlx5e_tls_offload_context_tx*, align 8
  %20 = alloca %struct.mlx5e_tls_offload_context_rx*, align 8
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store %struct.sock* %1, %struct.sock** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.tls_crypto_info* %3, %struct.tls_crypto_info** %10, align 8
  store i32 %4, i32* %11, align 4
  %21 = load %struct.net_device*, %struct.net_device** %7, align 8
  %22 = call %struct.mlx5e_priv* @netdev_priv(%struct.net_device* %21)
  store %struct.mlx5e_priv* %22, %struct.mlx5e_priv** %12, align 8
  %23 = load %struct.sock*, %struct.sock** %8, align 8
  %24 = call %struct.tls_context* @tls_get_ctx(%struct.sock* %23)
  store %struct.tls_context* %24, %struct.tls_context** %13, align 8
  %25 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %12, align 8
  %26 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %25, i32 0, i32 0
  %27 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %26, align 8
  store %struct.mlx5_core_dev* %27, %struct.mlx5_core_dev** %14, align 8
  %28 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %14, align 8
  %29 = call i32 @mlx5_accel_tls_device_caps(%struct.mlx5_core_dev* %28)
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* @tls_flow, align 4
  %33 = call i32 @MLX5_ST_SZ_BYTES(i32 %32)
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i8* @kzalloc(i32 %33, i32 %34)
  store i8* %35, i8** %17, align 8
  %36 = load i8*, i8** %17, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %5
  %39 = load i32, i32* %16, align 4
  store i32 %39, i32* %6, align 4
  br label %87

40:                                               ; preds = %5
  %41 = load i8*, i8** %17, align 8
  %42 = load %struct.sock*, %struct.sock** %8, align 8
  %43 = load i32, i32* %15, align 4
  %44 = call i32 @mlx5e_tls_set_flow(i8* %41, %struct.sock* %42, i32 %43)
  store i32 %44, i32* %16, align 4
  %45 = load i32, i32* %16, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %83

48:                                               ; preds = %40
  %49 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %14, align 8
  %50 = load i8*, i8** %17, align 8
  %51 = load %struct.tls_crypto_info*, %struct.tls_crypto_info** %10, align 8
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @TLS_OFFLOAD_CTX_DIR_TX, align 4
  %55 = icmp eq i32 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @mlx5_accel_tls_add_flow(%struct.mlx5_core_dev* %49, i8* %50, %struct.tls_crypto_info* %51, i32 %52, i32* %18, i32 %56)
  store i32 %57, i32* %16, align 4
  %58 = load i32, i32* %16, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %48
  br label %83

61:                                               ; preds = %48
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @TLS_OFFLOAD_CTX_DIR_TX, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %61
  %66 = load %struct.tls_context*, %struct.tls_context** %13, align 8
  %67 = call %struct.mlx5e_tls_offload_context_tx* @mlx5e_get_tls_tx_context(%struct.tls_context* %66)
  store %struct.mlx5e_tls_offload_context_tx* %67, %struct.mlx5e_tls_offload_context_tx** %19, align 8
  %68 = load i32, i32* %18, align 4
  %69 = call i8* @htonl(i32 %68)
  %70 = load %struct.mlx5e_tls_offload_context_tx*, %struct.mlx5e_tls_offload_context_tx** %19, align 8
  %71 = getelementptr inbounds %struct.mlx5e_tls_offload_context_tx, %struct.mlx5e_tls_offload_context_tx* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  %72 = load i32, i32* %11, align 4
  %73 = load %struct.mlx5e_tls_offload_context_tx*, %struct.mlx5e_tls_offload_context_tx** %19, align 8
  %74 = getelementptr inbounds %struct.mlx5e_tls_offload_context_tx, %struct.mlx5e_tls_offload_context_tx* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  br label %82

75:                                               ; preds = %61
  %76 = load %struct.tls_context*, %struct.tls_context** %13, align 8
  %77 = call %struct.mlx5e_tls_offload_context_rx* @mlx5e_get_tls_rx_context(%struct.tls_context* %76)
  store %struct.mlx5e_tls_offload_context_rx* %77, %struct.mlx5e_tls_offload_context_rx** %20, align 8
  %78 = load i32, i32* %18, align 4
  %79 = call i8* @htonl(i32 %78)
  %80 = load %struct.mlx5e_tls_offload_context_rx*, %struct.mlx5e_tls_offload_context_rx** %20, align 8
  %81 = getelementptr inbounds %struct.mlx5e_tls_offload_context_rx, %struct.mlx5e_tls_offload_context_rx* %80, i32 0, i32 0
  store i8* %79, i8** %81, align 8
  br label %82

82:                                               ; preds = %75, %65
  store i32 0, i32* %6, align 4
  br label %87

83:                                               ; preds = %60, %47
  %84 = load i8*, i8** %17, align 8
  %85 = call i32 @kfree(i8* %84)
  %86 = load i32, i32* %16, align 4
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %83, %82, %38
  %88 = load i32, i32* %6, align 4
  ret i32 %88
}

declare dso_local %struct.mlx5e_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.tls_context* @tls_get_ctx(%struct.sock*) #1

declare dso_local i32 @mlx5_accel_tls_device_caps(%struct.mlx5_core_dev*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i32 @mlx5e_tls_set_flow(i8*, %struct.sock*, i32) #1

declare dso_local i32 @mlx5_accel_tls_add_flow(%struct.mlx5_core_dev*, i8*, %struct.tls_crypto_info*, i32, i32*, i32) #1

declare dso_local %struct.mlx5e_tls_offload_context_tx* @mlx5e_get_tls_tx_context(%struct.tls_context*) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local %struct.mlx5e_tls_offload_context_rx* @mlx5e_get_tls_rx_context(%struct.tls_context*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

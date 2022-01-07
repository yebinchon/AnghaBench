; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_ktls.c_mlx5e_ktls_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_ktls.c_mlx5e_ktls_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sock = type { i32 }
%struct.tls_crypto_info = type { i32 }
%struct.mlx5e_priv = type { %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }
%struct.mlx5e_ktls_offload_context_tx = type { i32, i32, %struct.tls12_crypto_info_aes_gcm_128, i32 }
%struct.tls12_crypto_info_aes_gcm_128 = type { i32 }
%struct.tls_context = type { i32 }

@TLS_OFFLOAD_CTX_DIR_TX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.sock*, i32, %struct.tls_crypto_info*, i32)* @mlx5e_ktls_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_ktls_add(%struct.net_device* %0, %struct.sock* %1, i32 %2, %struct.tls_crypto_info* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.tls_crypto_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mlx5e_priv*, align 8
  %13 = alloca %struct.mlx5e_ktls_offload_context_tx*, align 8
  %14 = alloca %struct.tls_context*, align 8
  %15 = alloca %struct.mlx5_core_dev*, align 8
  %16 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store %struct.sock* %1, %struct.sock** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.tls_crypto_info* %3, %struct.tls_crypto_info** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.net_device*, %struct.net_device** %7, align 8
  %18 = call %struct.mlx5e_priv* @netdev_priv(%struct.net_device* %17)
  store %struct.mlx5e_priv* %18, %struct.mlx5e_priv** %12, align 8
  %19 = load %struct.sock*, %struct.sock** %8, align 8
  %20 = call %struct.tls_context* @tls_get_ctx(%struct.sock* %19)
  store %struct.tls_context* %20, %struct.tls_context** %14, align 8
  %21 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %12, align 8
  %22 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %21, i32 0, i32 0
  %23 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %22, align 8
  store %struct.mlx5_core_dev* %23, %struct.mlx5_core_dev** %15, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @TLS_OFFLOAD_CTX_DIR_TX, align 4
  %26 = icmp ne i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i64 @WARN_ON(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %5
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %97

33:                                               ; preds = %5
  %34 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %15, align 8
  %35 = load %struct.tls_crypto_info*, %struct.tls_crypto_info** %10, align 8
  %36 = call i32 @mlx5e_ktls_type_check(%struct.mlx5_core_dev* %34, %struct.tls_crypto_info* %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i64 @WARN_ON(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load i32, i32* @EOPNOTSUPP, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %97

45:                                               ; preds = %33
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call %struct.mlx5e_ktls_offload_context_tx* @kvzalloc(i32 16, i32 %46)
  store %struct.mlx5e_ktls_offload_context_tx* %47, %struct.mlx5e_ktls_offload_context_tx** %13, align 8
  %48 = load %struct.mlx5e_ktls_offload_context_tx*, %struct.mlx5e_ktls_offload_context_tx** %13, align 8
  %49 = icmp ne %struct.mlx5e_ktls_offload_context_tx* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  br label %97

53:                                               ; preds = %45
  %54 = load i32, i32* %11, align 4
  %55 = load %struct.mlx5e_ktls_offload_context_tx*, %struct.mlx5e_ktls_offload_context_tx** %13, align 8
  %56 = getelementptr inbounds %struct.mlx5e_ktls_offload_context_tx, %struct.mlx5e_ktls_offload_context_tx* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  %57 = load %struct.mlx5e_ktls_offload_context_tx*, %struct.mlx5e_ktls_offload_context_tx** %13, align 8
  %58 = getelementptr inbounds %struct.mlx5e_ktls_offload_context_tx, %struct.mlx5e_ktls_offload_context_tx* %57, i32 0, i32 2
  %59 = load %struct.tls_crypto_info*, %struct.tls_crypto_info** %10, align 8
  %60 = bitcast %struct.tls_crypto_info* %59 to %struct.tls12_crypto_info_aes_gcm_128*
  %61 = bitcast %struct.tls12_crypto_info_aes_gcm_128* %58 to i8*
  %62 = bitcast %struct.tls12_crypto_info_aes_gcm_128* %60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %61, i8* align 4 %62, i64 4, i1 false)
  %63 = load %struct.tls_context*, %struct.tls_context** %14, align 8
  %64 = load %struct.mlx5e_ktls_offload_context_tx*, %struct.mlx5e_ktls_offload_context_tx** %13, align 8
  %65 = call i32 @mlx5e_set_ktls_tx_priv_ctx(%struct.tls_context* %63, %struct.mlx5e_ktls_offload_context_tx* %64)
  %66 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %15, align 8
  %67 = load %struct.mlx5e_ktls_offload_context_tx*, %struct.mlx5e_ktls_offload_context_tx** %13, align 8
  %68 = getelementptr inbounds %struct.mlx5e_ktls_offload_context_tx, %struct.mlx5e_ktls_offload_context_tx* %67, i32 0, i32 0
  %69 = call i32 @mlx5e_ktls_create_tis(%struct.mlx5_core_dev* %66, i32* %68)
  store i32 %69, i32* %16, align 4
  %70 = load i32, i32* %16, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %53
  br label %93

73:                                               ; preds = %53
  %74 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %15, align 8
  %75 = load %struct.tls_crypto_info*, %struct.tls_crypto_info** %10, align 8
  %76 = load %struct.mlx5e_ktls_offload_context_tx*, %struct.mlx5e_ktls_offload_context_tx** %13, align 8
  %77 = getelementptr inbounds %struct.mlx5e_ktls_offload_context_tx, %struct.mlx5e_ktls_offload_context_tx* %76, i32 0, i32 1
  %78 = call i32 @mlx5_ktls_create_key(%struct.mlx5_core_dev* %74, %struct.tls_crypto_info* %75, i32* %77)
  store i32 %78, i32* %16, align 4
  %79 = load i32, i32* %16, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  br label %85

82:                                               ; preds = %73
  %83 = load %struct.mlx5e_ktls_offload_context_tx*, %struct.mlx5e_ktls_offload_context_tx** %13, align 8
  %84 = call i32 @mlx5e_ktls_tx_offload_set_pending(%struct.mlx5e_ktls_offload_context_tx* %83)
  store i32 0, i32* %6, align 4
  br label %97

85:                                               ; preds = %81
  %86 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %12, align 8
  %87 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %86, i32 0, i32 0
  %88 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %87, align 8
  %89 = load %struct.mlx5e_ktls_offload_context_tx*, %struct.mlx5e_ktls_offload_context_tx** %13, align 8
  %90 = getelementptr inbounds %struct.mlx5e_ktls_offload_context_tx, %struct.mlx5e_ktls_offload_context_tx* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @mlx5e_destroy_tis(%struct.mlx5_core_dev* %88, i32 %91)
  br label %93

93:                                               ; preds = %85, %72
  %94 = load %struct.mlx5e_ktls_offload_context_tx*, %struct.mlx5e_ktls_offload_context_tx** %13, align 8
  %95 = call i32 @kvfree(%struct.mlx5e_ktls_offload_context_tx* %94)
  %96 = load i32, i32* %16, align 4
  store i32 %96, i32* %6, align 4
  br label %97

97:                                               ; preds = %93, %82, %50, %42, %30
  %98 = load i32, i32* %6, align 4
  ret i32 %98
}

declare dso_local %struct.mlx5e_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.tls_context* @tls_get_ctx(%struct.sock*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mlx5e_ktls_type_check(%struct.mlx5_core_dev*, %struct.tls_crypto_info*) #1

declare dso_local %struct.mlx5e_ktls_offload_context_tx* @kvzalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mlx5e_set_ktls_tx_priv_ctx(%struct.tls_context*, %struct.mlx5e_ktls_offload_context_tx*) #1

declare dso_local i32 @mlx5e_ktls_create_tis(%struct.mlx5_core_dev*, i32*) #1

declare dso_local i32 @mlx5_ktls_create_key(%struct.mlx5_core_dev*, %struct.tls_crypto_info*, i32*) #1

declare dso_local i32 @mlx5e_ktls_tx_offload_set_pending(%struct.mlx5e_ktls_offload_context_tx*) #1

declare dso_local i32 @mlx5e_destroy_tis(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @kvfree(%struct.mlx5e_ktls_offload_context_tx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

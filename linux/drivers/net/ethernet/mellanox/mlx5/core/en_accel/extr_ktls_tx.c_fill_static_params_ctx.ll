; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_ktls_tx.c_fill_static_params_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_ktls_tx.c_fill_static_params_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_ktls_offload_context_tx = type { i32, %struct.tls12_crypto_info_aes_gcm_128 }
%struct.tls12_crypto_info_aes_gcm_128 = type { i32 }

@EXTRACT_INFO_FIELDS = common dso_local global i32 0, align 4
@tls_static_params = common dso_local global i32 0, align 4
@initial_record_number = common dso_local global i8* null, align 8
@MLX5E_STATIC_PARAMS_CONTEXT_TLS_1_2 = common dso_local global i32 0, align 4
@const_1 = common dso_local global i32 0, align 4
@const_2 = common dso_local global i32 0, align 4
@encryption_standard = common dso_local global i32 0, align 4
@MLX5E_ENCRYPTION_STANDARD_TLS = common dso_local global i32 0, align 4
@dek_index = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.mlx5e_ktls_offload_context_tx*)* @fill_static_params_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_static_params_ctx(i8* %0, %struct.mlx5e_ktls_offload_context_tx* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.mlx5e_ktls_offload_context_tx*, align 8
  %5 = alloca %struct.tls12_crypto_info_aes_gcm_128*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.mlx5e_ktls_offload_context_tx* %1, %struct.mlx5e_ktls_offload_context_tx** %4, align 8
  %13 = load %struct.mlx5e_ktls_offload_context_tx*, %struct.mlx5e_ktls_offload_context_tx** %4, align 8
  %14 = getelementptr inbounds %struct.mlx5e_ktls_offload_context_tx, %struct.mlx5e_ktls_offload_context_tx* %13, i32 0, i32 1
  store %struct.tls12_crypto_info_aes_gcm_128* %14, %struct.tls12_crypto_info_aes_gcm_128** %5, align 8
  %15 = load i32, i32* @EXTRACT_INFO_FIELDS, align 4
  %16 = load i32, i32* @tls_static_params, align 4
  %17 = load i8*, i8** %3, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call i8* @MLX5_ADDR_OF(i32 %16, i8* %17, i8* %18)
  store i8* %19, i8** %7, align 8
  %20 = load i32, i32* @tls_static_params, align 4
  %21 = load i8*, i8** %3, align 8
  %22 = load i8*, i8** @initial_record_number, align 8
  %23 = call i8* @MLX5_ADDR_OF(i32 %20, i8* %21, i8* %22)
  store i8* %23, i8** %6, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @memcpy(i8* %24, i8* %25, i32 %26)
  %28 = load i8*, i8** %6, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @memcpy(i8* %28, i8* %29, i32 %30)
  %32 = load i32, i32* @MLX5E_STATIC_PARAMS_CONTEXT_TLS_1_2, align 4
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* @tls_static_params, align 4
  %34 = load i8*, i8** %3, align 8
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @MLX5_SET(i32 %33, i8* %34, i32 %35, i32 %36)
  %38 = load i32, i32* @tls_static_params, align 4
  %39 = load i8*, i8** %3, align 8
  %40 = load i32, i32* @const_1, align 4
  %41 = call i32 @MLX5_SET(i32 %38, i8* %39, i32 %40, i32 1)
  %42 = load i32, i32* @tls_static_params, align 4
  %43 = load i8*, i8** %3, align 8
  %44 = load i32, i32* @const_2, align 4
  %45 = call i32 @MLX5_SET(i32 %42, i8* %43, i32 %44, i32 2)
  %46 = load i32, i32* @tls_static_params, align 4
  %47 = load i8*, i8** %3, align 8
  %48 = load i32, i32* @encryption_standard, align 4
  %49 = load i32, i32* @MLX5E_ENCRYPTION_STANDARD_TLS, align 4
  %50 = call i32 @MLX5_SET(i32 %46, i8* %47, i32 %48, i32 %49)
  %51 = load i32, i32* @tls_static_params, align 4
  %52 = load i8*, i8** %3, align 8
  %53 = load i32, i32* @dek_index, align 4
  %54 = load %struct.mlx5e_ktls_offload_context_tx*, %struct.mlx5e_ktls_offload_context_tx** %4, align 8
  %55 = getelementptr inbounds %struct.mlx5e_ktls_offload_context_tx, %struct.mlx5e_ktls_offload_context_tx* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @MLX5_SET(i32 %51, i8* %52, i32 %53, i32 %56)
  ret void
}

declare dso_local i8* @MLX5_ADDR_OF(i32, i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @MLX5_SET(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

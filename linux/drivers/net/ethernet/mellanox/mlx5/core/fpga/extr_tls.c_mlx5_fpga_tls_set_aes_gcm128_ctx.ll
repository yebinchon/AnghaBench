; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_tls.c_mlx5_fpga_tls_set_aes_gcm128_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_tls.c_mlx5_fpga_tls_set_aes_gcm128_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_crypto_info = type { i32 }
%struct.tls12_crypto_info_aes_gcm_128 = type { i32, i32, i32 }

@tls_cmd = common dso_local global i32 0, align 4
@tls_rcd_sn = common dso_local global i32 0, align 4
@TLS_CIPHER_AES_GCM_128_REC_SEQ_SIZE = common dso_local global i64 0, align 8
@tls_implicit_iv = common dso_local global i32 0, align 4
@TLS_CIPHER_AES_GCM_128_SALT_SIZE = common dso_local global i64 0, align 8
@encryption_key = common dso_local global i32 0, align 4
@TLS_CIPHER_AES_GCM_128_KEY_SIZE = common dso_local global i64 0, align 8
@alg = common dso_local global i32 0, align 4
@MLX5_TLS_ALG_AES_GCM_128 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.tls_crypto_info*, i32*)* @mlx5_fpga_tls_set_aes_gcm128_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_fpga_tls_set_aes_gcm128_ctx(i8* %0, %struct.tls_crypto_info* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tls_crypto_info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.tls12_crypto_info_aes_gcm_128*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.tls_crypto_info* %1, %struct.tls_crypto_info** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.tls_crypto_info*, %struct.tls_crypto_info** %5, align 8
  %9 = bitcast %struct.tls_crypto_info* %8 to %struct.tls12_crypto_info_aes_gcm_128*
  store %struct.tls12_crypto_info_aes_gcm_128* %9, %struct.tls12_crypto_info_aes_gcm_128** %7, align 8
  %10 = load i32, i32* @tls_cmd, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = load i32, i32* @tls_rcd_sn, align 4
  %13 = call i64 @MLX5_ADDR_OF(i32 %10, i8* %11, i32 %12)
  %14 = load %struct.tls12_crypto_info_aes_gcm_128*, %struct.tls12_crypto_info_aes_gcm_128** %7, align 8
  %15 = getelementptr inbounds %struct.tls12_crypto_info_aes_gcm_128, %struct.tls12_crypto_info_aes_gcm_128* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load i64, i64* @TLS_CIPHER_AES_GCM_128_REC_SEQ_SIZE, align 8
  %18 = call i32 @memcpy(i64 %13, i32 %16, i64 %17)
  %19 = load i32, i32* @tls_cmd, align 4
  %20 = load i8*, i8** %4, align 8
  %21 = load i32, i32* @tls_implicit_iv, align 4
  %22 = call i64 @MLX5_ADDR_OF(i32 %19, i8* %20, i32 %21)
  %23 = load %struct.tls12_crypto_info_aes_gcm_128*, %struct.tls12_crypto_info_aes_gcm_128** %7, align 8
  %24 = getelementptr inbounds %struct.tls12_crypto_info_aes_gcm_128, %struct.tls12_crypto_info_aes_gcm_128* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i64, i64* @TLS_CIPHER_AES_GCM_128_SALT_SIZE, align 8
  %27 = call i32 @memcpy(i64 %22, i32 %25, i64 %26)
  %28 = load i32, i32* @tls_cmd, align 4
  %29 = load i8*, i8** %4, align 8
  %30 = load i32, i32* @encryption_key, align 4
  %31 = call i64 @MLX5_ADDR_OF(i32 %28, i8* %29, i32 %30)
  %32 = load %struct.tls12_crypto_info_aes_gcm_128*, %struct.tls12_crypto_info_aes_gcm_128** %7, align 8
  %33 = getelementptr inbounds %struct.tls12_crypto_info_aes_gcm_128, %struct.tls12_crypto_info_aes_gcm_128* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* @TLS_CIPHER_AES_GCM_128_KEY_SIZE, align 8
  %36 = call i32 @memcpy(i64 %31, i32 %34, i64 %35)
  %37 = load i32, i32* @tls_cmd, align 4
  %38 = load i8*, i8** %4, align 8
  %39 = load i32, i32* @encryption_key, align 4
  %40 = call i64 @MLX5_ADDR_OF(i32 %37, i8* %38, i32 %39)
  %41 = load i64, i64* @TLS_CIPHER_AES_GCM_128_KEY_SIZE, align 8
  %42 = add nsw i64 %40, %41
  %43 = load %struct.tls12_crypto_info_aes_gcm_128*, %struct.tls12_crypto_info_aes_gcm_128** %7, align 8
  %44 = getelementptr inbounds %struct.tls12_crypto_info_aes_gcm_128, %struct.tls12_crypto_info_aes_gcm_128* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* @TLS_CIPHER_AES_GCM_128_KEY_SIZE, align 8
  %47 = call i32 @memcpy(i64 %42, i32 %45, i64 %46)
  %48 = load i32, i32* @tls_cmd, align 4
  %49 = load i8*, i8** %4, align 8
  %50 = load i32, i32* @alg, align 4
  %51 = load i32, i32* @MLX5_TLS_ALG_AES_GCM_128, align 4
  %52 = call i32 @MLX5_SET(i32 %48, i8* %49, i32 %50, i32 %51)
  ret void
}

declare dso_local i32 @memcpy(i64, i32, i64) #1

declare dso_local i64 @MLX5_ADDR_OF(i32, i8*, i32) #1

declare dso_local i32 @MLX5_SET(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

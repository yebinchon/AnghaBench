; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_ipsec.c_mlx5e_ipsec_build_accel_xfrm_attrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_ipsec.c_mlx5e_ipsec_build_accel_xfrm_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_ipsec_sa_entry = type { i32, %struct.TYPE_8__, %struct.xfrm_state* }
%struct.TYPE_8__ = type { i64, i32, i64 }
%struct.xfrm_state = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_7__*, %struct.crypto_aead* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32* }
%struct.crypto_aead = type { i32 }
%struct.mlx5_accel_esp_xfrm_attrs = type { i32, i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.aes_gcm_keymat }
%struct.aes_gcm_keymat = type { i32, i32, i32, i32, i32* }
%struct.aead_geniv_ctx = type { i32 }

@MLX5_ACCEL_ESP_FLAGS_ESN_TRIGGERED = common dso_local global i32 0, align 4
@MLX5_ACCEL_ESP_FLAGS_ESN_STATE_OVERLAP = common dso_local global i32 0, align 4
@MLX5_ACCEL_ESP_KEYMAT_AES_GCM = common dso_local global i32 0, align 4
@XFRM_OFFLOAD_INBOUND = common dso_local global i32 0, align 4
@MLX5_ACCEL_ESP_ACTION_ENCRYPT = common dso_local global i32 0, align 4
@MLX5_ACCEL_ESP_ACTION_DECRYPT = common dso_local global i32 0, align 4
@XFRM_MODE_TRANSPORT = common dso_local global i64 0, align 8
@MLX5_ACCEL_ESP_FLAGS_TRANSPORT = common dso_local global i32 0, align 4
@MLX5_ACCEL_ESP_FLAGS_TUNNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_ipsec_sa_entry*, %struct.mlx5_accel_esp_xfrm_attrs*)* @mlx5e_ipsec_build_accel_xfrm_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_ipsec_build_accel_xfrm_attrs(%struct.mlx5e_ipsec_sa_entry* %0, %struct.mlx5_accel_esp_xfrm_attrs* %1) #0 {
  %3 = alloca %struct.mlx5e_ipsec_sa_entry*, align 8
  %4 = alloca %struct.mlx5_accel_esp_xfrm_attrs*, align 8
  %5 = alloca %struct.xfrm_state*, align 8
  %6 = alloca %struct.aes_gcm_keymat*, align 8
  %7 = alloca %struct.aead_geniv_ctx*, align 8
  %8 = alloca %struct.crypto_aead*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mlx5e_ipsec_sa_entry* %0, %struct.mlx5e_ipsec_sa_entry** %3, align 8
  store %struct.mlx5_accel_esp_xfrm_attrs* %1, %struct.mlx5_accel_esp_xfrm_attrs** %4, align 8
  %12 = load %struct.mlx5e_ipsec_sa_entry*, %struct.mlx5e_ipsec_sa_entry** %3, align 8
  %13 = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, %struct.mlx5e_ipsec_sa_entry* %12, i32 0, i32 2
  %14 = load %struct.xfrm_state*, %struct.xfrm_state** %13, align 8
  store %struct.xfrm_state* %14, %struct.xfrm_state** %5, align 8
  %15 = load %struct.mlx5_accel_esp_xfrm_attrs*, %struct.mlx5_accel_esp_xfrm_attrs** %4, align 8
  %16 = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, %struct.mlx5_accel_esp_xfrm_attrs* %15, i32 0, i32 5
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store %struct.aes_gcm_keymat* %17, %struct.aes_gcm_keymat** %6, align 8
  %18 = load %struct.mlx5_accel_esp_xfrm_attrs*, %struct.mlx5_accel_esp_xfrm_attrs** %4, align 8
  %19 = call i32 @memset(%struct.mlx5_accel_esp_xfrm_attrs* %18, i32 0, i32 48)
  %20 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %21 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %20, i32 0, i32 2
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, 7
  %26 = sdiv i32 %25, 8
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = sub i32 %27, 4
  store i32 %28, i32* %10, align 4
  %29 = load %struct.aes_gcm_keymat*, %struct.aes_gcm_keymat** %6, align 8
  %30 = getelementptr inbounds %struct.aes_gcm_keymat, %struct.aes_gcm_keymat* %29, i32 0, i32 4
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %33 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %32, i32 0, i32 2
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @memcpy(i32* %31, i32* %36, i32 %37)
  %39 = load i32, i32* %10, align 4
  %40 = mul i32 %39, 8
  %41 = load %struct.aes_gcm_keymat*, %struct.aes_gcm_keymat** %6, align 8
  %42 = getelementptr inbounds %struct.aes_gcm_keymat, %struct.aes_gcm_keymat* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %44 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %43, i32 0, i32 3
  %45 = load %struct.crypto_aead*, %struct.crypto_aead** %44, align 8
  store %struct.crypto_aead* %45, %struct.crypto_aead** %8, align 8
  %46 = load %struct.crypto_aead*, %struct.crypto_aead** %8, align 8
  %47 = call %struct.aead_geniv_ctx* @crypto_aead_ctx(%struct.crypto_aead* %46)
  store %struct.aead_geniv_ctx* %47, %struct.aead_geniv_ctx** %7, align 8
  %48 = load %struct.crypto_aead*, %struct.crypto_aead** %8, align 8
  %49 = call i32 @crypto_aead_ivsize(%struct.crypto_aead* %48)
  store i32 %49, i32* %11, align 4
  %50 = load %struct.aes_gcm_keymat*, %struct.aes_gcm_keymat** %6, align 8
  %51 = getelementptr inbounds %struct.aes_gcm_keymat, %struct.aes_gcm_keymat* %50, i32 0, i32 3
  %52 = load %struct.aead_geniv_ctx*, %struct.aead_geniv_ctx** %7, align 8
  %53 = getelementptr inbounds %struct.aead_geniv_ctx, %struct.aead_geniv_ctx* %52, i32 0, i32 0
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @memcpy(i32* %51, i32* %53, i32 %54)
  %56 = load %struct.aes_gcm_keymat*, %struct.aes_gcm_keymat** %6, align 8
  %57 = getelementptr inbounds %struct.aes_gcm_keymat, %struct.aes_gcm_keymat* %56, i32 0, i32 2
  %58 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %59 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %58, i32 0, i32 2
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = call i32 @memcpy(i32* %57, i32* %65, i32 4)
  %67 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %68 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %67, i32 0, i32 2
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.aes_gcm_keymat*, %struct.aes_gcm_keymat** %6, align 8
  %73 = getelementptr inbounds %struct.aes_gcm_keymat, %struct.aes_gcm_keymat* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load %struct.mlx5e_ipsec_sa_entry*, %struct.mlx5e_ipsec_sa_entry** %3, align 8
  %75 = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, %struct.mlx5e_ipsec_sa_entry* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %103

79:                                               ; preds = %2
  %80 = load i32, i32* @MLX5_ACCEL_ESP_FLAGS_ESN_TRIGGERED, align 4
  %81 = load %struct.mlx5_accel_esp_xfrm_attrs*, %struct.mlx5_accel_esp_xfrm_attrs** %4, align 8
  %82 = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, %struct.mlx5_accel_esp_xfrm_attrs* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 8
  %85 = load %struct.mlx5e_ipsec_sa_entry*, %struct.mlx5e_ipsec_sa_entry** %3, align 8
  %86 = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, %struct.mlx5e_ipsec_sa_entry* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.mlx5_accel_esp_xfrm_attrs*, %struct.mlx5_accel_esp_xfrm_attrs** %4, align 8
  %90 = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, %struct.mlx5_accel_esp_xfrm_attrs* %89, i32 0, i32 4
  store i32 %88, i32* %90, align 8
  %91 = load %struct.mlx5e_ipsec_sa_entry*, %struct.mlx5e_ipsec_sa_entry** %3, align 8
  %92 = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, %struct.mlx5e_ipsec_sa_entry* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %79
  %97 = load i32, i32* @MLX5_ACCEL_ESP_FLAGS_ESN_STATE_OVERLAP, align 4
  %98 = load %struct.mlx5_accel_esp_xfrm_attrs*, %struct.mlx5_accel_esp_xfrm_attrs** %4, align 8
  %99 = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, %struct.mlx5_accel_esp_xfrm_attrs* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 8
  br label %102

102:                                              ; preds = %96, %79
  br label %103

103:                                              ; preds = %102, %2
  %104 = load %struct.mlx5e_ipsec_sa_entry*, %struct.mlx5e_ipsec_sa_entry** %3, align 8
  %105 = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, %struct.mlx5e_ipsec_sa_entry* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.mlx5_accel_esp_xfrm_attrs*, %struct.mlx5_accel_esp_xfrm_attrs** %4, align 8
  %108 = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, %struct.mlx5_accel_esp_xfrm_attrs* %107, i32 0, i32 3
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* @MLX5_ACCEL_ESP_KEYMAT_AES_GCM, align 4
  %110 = load %struct.mlx5_accel_esp_xfrm_attrs*, %struct.mlx5_accel_esp_xfrm_attrs** %4, align 8
  %111 = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, %struct.mlx5_accel_esp_xfrm_attrs* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 8
  %112 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %113 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @XFRM_OFFLOAD_INBOUND, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %103
  %120 = load i32, i32* @MLX5_ACCEL_ESP_ACTION_ENCRYPT, align 4
  br label %123

121:                                              ; preds = %103
  %122 = load i32, i32* @MLX5_ACCEL_ESP_ACTION_DECRYPT, align 4
  br label %123

123:                                              ; preds = %121, %119
  %124 = phi i32 [ %120, %119 ], [ %122, %121 ]
  %125 = load %struct.mlx5_accel_esp_xfrm_attrs*, %struct.mlx5_accel_esp_xfrm_attrs** %4, align 8
  %126 = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, %struct.mlx5_accel_esp_xfrm_attrs* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  %127 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %128 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @XFRM_MODE_TRANSPORT, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %123
  %134 = load i32, i32* @MLX5_ACCEL_ESP_FLAGS_TRANSPORT, align 4
  br label %137

135:                                              ; preds = %123
  %136 = load i32, i32* @MLX5_ACCEL_ESP_FLAGS_TUNNEL, align 4
  br label %137

137:                                              ; preds = %135, %133
  %138 = phi i32 [ %134, %133 ], [ %136, %135 ]
  %139 = load %struct.mlx5_accel_esp_xfrm_attrs*, %struct.mlx5_accel_esp_xfrm_attrs** %4, align 8
  %140 = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, %struct.mlx5_accel_esp_xfrm_attrs* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = or i32 %141, %138
  store i32 %142, i32* %140, align 8
  ret void
}

declare dso_local i32 @memset(%struct.mlx5_accel_esp_xfrm_attrs*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local %struct.aead_geniv_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_aead_ivsize(%struct.crypto_aead*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

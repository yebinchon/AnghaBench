; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_ipsec.c_mlx5_fpga_ipsec_build_hw_xfrm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_ipsec.c_mlx5_fpga_ipsec_build_hw_xfrm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_accel_esp_xfrm_attrs = type { i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.aes_gcm_keymat }
%struct.aes_gcm_keymat = type { i32, i32, i32, i32* }
%struct.mlx5_ifc_fpga_ipsec_sa = type { %struct.TYPE_6__, i8* }
%struct.TYPE_6__ = type { i32, i32, i8*, %struct.TYPE_5__, i32**** }
%struct.TYPE_5__ = type { i32***, i32*** }

@MLX5_ACCEL_ESP_FLAGS_ESN_TRIGGERED = common dso_local global i32 0, align 4
@MLX5_FPGA_IPSEC_SA_ESN_EN = common dso_local global i32 0, align 4
@MLX5_ACCEL_ESP_FLAGS_ESN_STATE_OVERLAP = common dso_local global i32 0, align 4
@MLX5_FPGA_IPSEC_SA_ESN_OVERLAP = common dso_local global i32 0, align 4
@MLX5_FPGA_IPSEC_SA_ENC_MODE_AES_GCM_128_AUTH_128 = common dso_local global i32 0, align 4
@MLX5_FPGA_IPSEC_SA_ENC_MODE_AES_GCM_256_AUTH_128 = common dso_local global i32 0, align 4
@MLX5_FPGA_IPSEC_SA_SA_VALID = common dso_local global i32 0, align 4
@MLX5_FPGA_IPSEC_SA_SPI_EN = common dso_local global i32 0, align 4
@MLX5_FPGA_IPSEC_SA_IP_ESP = common dso_local global i32 0, align 4
@MLX5_ACCEL_ESP_ACTION_ENCRYPT = common dso_local global i32 0, align 4
@MLX5_FPGA_IPSEC_SA_DIR_SX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_core_dev*, %struct.mlx5_accel_esp_xfrm_attrs*, %struct.mlx5_ifc_fpga_ipsec_sa*)* @mlx5_fpga_ipsec_build_hw_xfrm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_fpga_ipsec_build_hw_xfrm(%struct.mlx5_core_dev* %0, %struct.mlx5_accel_esp_xfrm_attrs* %1, %struct.mlx5_ifc_fpga_ipsec_sa* %2) #0 {
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca %struct.mlx5_accel_esp_xfrm_attrs*, align 8
  %6 = alloca %struct.mlx5_ifc_fpga_ipsec_sa*, align 8
  %7 = alloca %struct.aes_gcm_keymat*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store %struct.mlx5_accel_esp_xfrm_attrs* %1, %struct.mlx5_accel_esp_xfrm_attrs** %5, align 8
  store %struct.mlx5_ifc_fpga_ipsec_sa* %2, %struct.mlx5_ifc_fpga_ipsec_sa** %6, align 8
  %8 = load %struct.mlx5_accel_esp_xfrm_attrs*, %struct.mlx5_accel_esp_xfrm_attrs** %5, align 8
  %9 = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, %struct.mlx5_accel_esp_xfrm_attrs* %8, i32 0, i32 4
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store %struct.aes_gcm_keymat* %10, %struct.aes_gcm_keymat** %7, align 8
  %11 = load %struct.mlx5_ifc_fpga_ipsec_sa*, %struct.mlx5_ifc_fpga_ipsec_sa** %6, align 8
  %12 = getelementptr inbounds %struct.mlx5_ifc_fpga_ipsec_sa, %struct.mlx5_ifc_fpga_ipsec_sa* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 4
  %14 = bitcast i32***** %13 to i32***
  %15 = load %struct.aes_gcm_keymat*, %struct.aes_gcm_keymat** %7, align 8
  %16 = getelementptr inbounds %struct.aes_gcm_keymat, %struct.aes_gcm_keymat* %15, i32 0, i32 3
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.aes_gcm_keymat*, %struct.aes_gcm_keymat** %7, align 8
  %19 = getelementptr inbounds %struct.aes_gcm_keymat, %struct.aes_gcm_keymat* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sdiv i32 %20, 8
  %22 = call i32 @memcpy(i32*** %14, i32* %17, i32 %21)
  %23 = load %struct.aes_gcm_keymat*, %struct.aes_gcm_keymat** %7, align 8
  %24 = getelementptr inbounds %struct.aes_gcm_keymat, %struct.aes_gcm_keymat* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 128
  br i1 %26, label %27, label %42

27:                                               ; preds = %3
  %28 = load %struct.mlx5_ifc_fpga_ipsec_sa*, %struct.mlx5_ifc_fpga_ipsec_sa** %6, align 8
  %29 = getelementptr inbounds %struct.mlx5_ifc_fpga_ipsec_sa, %struct.mlx5_ifc_fpga_ipsec_sa* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 4
  %31 = load i32****, i32***** %30, align 8
  %32 = getelementptr inbounds i32***, i32**** %31, i64 16
  %33 = bitcast i32**** %32 to i32***
  %34 = load %struct.aes_gcm_keymat*, %struct.aes_gcm_keymat** %7, align 8
  %35 = getelementptr inbounds %struct.aes_gcm_keymat, %struct.aes_gcm_keymat* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.aes_gcm_keymat*, %struct.aes_gcm_keymat** %7, align 8
  %38 = getelementptr inbounds %struct.aes_gcm_keymat, %struct.aes_gcm_keymat* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sdiv i32 %39, 8
  %41 = call i32 @memcpy(i32*** %33, i32* %36, i32 %40)
  br label %42

42:                                               ; preds = %27, %3
  %43 = load %struct.mlx5_ifc_fpga_ipsec_sa*, %struct.mlx5_ifc_fpga_ipsec_sa** %6, align 8
  %44 = getelementptr inbounds %struct.mlx5_ifc_fpga_ipsec_sa, %struct.mlx5_ifc_fpga_ipsec_sa* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = bitcast i32**** %46 to i32***
  %48 = load %struct.aes_gcm_keymat*, %struct.aes_gcm_keymat** %7, align 8
  %49 = getelementptr inbounds %struct.aes_gcm_keymat, %struct.aes_gcm_keymat* %48, i32 0, i32 2
  %50 = call i32 @memcpy(i32*** %47, i32* %49, i32 4)
  %51 = load %struct.mlx5_ifc_fpga_ipsec_sa*, %struct.mlx5_ifc_fpga_ipsec_sa** %6, align 8
  %52 = getelementptr inbounds %struct.mlx5_ifc_fpga_ipsec_sa, %struct.mlx5_ifc_fpga_ipsec_sa* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = bitcast i32**** %54 to i32***
  %56 = load %struct.aes_gcm_keymat*, %struct.aes_gcm_keymat** %7, align 8
  %57 = getelementptr inbounds %struct.aes_gcm_keymat, %struct.aes_gcm_keymat* %56, i32 0, i32 1
  %58 = call i32 @memcpy(i32*** %55, i32* %57, i32 4)
  %59 = load %struct.mlx5_accel_esp_xfrm_attrs*, %struct.mlx5_accel_esp_xfrm_attrs** %5, align 8
  %60 = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, %struct.mlx5_accel_esp_xfrm_attrs* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @MLX5_ACCEL_ESP_FLAGS_ESN_TRIGGERED, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %94

65:                                               ; preds = %42
  %66 = load i32, i32* @MLX5_FPGA_IPSEC_SA_ESN_EN, align 4
  %67 = load %struct.mlx5_ifc_fpga_ipsec_sa*, %struct.mlx5_ifc_fpga_ipsec_sa** %6, align 8
  %68 = getelementptr inbounds %struct.mlx5_ifc_fpga_ipsec_sa, %struct.mlx5_ifc_fpga_ipsec_sa* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %66
  store i32 %71, i32* %69, align 8
  %72 = load %struct.mlx5_accel_esp_xfrm_attrs*, %struct.mlx5_accel_esp_xfrm_attrs** %5, align 8
  %73 = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, %struct.mlx5_accel_esp_xfrm_attrs* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @MLX5_ACCEL_ESP_FLAGS_ESN_STATE_OVERLAP, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %65
  %79 = load i32, i32* @MLX5_FPGA_IPSEC_SA_ESN_OVERLAP, align 4
  br label %81

80:                                               ; preds = %65
  br label %81

81:                                               ; preds = %80, %78
  %82 = phi i32 [ %79, %78 ], [ 0, %80 ]
  %83 = load %struct.mlx5_ifc_fpga_ipsec_sa*, %struct.mlx5_ifc_fpga_ipsec_sa** %6, align 8
  %84 = getelementptr inbounds %struct.mlx5_ifc_fpga_ipsec_sa, %struct.mlx5_ifc_fpga_ipsec_sa* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = or i32 %86, %82
  store i32 %87, i32* %85, align 8
  %88 = load %struct.mlx5_accel_esp_xfrm_attrs*, %struct.mlx5_accel_esp_xfrm_attrs** %5, align 8
  %89 = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, %struct.mlx5_accel_esp_xfrm_attrs* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = call i8* @htonl(i32 %90)
  %92 = load %struct.mlx5_ifc_fpga_ipsec_sa*, %struct.mlx5_ifc_fpga_ipsec_sa** %6, align 8
  %93 = getelementptr inbounds %struct.mlx5_ifc_fpga_ipsec_sa, %struct.mlx5_ifc_fpga_ipsec_sa* %92, i32 0, i32 1
  store i8* %91, i8** %93, align 8
  br label %121

94:                                               ; preds = %42
  %95 = load i32, i32* @MLX5_FPGA_IPSEC_SA_ESN_EN, align 4
  %96 = xor i32 %95, -1
  %97 = load %struct.mlx5_ifc_fpga_ipsec_sa*, %struct.mlx5_ifc_fpga_ipsec_sa** %6, align 8
  %98 = getelementptr inbounds %struct.mlx5_ifc_fpga_ipsec_sa, %struct.mlx5_ifc_fpga_ipsec_sa* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = and i32 %100, %96
  store i32 %101, i32* %99, align 8
  %102 = load %struct.mlx5_accel_esp_xfrm_attrs*, %struct.mlx5_accel_esp_xfrm_attrs** %5, align 8
  %103 = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, %struct.mlx5_accel_esp_xfrm_attrs* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @MLX5_ACCEL_ESP_FLAGS_ESN_STATE_OVERLAP, align 4
  %106 = and i32 %104, %105
  %107 = xor i32 %106, -1
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %94
  %110 = load i32, i32* @MLX5_FPGA_IPSEC_SA_ESN_OVERLAP, align 4
  br label %112

111:                                              ; preds = %94
  br label %112

112:                                              ; preds = %111, %109
  %113 = phi i32 [ %110, %109 ], [ 0, %111 ]
  %114 = load %struct.mlx5_ifc_fpga_ipsec_sa*, %struct.mlx5_ifc_fpga_ipsec_sa** %6, align 8
  %115 = getelementptr inbounds %struct.mlx5_ifc_fpga_ipsec_sa, %struct.mlx5_ifc_fpga_ipsec_sa* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = and i32 %117, %113
  store i32 %118, i32* %116, align 8
  %119 = load %struct.mlx5_ifc_fpga_ipsec_sa*, %struct.mlx5_ifc_fpga_ipsec_sa** %6, align 8
  %120 = getelementptr inbounds %struct.mlx5_ifc_fpga_ipsec_sa, %struct.mlx5_ifc_fpga_ipsec_sa* %119, i32 0, i32 1
  store i8* null, i8** %120, align 8
  br label %121

121:                                              ; preds = %112, %81
  %122 = load %struct.mlx5_accel_esp_xfrm_attrs*, %struct.mlx5_accel_esp_xfrm_attrs** %5, align 8
  %123 = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, %struct.mlx5_accel_esp_xfrm_attrs* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = call i8* @htonl(i32 %124)
  %126 = load %struct.mlx5_ifc_fpga_ipsec_sa*, %struct.mlx5_ifc_fpga_ipsec_sa** %6, align 8
  %127 = getelementptr inbounds %struct.mlx5_ifc_fpga_ipsec_sa, %struct.mlx5_ifc_fpga_ipsec_sa* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 2
  store i8* %125, i8** %128, align 8
  %129 = load %struct.aes_gcm_keymat*, %struct.aes_gcm_keymat** %7, align 8
  %130 = getelementptr inbounds %struct.aes_gcm_keymat, %struct.aes_gcm_keymat* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  switch i32 %131, label %142 [
    i32 128, label %132
    i32 256, label %137
  ]

132:                                              ; preds = %121
  %133 = load i32, i32* @MLX5_FPGA_IPSEC_SA_ENC_MODE_AES_GCM_128_AUTH_128, align 4
  %134 = load %struct.mlx5_ifc_fpga_ipsec_sa*, %struct.mlx5_ifc_fpga_ipsec_sa** %6, align 8
  %135 = getelementptr inbounds %struct.mlx5_ifc_fpga_ipsec_sa, %struct.mlx5_ifc_fpga_ipsec_sa* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 1
  store i32 %133, i32* %136, align 4
  br label %142

137:                                              ; preds = %121
  %138 = load i32, i32* @MLX5_FPGA_IPSEC_SA_ENC_MODE_AES_GCM_256_AUTH_128, align 4
  %139 = load %struct.mlx5_ifc_fpga_ipsec_sa*, %struct.mlx5_ifc_fpga_ipsec_sa** %6, align 8
  %140 = getelementptr inbounds %struct.mlx5_ifc_fpga_ipsec_sa, %struct.mlx5_ifc_fpga_ipsec_sa* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 1
  store i32 %138, i32* %141, align 4
  br label %142

142:                                              ; preds = %121, %137, %132
  %143 = load i32, i32* @MLX5_FPGA_IPSEC_SA_SA_VALID, align 4
  %144 = load i32, i32* @MLX5_FPGA_IPSEC_SA_SPI_EN, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* @MLX5_FPGA_IPSEC_SA_IP_ESP, align 4
  %147 = or i32 %145, %146
  %148 = load %struct.mlx5_ifc_fpga_ipsec_sa*, %struct.mlx5_ifc_fpga_ipsec_sa** %6, align 8
  %149 = getelementptr inbounds %struct.mlx5_ifc_fpga_ipsec_sa, %struct.mlx5_ifc_fpga_ipsec_sa* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = or i32 %151, %147
  store i32 %152, i32* %150, align 8
  %153 = load %struct.mlx5_accel_esp_xfrm_attrs*, %struct.mlx5_accel_esp_xfrm_attrs** %5, align 8
  %154 = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, %struct.mlx5_accel_esp_xfrm_attrs* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @MLX5_ACCEL_ESP_ACTION_ENCRYPT, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %166

159:                                              ; preds = %142
  %160 = load i32, i32* @MLX5_FPGA_IPSEC_SA_DIR_SX, align 4
  %161 = load %struct.mlx5_ifc_fpga_ipsec_sa*, %struct.mlx5_ifc_fpga_ipsec_sa** %6, align 8
  %162 = getelementptr inbounds %struct.mlx5_ifc_fpga_ipsec_sa, %struct.mlx5_ifc_fpga_ipsec_sa* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = or i32 %164, %160
  store i32 %165, i32* %163, align 8
  br label %174

166:                                              ; preds = %142
  %167 = load i32, i32* @MLX5_FPGA_IPSEC_SA_DIR_SX, align 4
  %168 = xor i32 %167, -1
  %169 = load %struct.mlx5_ifc_fpga_ipsec_sa*, %struct.mlx5_ifc_fpga_ipsec_sa** %6, align 8
  %170 = getelementptr inbounds %struct.mlx5_ifc_fpga_ipsec_sa, %struct.mlx5_ifc_fpga_ipsec_sa* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = and i32 %172, %168
  store i32 %173, i32* %171, align 8
  br label %174

174:                                              ; preds = %166, %159
  ret void
}

declare dso_local i32 @memcpy(i32***, i32*, i32) #1

declare dso_local i8* @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

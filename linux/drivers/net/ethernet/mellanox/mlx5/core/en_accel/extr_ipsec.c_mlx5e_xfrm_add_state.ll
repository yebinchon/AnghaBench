; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_ipsec.c_mlx5e_xfrm_add_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_ipsec.c_mlx5e_xfrm_add_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32, i64, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.mlx5e_ipsec_sa_entry = type { i32, i32, i32, i32, %struct.xfrm_state* }
%struct.mlx5_accel_esp_xfrm_attrs = type { i32 }
%struct.mlx5e_priv = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@XFRM_OFFLOAD_INBOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed adding to SADB_RX: %d\0A\00", align 1
@XFRM_STATE_ESN = common dso_local global i32 0, align 4
@mlx5e_ipsec_set_iv_esn = common dso_local global i32 0, align 4
@mlx5e_ipsec_set_iv = common dso_local global i32 0, align 4
@MLX5_ACCEL_XFRM_FLAG_REQUIRE_METADATA = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*)* @mlx5e_xfrm_add_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_xfrm_add_state(%struct.xfrm_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xfrm_state*, align 8
  %4 = alloca %struct.mlx5e_ipsec_sa_entry*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.mlx5_accel_esp_xfrm_attrs, align 4
  %7 = alloca %struct.mlx5e_priv*, align 8
  %8 = alloca [4 x i32], align 16
  %9 = alloca [4 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.xfrm_state* %0, %struct.xfrm_state** %3, align 8
  store %struct.mlx5e_ipsec_sa_entry* null, %struct.mlx5e_ipsec_sa_entry** %4, align 8
  %13 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %14 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  store %struct.net_device* %16, %struct.net_device** %5, align 8
  %17 = bitcast [4 x i32]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %17, i8 0, i64 16, i1 false)
  %18 = bitcast [4 x i32]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %18, i8 0, i64 16, i1 false)
  store i32 0, i32* %11, align 4
  %19 = load %struct.net_device*, %struct.net_device** %5, align 8
  %20 = call %struct.mlx5e_priv* @netdev_priv(%struct.net_device* %19)
  store %struct.mlx5e_priv* %20, %struct.mlx5e_priv** %7, align 8
  %21 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %22 = call i32 @mlx5e_xfrm_validate_state(%struct.xfrm_state* %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* %2, align 4
  br label %192

27:                                               ; preds = %1
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.mlx5e_ipsec_sa_entry* @kzalloc(i32 24, i32 %28)
  store %struct.mlx5e_ipsec_sa_entry* %29, %struct.mlx5e_ipsec_sa_entry** %4, align 8
  %30 = load %struct.mlx5e_ipsec_sa_entry*, %struct.mlx5e_ipsec_sa_entry** %4, align 8
  %31 = icmp ne %struct.mlx5e_ipsec_sa_entry* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %12, align 4
  br label %190

35:                                               ; preds = %27
  %36 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %37 = load %struct.mlx5e_ipsec_sa_entry*, %struct.mlx5e_ipsec_sa_entry** %4, align 8
  %38 = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, %struct.mlx5e_ipsec_sa_entry* %37, i32 0, i32 4
  store %struct.xfrm_state* %36, %struct.xfrm_state** %38, align 8
  %39 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %40 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.mlx5e_ipsec_sa_entry*, %struct.mlx5e_ipsec_sa_entry** %4, align 8
  %43 = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, %struct.mlx5e_ipsec_sa_entry* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %45 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @XFRM_OFFLOAD_INBOUND, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %35
  %52 = load %struct.mlx5e_ipsec_sa_entry*, %struct.mlx5e_ipsec_sa_entry** %4, align 8
  %53 = call i32 @mlx5e_ipsec_sadb_rx_add(%struct.mlx5e_ipsec_sa_entry* %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load %struct.net_device*, %struct.net_device** %5, align 8
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @netdev_info(%struct.net_device* %57, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %58)
  br label %187

60:                                               ; preds = %51
  br label %77

61:                                               ; preds = %35
  %62 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %63 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @XFRM_STATE_ESN, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  %70 = load i32, i32* @mlx5e_ipsec_set_iv_esn, align 4
  br label %73

71:                                               ; preds = %61
  %72 = load i32, i32* @mlx5e_ipsec_set_iv, align 4
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i32 [ %70, %69 ], [ %72, %71 ]
  %75 = load %struct.mlx5e_ipsec_sa_entry*, %struct.mlx5e_ipsec_sa_entry** %4, align 8
  %76 = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, %struct.mlx5e_ipsec_sa_entry* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  br label %77

77:                                               ; preds = %73, %60
  %78 = load %struct.mlx5e_ipsec_sa_entry*, %struct.mlx5e_ipsec_sa_entry** %4, align 8
  %79 = call i32 @mlx5e_ipsec_update_esn_state(%struct.mlx5e_ipsec_sa_entry* %78)
  %80 = load %struct.mlx5e_ipsec_sa_entry*, %struct.mlx5e_ipsec_sa_entry** %4, align 8
  %81 = call i32 @mlx5e_ipsec_build_accel_xfrm_attrs(%struct.mlx5e_ipsec_sa_entry* %80, %struct.mlx5_accel_esp_xfrm_attrs* %6)
  %82 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %83 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @MLX5_ACCEL_XFRM_FLAG_REQUIRE_METADATA, align 4
  %86 = call i32 @mlx5_accel_esp_create_xfrm(i32 %84, %struct.mlx5_accel_esp_xfrm_attrs* %6, i32 %85)
  %87 = load %struct.mlx5e_ipsec_sa_entry*, %struct.mlx5e_ipsec_sa_entry** %4, align 8
  %88 = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, %struct.mlx5e_ipsec_sa_entry* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load %struct.mlx5e_ipsec_sa_entry*, %struct.mlx5e_ipsec_sa_entry** %4, align 8
  %90 = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, %struct.mlx5e_ipsec_sa_entry* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i64 @IS_ERR(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %77
  %95 = load %struct.mlx5e_ipsec_sa_entry*, %struct.mlx5e_ipsec_sa_entry** %4, align 8
  %96 = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, %struct.mlx5e_ipsec_sa_entry* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @PTR_ERR(i32 %97)
  store i32 %98, i32* %12, align 4
  br label %173

99:                                               ; preds = %77
  %100 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %101 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @AF_INET, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %119

106:                                              ; preds = %99
  %107 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %108 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  store i32 %111, i32* %112, align 4
  %113 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %114 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  store i32 %117, i32* %118, align 4
  br label %134

119:                                              ; preds = %99
  %120 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %121 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %122 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @memcpy(i32* %120, i32 %125, i32 16)
  %127 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %128 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %129 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @memcpy(i32* %127, i32 %132, i32 16)
  store i32 1, i32* %11, align 4
  br label %134

134:                                              ; preds = %119, %106
  %135 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %136 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  store i32 %138, i32* %10, align 4
  %139 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %140 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.mlx5e_ipsec_sa_entry*, %struct.mlx5e_ipsec_sa_entry** %4, align 8
  %143 = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, %struct.mlx5e_ipsec_sa_entry* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %146 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* %11, align 4
  %149 = call i32 @mlx5_accel_esp_create_hw_context(i32 %141, i32 %144, i32* %145, i32* %146, i32 %147, i32 %148)
  %150 = load %struct.mlx5e_ipsec_sa_entry*, %struct.mlx5e_ipsec_sa_entry** %4, align 8
  %151 = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, %struct.mlx5e_ipsec_sa_entry* %150, i32 0, i32 1
  store i32 %149, i32* %151, align 4
  %152 = load %struct.mlx5e_ipsec_sa_entry*, %struct.mlx5e_ipsec_sa_entry** %4, align 8
  %153 = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, %struct.mlx5e_ipsec_sa_entry* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i64 @IS_ERR(i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %134
  %158 = load %struct.mlx5e_ipsec_sa_entry*, %struct.mlx5e_ipsec_sa_entry** %4, align 8
  %159 = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, %struct.mlx5e_ipsec_sa_entry* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @PTR_ERR(i32 %160)
  store i32 %161, i32* %12, align 4
  br label %168

162:                                              ; preds = %134
  %163 = load %struct.mlx5e_ipsec_sa_entry*, %struct.mlx5e_ipsec_sa_entry** %4, align 8
  %164 = ptrtoint %struct.mlx5e_ipsec_sa_entry* %163 to i64
  %165 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %166 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 1
  store i64 %164, i64* %167, align 8
  br label %190

168:                                              ; preds = %157
  %169 = load %struct.mlx5e_ipsec_sa_entry*, %struct.mlx5e_ipsec_sa_entry** %4, align 8
  %170 = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, %struct.mlx5e_ipsec_sa_entry* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @mlx5_accel_esp_destroy_xfrm(i32 %171)
  br label %173

173:                                              ; preds = %168, %94
  %174 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %175 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @XFRM_OFFLOAD_INBOUND, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %173
  %182 = load %struct.mlx5e_ipsec_sa_entry*, %struct.mlx5e_ipsec_sa_entry** %4, align 8
  %183 = call i32 @mlx5e_ipsec_sadb_rx_del(%struct.mlx5e_ipsec_sa_entry* %182)
  %184 = load %struct.mlx5e_ipsec_sa_entry*, %struct.mlx5e_ipsec_sa_entry** %4, align 8
  %185 = call i32 @mlx5e_ipsec_sadb_rx_free(%struct.mlx5e_ipsec_sa_entry* %184)
  br label %186

186:                                              ; preds = %181, %173
  br label %187

187:                                              ; preds = %186, %56
  %188 = load %struct.mlx5e_ipsec_sa_entry*, %struct.mlx5e_ipsec_sa_entry** %4, align 8
  %189 = call i32 @kfree(%struct.mlx5e_ipsec_sa_entry* %188)
  br label %190

190:                                              ; preds = %187, %162, %32
  %191 = load i32, i32* %12, align 4
  store i32 %191, i32* %2, align 4
  br label %192

192:                                              ; preds = %190, %25
  %193 = load i32, i32* %2, align 4
  ret i32 %193
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.mlx5e_priv* @netdev_priv(%struct.net_device*) #2

declare dso_local i32 @mlx5e_xfrm_validate_state(%struct.xfrm_state*) #2

declare dso_local %struct.mlx5e_ipsec_sa_entry* @kzalloc(i32, i32) #2

declare dso_local i32 @mlx5e_ipsec_sadb_rx_add(%struct.mlx5e_ipsec_sa_entry*) #2

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32) #2

declare dso_local i32 @mlx5e_ipsec_update_esn_state(%struct.mlx5e_ipsec_sa_entry*) #2

declare dso_local i32 @mlx5e_ipsec_build_accel_xfrm_attrs(%struct.mlx5e_ipsec_sa_entry*, %struct.mlx5_accel_esp_xfrm_attrs*) #2

declare dso_local i32 @mlx5_accel_esp_create_xfrm(i32, %struct.mlx5_accel_esp_xfrm_attrs*, i32) #2

declare dso_local i64 @IS_ERR(i32) #2

declare dso_local i32 @PTR_ERR(i32) #2

declare dso_local i32 @memcpy(i32*, i32, i32) #2

declare dso_local i32 @mlx5_accel_esp_create_hw_context(i32, i32, i32*, i32*, i32, i32) #2

declare dso_local i32 @mlx5_accel_esp_destroy_xfrm(i32) #2

declare dso_local i32 @mlx5e_ipsec_sadb_rx_del(%struct.mlx5e_ipsec_sa_entry*) #2

declare dso_local i32 @mlx5e_ipsec_sadb_rx_free(%struct.mlx5e_ipsec_sa_entry*) #2

declare dso_local i32 @kfree(%struct.mlx5e_ipsec_sa_entry*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
